-------------------------------------------------------------------------------
--
-- File: HS_Clocking.vhd
-- Author: Elod Gyorgy
-- Original Project: D-PHY Receiver on 7-series Xilinx FPGA
-- Date: 8 February 2016
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
-- This module instantiates all the necessary primitives to obtain a fast
-- serial clock and a divided parallel clock from the the D-PHY high-speed
-- clock input. It also instantiates logic for IDELAYE2 primitives to be
-- usable throughout the design.
-- Connect this module to the output of the HS clock lane input buffer. Connect
-- an architecture-dependent 200/300 MHz reference clock for IDELAYCTRL
-------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.math_real.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

library UNISIM;
use UNISIM.VComponents.all;

entity HS_Clocking is
   Generic (
      kGenerateMMCM : boolean := false;
      kAddDelay_ps : integer := 0
   );
   Port (
      HS_Clock : in STD_LOGIC;
      HS_SerClk : out STD_LOGIC;
      HS_Div4Clk : out STD_LOGIC;
      RefClk : in STD_LOGIC;
      aRst : in std_logic; --asynchronous reset; must be reset when RefClk is not within spec
                           --or when HS_Clock is stopped
      aLocked : out std_logic
   );
end HS_Clocking;

architecture Behavioral of HS_Clocking is

constant kRefClkFreqInMHz : real := 200.0;
constant kDelayTaps : natural := natural(ceil(real(kAddDelay_ps) * (kRefClkFreqInMHz*2.0*32.0) / 1_000_000.0)); 

signal rBUFR_Rst, rExtRst, rMMCM_Rst : std_logic;
signal aMMCM_Locked, rMMCM_Locked_ms, rMMCM_Locked, rMMCM_LckdFallingFlag, rMMCM_LckdRisingFlag : std_logic;
signal rMMCM_Reset_q : std_logic_vector(1 downto 0);
signal rMMCM_Locked_q : std_logic_vector(1 downto 0);
signal dDiv4ClkActive : std_logic;
signal ClkFbOut, ClkFbIn, HS_Clock_1X, HS_Div4Clk_int, HS_Clock_Buf, HS_ClockDly : std_logic;
signal divclk_dbg : std_logic;

begin

-- We need a reset bridge to use the asynchronous aRst signal to reset our circuitry
-- and decrease the chance of metastability. The signal rExtRst can be used as
-- asynchronous reset for any flip-flop in the RefClk domain, since it will be de-asserted
-- synchronously.
LockLostReset: entity work.ResetBridge
   generic map (
      kPolarity => '1')
   port map (
      aRst => aRst,
      OutClk => RefClk,
      oRst => rExtRst);

-- Delay element for phase alignment of serial data
InputDelay: IDELAYE2
   generic map (
      CINVCTRL_SEL           => "FALSE",     -- TRUE, FALSE
      DELAY_SRC              => "IDATAIN",   -- IDATAIN, DATAIN
      HIGH_PERFORMANCE_MODE  => "TRUE",      -- TRUE, FALSE
      IDELAY_TYPE            => "FIXED",  -- FIXED, VARIABLE, or VAR_LOADABLE
      IDELAY_VALUE           => kDelayTaps,           
      REFCLK_FREQUENCY       => kRefClkFreqInMHz,
      PIPE_SEL               => "FALSE",
      SIGNAL_PATTERN         => "CLOCK")      -- CLOCK, DATA
   port map (
      DATAOUT                => HS_ClockDly, -- Delayed signal
      DATAIN                 => '0', -- Not used; IDATAIN instead
      C                      => '0', -- Not used in FIXED mode
      CE                     => '0', -- Not used in FIXED mode
      INC                    => '0', -- Not used in FIXED mode
      IDATAIN                => HS_Clock, -- Driven by IOB
      LD                     => '0', -- Not used in FIXED mode
      REGRST                 => '0', --not used in VARIABLE mode
      LDPIPEEN               => '0',
      CNTVALUEIN             => "00000", -- Not used in FIXED mode
      CNTVALUEOUT            => open, -- Not used in FIXED mode
      CINVCTRL               => '0' -- Not used in FIXED mode
   );


--Complex use case, with MMCM
GenMMCM: if kGenerateMMCM generate
SerClockGen: MMCME2_ADV
   generic map
      (BANDWIDTH            => "OPTIMIZED",
      CLKOUT4_CASCADE      => FALSE,
      COMPENSATION         => "ZHOLD",
      STARTUP_WAIT         => FALSE,
      DIVCLK_DIVIDE        => 1,
      CLKFBOUT_MULT_F      => 15.0,
      CLKFBOUT_PHASE       => 0.000,
      CLKFBOUT_USE_FINE_PS => FALSE,
      CLKOUT0_DIVIDE_F     => 15.0,
      CLKOUT0_PHASE        => 0.000,
      CLKOUT0_DUTY_CYCLE   => 0.500,
      CLKOUT0_USE_FINE_PS  => FALSE,
      CLKIN1_PERIOD        => 16.666, --60MHz for now
      REF_JITTER1          => 0.010)
   port map
   -- Output clocks
   (
      CLKFBOUT            => ClkFbOut,
      CLKFBOUTB           => open,
      CLKOUT0             => HS_Clock_1X,
      CLKOUT0B            => open,
      CLKOUT1             => open,
      CLKOUT1B            => open,
      CLKOUT2             => open,
      CLKOUT2B            => open,
      CLKOUT3             => open,
      CLKOUT3B            => open,
      CLKOUT4             => open,
      CLKOUT5             => open,
      CLKOUT6             => open,
      -- Input clock control
      CLKFBIN             => ClkFbIn,
      CLKIN1              => HS_ClockDly,
      CLKIN2              => '0',
      -- Tied to always select the primary input clock
      CLKINSEL            => '1',
      -- Ports for dynamic reconfiguration
      DADDR               => (others => '0'),
      DCLK                => '0',
      DEN                 => '0',
      DI                  => (others => '0'),
      DO                  => open,
      DRDY                => open,
      DWE                 => '0',
      -- Ports for dynamic phase shift
      PSCLK               => '0',
      PSEN                => '0',
      PSINCDEC            => '0',
      PSDONE              => open,
      -- Other control and status signals
      LOCKED              => aMMCM_Locked,
      CLKINSTOPPED        => open,
      CLKFBSTOPPED        => open,
      PWRDWN              => '0',
      RST                 => rMMCM_Rst);

-- To make sure the MMCM output is phase-aligned to its input, we need to replicate the buffers from clock output
-- in the feedback loop. Since we use a BUFIO/BUFR pair at the MMCM output, we add a BUFR to the feedback loop 
FeedbackBuffer: BUFR
   generic map (
      BUFR_DIVIDE => "1",   -- Values: "BYPASS, 1, 2, 3, 4, 5, 6, 7, 8" 
      SIM_DEVICE => "7SERIES"  -- Must be set to "7SERIES" 
   )
   port map (
      O => ClkFbIn,     -- 1-bit output: Clock output port
      CE => '1',   -- 1-bit input: Active high, clock enable (Divided modes only)
      CLR => rMMCM_Rst, -- 1-bit input: Active high, asynchronous clear (Divided modes only)        
      I => ClkFbOut      -- 1-bit input: Clock buffer input driven by an IBUF, MMCM or local interconnect
   );

-- Synchronize MMCM Locked into the RefClk domain
MMCM_LockSync: entity work.SyncAsync
   port map (
      aReset => '0',
      aIn => aMMCM_Locked,
      OutClk => RefClk,
      oOut => rMMCM_Locked);

-- Edge detector for MMCM Locked flag;      
MMCM_LockedDetect: process(RefClk)
begin
   if Rising_Edge(RefClk) then
      rMMCM_Locked_q <= rMMCM_Locked & rMMCM_Locked_q(1);
      rMMCM_LckdFallingFlag <= rMMCM_Locked_q(1) and not rMMCM_Locked;
      rMMCM_LckdRisingFlag <= not rMMCM_Locked_q(1) and rMMCM_Locked;
   end if;
end process MMCM_LockedDetect;
 
-- Generate MMCM reset on external reset or lock lost event
MMCM_Reset: process(rExtRst, RefClk)
begin
   if (rExtRst = '1') then
      rMMCM_Reset_q <= (others => '1'); -- MMCM_RSTMINPULSE Minimum Reset Pulse Width 5.00ns = two RefClk periods min
   elsif Rising_Edge(RefClk) then
      if (rMMCM_LckdFallingFlag = '1') then
          rMMCM_Reset_q <= (others => '1');
      else
          rMMCM_Reset_q <= '0' & rMMCM_Reset_q(rMMCM_Reset_q'high downto 1);
      end if;
   end if; 
end process MMCM_Reset;

rMMCM_Rst <= rMMCM_Reset_q(0);
rBUFR_Rst <= not rMMCM_Locked;

HS_Clock_Buf <= HS_Clock_1X;
end generate GenMMCM;

GenNoMMCM: if not kGenerateMMCM generate
--Simple use case, no PLL, just BUFIO and BUFR
   HS_Clock_Buf <= HS_ClockDly;
   rBUFR_Rst <= rExtRst;
end generate GenNoMMCM;

--Fast serial clock
SerialClkBuffer: BUFIO
   port map (
      O => HS_SerClk, -- 1-bit output: Clock output (connect to I/O clock loads).
      I => HS_Clock_Buf  -- 1-bit input: Clock input (connect to an IBUF or BUFMR).
   );
-- 1x slow parallel clock
DivClkBuffer: BUFR
   generic map (
      BUFR_DIVIDE => "4",   -- Values: "BYPASS, 1, 2, 3, 4, 5, 6, 7, 8" 
      SIM_DEVICE => "7SERIES"  -- Must be set to "7SERIES" 
   )
   port map (
      O => HS_Div4Clk_int,     -- 1-bit output: Clock output port
      CE => '1',   -- 1-bit input: Active high, clock enable (Divided modes only)
      CLR => rBUFR_Rst, -- 1-bit input: Active high, asynchronous clear (Divided modes only)        
      I => HS_Clock_Buf      -- 1-bit input: Clock buffer input driven by an IBUF, MMCM or local interconnect
   );

SyncAsyncLocked: entity work.SyncAsync
   generic map (
      kResetTo => '0',
      kStages => 2) --use double FF synchronizer
   port map (
      aReset => rBUFR_Rst,
      aIn => '1',
      OutClk => HS_Div4Clk_int,
      oOut => dDiv4ClkActive);

HS_Div4Clk <= HS_Div4Clk_int;
aLocked <= dDiv4ClkActive;

end Behavioral;
