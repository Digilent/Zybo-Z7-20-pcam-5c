-------------------------------------------------------------------------------
--
-- File: DPHY_LaneSCNN.vhd
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
-- This module implements a MIPI D-PHY 1.0 CIL-SCNN lane: slave (receiver) clock.
-- It is architecture-independent by itself, but the instantiated HS-Clocking has
-- its own requirements. The D-PHY physical interface is assumed to be de-multiplexed
-- into low-power LP(1:0) and high-speed HS inputs by external circuitry (outside
-- the FPGA). On the logic side data is forwarded via the PPI interface as
-- described in the D-PHY spec Annex A.
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

entity DPHY_LaneSCNN is
   Generic (
      kCtlClkFreqHz : natural := 100_000_000;
      kGenerateMMCM : boolean := false;
      kAddDelay_ps : integer := 0
   );
   Port (
      aLP : in STD_LOGIC_VECTOR (1 downto 0);
      aHS : in STD_LOGIC;
      CtlClk : in STD_LOGIC;
      RefClk : in STD_LOGIC;
      
      RxDDRClkHS : out STD_LOGIC;
      RxByteClkHS : out STD_LOGIC;
      aRxClkActiveHS : out STD_LOGIC;
      aForceRxmode : in STD_LOGIC;
      aStopstate : out STD_LOGIC;
      aEnable : in STD_LOGIC;
      
      aRxUlpsClkNot : out std_logic; --Receive Ultra-Low Power State on Clock Lane.
      aUlpsActiveNot : out std_logic --ULP State (not) Active.
   );
end DPHY_LaneSCNN;

architecture Behavioral of DPHY_LaneSCNN is

function MAX(LEFT, RIGHT: INTEGER) return INTEGER is
begin
  if LEFT > RIGHT then return LEFT;
  else return RIGHT;
    end if;
  end;
  
type state_type is (stInit, stStop, stHS_Prpr, stHS_Term, stHS_Clk, stHS_End, stULPS, stULPS_Exit, stULPS_Rqst); 
signal state, nstate : state_type := stInit; 

signal cLP, cLPGlitch : std_logic_vector(1 downto 0);
signal cIntRst : std_logic;

attribute DONT_TOUCH : string;
attribute DONT_TOUCH of cLP: signal is "TRUE";

constant kTInit      : natural := natural(ceil(100.0 * real(kCtlClkFreqHz) / 1_000_000.0)); --100us
constant kTClkTermEn : natural := natural(ceil(38.0 * real(kCtlClkFreqHz) / 1_000_000_000.0)); --38ns
constant kTClkSettle : natural := natural(ceil(95.0 * real(kCtlClkFreqHz) / 1_000_000_000.0)); --95ns min
constant kTMinRx : natural := natural(ceil(20.0 * real(kCtlClkFreqHz) / 1_000_000_000.0)); --20ns
signal cDelayCnt : natural range 0 to MAX(kTInit,MAX(kTClkTermEn, kTClkSettle)) := 0;
signal aClkLocked, cClkLocked, cHSRst, cDelayCntEn, aHSClkLocked, cHSClkLocked, cHSClkLocked_q, cHSClkLost : std_logic;
signal aNotEnable : std_logic;
begin

aNotEnable <= not aEnable;
SyncAsyncEnable: entity work.SyncAsync
   generic map (
      kResetTo => '1',
      kStages => 2) --use double FF synchronizer
   port map (
      aReset => aNotEnable,
      aIn => '0',
      OutClk => CtlClk,
      oOut => cIntRst);

aStopstate <=  '1' when state = stStop else
               '0';
aRxUlpsClkNot <=     '0' when state = stULPS or state = stULPS_Exit else
                     '1';
aUlpsActiveNot <=    '0' when state = stULPS else
                     '1';
aRxClkActiveHS <= aHSClkLocked;                        
              
GenSyncLP: for i in 0 to 1 generate
   SyncAsyncx: entity work.SyncAsync
      generic map (
         kResetTo => '0',
         kStages => 2) --use double FF synchronizer
      port map (
         aReset => '0',
         aIn => aLP(i),
         OutClk => CtlClk,
         oOut => cLPGlitch(i)); --TODO: LP 0 not in sync with LP 1
   GlitchFilterLP: entity work.GlitchFilter
      generic map (
         kNoOfPeriodsToFilter => kTMinRx)
      port map (
         SampleClk => CtlClk,
         sIn => cLPGlitch(i),
         sOut => cLP(i),
         sRst => '0');
end generate GenSyncLP;

DelayCounter: process(CtlClk)
begin
   if Rising_Edge(CtlClk) then
      if (state /= nstate) then
         cDelayCnt <= 0;
      elsif cDelayCntEn = '1' then
         cDelayCnt <= cDelayCnt + 1;
      end if;
   end if;
end process DelayCounter;

ModeFSM_SyncProc: process (CtlClk)
begin
   if Rising_Edge(CtlClk) then
      if (cIntRst = '1') then
         state <= stInit;
      else
         state <= nstate;
      end if;        
   end if;
end process;

--Outputs
cDelayCntEn <=  '1' when state = stHS_Term else
                '0';

cHSRst <= '0' when state = stHS_Clk else
          '1';

ModeFSM_NextStateProc: process (state, cLP, cDelayCnt, cClkLocked, cHSClkLost)
   begin
      nstate <= state;
      case (state) is
         when stInit =>
            if cLP = "11" then
               nstate <= stStop;
            end if;
         when stStop =>
            if cLP = "01" then -- HS-Rqst
               nstate <= stHS_Prpr;
            elsif cLP = "10" then -- ULPS-Rqst
               nstate <= stULPS_Rqst;
            end if;
         when stULPS_Rqst =>
            if (cLP = "11" or cLP = "01") then
               nstate <= stStop;
            elsif (cLP = "00") then
               nstate <= stULPS;
            end if;
         when stULPS =>
            if (cLP = "10") then
               nstate <= stULPS_Exit;
            end if;
         when stULPS_Exit =>
            if (cLP = "11") then
               nstate <= stStop;
            end if;
         when stHS_Prpr =>
            if (cLP = "11") then
               nstate <= stStop;
            elsif cLP = "00" then -- Bridge
               nstate <= stHS_Term;
            end if;
         when stHS_Term =>
            if (cLP = "11") then
               nstate <= stStop;
            elsif (cLP = "00" and cDelayCnt = kTClkSettle) then -- Bridge
               nstate <= stHS_Clk;
            end if;
         when stHS_Clk =>
            if (cHSClkLost = '1') then --Clock lost
               nstate <= stHS_End;
            elsif (cLP = "11") then -- Stop, we might not have seen the loss of clock
               nstate <= stStop;
            end if;
         when stHS_End =>
            if (cLP = "11") then -- Stop
               nstate <= stStop;
            end if;
      end case;      
   end process;
   
HSClockingX: entity work.HS_Clocking
   Generic map (
      kGenerateMMCM => kGenerateMMCM,
      kAddDelay_ps => kAddDelay_ps
   )
   Port map (
      HS_Clock => aHS,
      HS_SerClk => RxDDRClkHS,
      HS_Div4Clk => RxByteClkHS,
      RefClk => RefClk,
      aRst => cHSRst,
      aLocked => aHSClkLocked
   );

SyncAsyncLocked: entity work.SyncAsync
   generic map (
      kResetTo => '0',
      kStages => 2) --use double FF synchronizer
   port map (
      aReset => cHSRst,
      aIn => aHSClkLocked,
      OutClk => CtlClk,
      oOut => cHSClkLocked);

process(CtlClk)
begin
   if Rising_Edge(CtlClk) then
      cHSClkLocked_q <= cHSClkLocked;
   end if;
end process;

cHSClkLost <= cHSClkLocked_q and not cHSClkLocked;

end Behavioral;
