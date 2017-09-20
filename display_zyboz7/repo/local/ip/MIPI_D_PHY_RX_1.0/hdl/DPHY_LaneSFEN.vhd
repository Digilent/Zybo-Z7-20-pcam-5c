-------------------------------------------------------------------------------
--
-- File: DPHY_LaneSFEN.vhd
-- Author: Elod Gyorgy
-- Original Project: XCAM
-- Date: 21 April 2016
--
-------------------------------------------------------------------------------
-- (c) 2016 Copyright Digilent Incorporated
-- All Rights Reserved
-- 
-- This program is free software; distributed under the terms of BSD 3-clause 
-- license ("Revised BSD License", "New BSD License", or "Modified BSD License")
--
-- Redistribution and use in source and binary forms, with or without modification,
-- are permitted provided that the following conditions are met:
--
-- 1. Redistributions of source code must retain the above copyright notice, this
--    list of conditions and the following disclaimer.
-- 2. Redistributions in binary form must reproduce the above copyright notice,
--    this list of conditions and the following disclaimer in the documentation
--    and/or other materials provided with the distribution.
-- 3. Neither the name(s) of the above-listed copyright holder(s) nor the names
--    of its contributors may be used to endorse or promote products derived
--    from this software without specific prior written permission.
--
-- THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
-- AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE 
-- IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE 
-- ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE 
-- FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL 
-- DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR 
-- SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER 
-- CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, 
-- OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE 
-- OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
--
-------------------------------------------------------------------------------
--
-- Purpose:
-- This module implements a MIPI D-PHY 1.0 CIL-SFEN lane: slave (receiver), 
-- forward high-speed, events forward escape mode (future work), no reverse
-- direction. It is architecture-independent by itself, but the instantiated
-- HS-Deserializer has its own requirements. The D-PHY physical interface is
-- assumed to be de-multiplexed into low-power LP(1:0) and high-speed HS inputs
-- by external circuitry (outside the FPGA). On the logic side data is forwarded
-- via the PPI interface as described in the D-PHY spec Annex A.
-- This data lane module requires high-speed serial and divided parallel clocks
-- as provided by the accompanying SCNN clock lane module. 
-------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.math_real.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity DPHY_LaneSFEN is
   Generic (
      kCtlClkFreqHz : natural := 100_000_000;
      kAddDelay_ps : integer := 0
   );
   Port (
      aLP : in STD_LOGIC_VECTOR (1 downto 0);
      aHS : in STD_LOGIC;
      CtlClk : in STD_LOGIC;
      
      SerClkHS : in STD_LOGIC;
      DivClk : in STD_LOGIC;
      aRxClkActiveHS : in STD_LOGIC;

      --PPI
      RxByteClkHS : out std_logic;      
      rbRxDataHS : out std_logic_vector(7 downto 0);
      rbRxValidHS : out std_logic;
      rbRxActiveHS : out std_logic;
      rbRxSyncHS : out std_logic;
      rbErrSotHS : out std_logic;
      rbErrSotSyncHS : out std_logic;
      
      aEnable : in std_logic; --Enable Lane Module. DivClk&SerClkHS must be stable
      aForceRxmode : in std_logic; --Force Lane Module Into Receive mode / Wait for Stop state 
      aStopstate : out std_logic; --Lane is in Stop state.
      aErrEsc : out std_logic; --Escape Entry Error.
      aErrControl : out std_logic --Control Error.

   );
end DPHY_LaneSFEN;

architecture Behavioral of DPHY_LaneSFEN is

function MAX(LEFT, RIGHT: INTEGER) return INTEGER is
begin
   if LEFT > RIGHT then return LEFT;
   else return RIGHT;
   end if;
end;
  
type state_type is (stInitCountDown, stWaitForStop, stStop, stHS_Rqst, stHS_Settle, stHS_Rcv); 
signal state, nstate : state_type := stInitCountDown; 

signal aLP_int, cLP, cLPGlitch, dLP : std_logic_vector(1 downto 0);
constant kTInit      : natural := natural(ceil(100.0 * real(kCtlClkFreqHz) / 1_000_000.0)); --100us
constant kTHSSettle  : natural := natural(ceil(85.0 * real(kCtlClkFreqHz) / 1_000_000_000.0)); --85ns
constant kTMinRx : natural := natural(ceil(20.0 * real(kCtlClkFreqHz) / 1_000_000_000.0)); --20ns
constant kOffset     : natural := 3 + 1 ; -- adjust timeout values above to account for late start due to CtlClk sync
signal cDelayCnt : natural range 0 to MAX(kTInit,kTHSSettle) := 0;
signal cHS_Trail, cHSReset, dDelayCntEn, cDelayCntEn : std_logic;
signal dSyncHard, dSyncSoft, dSyncErr, dIntRst, dHSReset, dStopstate, dValid : std_logic;
signal cIntRst, cHSClkRst, cForceRxmode, cInitDone, cHSSettled, cValid : std_logic;
signal cInitTout, cHSSettleTout: std_logic; --CtlClk timeout flags
signal dSyncHard_reg, dSyncSoft_reg, dSyncErr_reg, dInitDone : std_logic; -- for pulse generation 
signal dDataOut : std_logic_vector(7 downto 0);
signal aNotEnable, aNotRxClkActiveHS : std_logic;
begin

aNotEnable <= not aEnable;
aNotRxClkActiveHS <= not aRxClkActiveHS;

EnableResetBridge: entity work.ResetBridge
   generic map (
      kPolarity => '1')
   port map (
      aRst => aNotEnable,
      OutClk => CtlClk,
      oRst => cIntRst);

RxClkActiveHSResetBridge: entity work.ResetBridge
   generic map (
      kPolarity => '1')
   port map (
      aRst => aNotRxClkActiveHS,
      OutClk => CtlClk,
      oRst => cHSClkRst);
               
SyncAsyncForceRxMode: entity work.SyncAsync
   generic map (
      kResetTo => '0',
      kStages => 2) --use double FF synchronizer
   port map (
      aReset => cIntRst,
      aIn => aForceRxmode,
      OutClk => CtlClk,
      oOut => cForceRxmode);

-- Sync LP with CtlClk
-- T_LPX_min = 50ns = 4*UI_max
-- Synchronizing the LP bits separately is OK, because entering HS is done by
-- LP-11, LP-01, LP-00 sequences, so only one bit changes from one LPX period
-- to another.
-- At the end of HS, LP-00 goes to LP-11, but this is the only valid transition. So
-- spurious LP-01 or LP-10 between them can be ignored, until it stabilizes in LP-11.
GenSyncLP: for i in 0 to 1 generate
   SyncAsyncx: entity work.SyncAsync
      generic map (
         kResetTo => '0',
         kStages => 2) --use double FF synchronizer
      port map (
         aReset => '0',
         aIn => aLP_int(i),
         OutClk => CtlClk,
         oOut => cLPGlitch(i));
   GlitchFilterLPC: entity work.GlitchFilter
      generic map (
         kNoOfPeriodsToFilter => kTMinRx)
      port map (
         SampleClk => CtlClk,
         sIn => cLPGlitch(i),
         sOut => cLP(i),
         sRst => '0');
   SyncAsyncx_D: entity work.SyncAsync
      generic map (
         kResetTo => '0',
         kStages => 2) --use double FF synchronizer
      port map (
         aReset => '0',
         aIn => aLP_int(i),
         OutClk => DivClk,
         oOut => dLP(i));         
end generate GenSyncLP;
      
-- Time delay counter running on CtlClk, because it has a known, fixed frequency
-- We use it to keep track of timing parameters in time units rather than UIs.
DelayCounter: process(CtlClk)
begin
   if Rising_Edge(CtlClk) then
      if (cDelayCntEn = '0') then
         cDelayCnt <= 0;
      else
         cDelayCnt <= cDelayCnt + 1;
      end if;
   end if;
end process DelayCounter;

cInitTout <=      '1' when cDelayCnt = kTInit                  else '0';
cHSSettleTout <=  '1' when cDelayCnt = kTHSSettle              else '0';
--Outputs
cDelayCntEn <=    '1' when state = stInitCountDown or state = stHS_Settle else
                  '0';
                  
ModeFSM_SyncProc: process (CtlClk)
begin
   if Rising_Edge(CtlClk) then
      if (cIntRst = '1') then
         state <= stInitCountDown;
         cInitDone <= '0';
      else
         state <= nstate;
         if (nstate = stStop) then
            cInitDone <= '1';
         end if;
      end if;        
   end if;
end process;

process(CtlClk, cHSClkRst)
begin
   if (cHSClkRst = '1') then
      cHSReset <= '1';
   elsif Rising_Edge(CtlClk) then
      if nstate = stHS_Settle then
         cHSReset <= '0';
      elsif state = stStop and cValid = '0' then
         cHSReset <= '1';
      end if;
   end if;
end process;

process(CtlClk, cHSClkRst)
begin
   if (cHSClkRst = '1') then
      cHSSettled <= '0';
   elsif Rising_Edge(CtlClk) then
      if nstate = stHS_Rcv then
         cHSSettled <= '1';
      elsif state = stStop and cValid = '0' then
         cHSSettled <= '0';
      end if;
   end if;
end process;


ModeFSM_NextStateProc: process (state, cLP, cInitTout, cForceRxmode, cHSSettleTout)
   begin
      nstate <= state;
      case (state) is
         when stInitCountDown =>
            if cInitTout = '1' or cForceRxmode = '1'  then
               nstate <= stWaitForStop;
            end if;   
         when stWaitForStop =>
            if cLP = "11" then
               nstate <= stStop;
            end if;
         when stStop =>
            if cLP = "01" then -- HS-Rqst
               nstate <= stHS_Rqst;
            end if;
         when stHS_Rqst =>
            if cLP = "11" then
               nstate <= stStop;
            elsif cLP = "00" then
               nstate <= stHS_Settle;
            end if;
         when stHS_Settle =>
            if cLP = "11" then
               nstate <= stStop;
            elsif (cHSSettleTout = '1') then
               nstate <= stHS_Rcv;
            end if;
         when stHS_Rcv =>
            if cLP = "11" then
               nstate <= stStop;
            end if;
         when others =>
            null;
      end case;      
   end process;

-----------------------------------------------------------------
-- PPI
-----------------------------------------------------------------
aStopstate <=  '1' when state = stStop else '0';

RxByteClkHS <= DivClk;
--PPI requires least-significant bit to be the first one received
MakeLSF: for i in rbRxDataHS'range generate  
   rbRxDataHS(i) <= dDataOut(rbRxDataHS'length-1-i);
end generate MakeLSF;
rbRxValidHS <= dValid;
rbRxActiveHS <= dSyncHard or dSyncSoft;
rbRxSyncHS <= (dSyncHard and not dSyncHard_reg) or (dSyncSoft and not dSyncSoft_reg);
rbErrSotSyncHS <= (dSyncSoft and not dSyncSoft_reg);
rbErrSotHS <= dSyncErr and not dSyncErr_reg;
GenSyncPulse: process(DivClk)
begin
   if Rising_Edge(DivClk) then
      dSyncHard_reg <= dSyncHard;
      dSyncSoft_reg <= dSyncSoft;
      dSyncErr_reg <= dSyncErr;
   end if;
end process;

HSDeserializerX: entity work.HS_Deserializer
   Generic map (
      kIs8b9b => false,
      kAddDelay_ps => kAddDelay_ps
   )
   Port map (
      SerClk => SerClkHS,
      DivClk => DivClk,
      aHSIn => aHS,
      aLPIn => aLP,
      
      aLPOut => aLP_int,
      dDataOut8 => dDataOut,
      dValid => dValid,
      
      dSyncHard => dSyncHard,
      dSyncSoft => dSyncSoft,
      dSyncErr => dSyncErr,
      
      CtlClk => CtlClk,
      cIDLY_LD => '0',     --IDELAYE2 Load
      cIDLY_CE => '0',     --IDELAYE2 CE
      cIDLY_INC => '0',    --IDELAYE2 Tap Increment
      cIDLY_CNT => open,   --IDELAYE2 Current Tap Count
      aRst => cHSReset,
      aSettled => cHSSettled
   );     

SyncAsyncValid: entity work.SyncAsync
   generic map (
      kResetTo => '0',
      kStages => 2) --use double FF synchronizer
   port map (
      aReset => cHSClkRst,
      aIn => dValid,
      OutClk => CtlClk,
      oOut => cValid);
           
end Behavioral;
