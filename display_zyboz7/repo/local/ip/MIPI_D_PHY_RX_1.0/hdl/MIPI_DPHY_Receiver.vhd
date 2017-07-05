-------------------------------------------------------------------------------
--
-- File: MIPI_DPHY_Receiver.vhd
-- Author: Elod Gyorgy
-- Original Project: XCAM
-- Date: 22 April 2016
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
-- The MIPI_DPHY_Receiver IP is an implementation of a subset of the PHY-level
-- protocol of the MIPI D-PHY 1.0 specification. It bundles a SCNN clock lane
-- and one or more SFEN data lanes to implement the reciever end of a Lane
-- Interconnect. In an FPGA implementation of the communication stack
-- it occupies the lowest level. On top of it, over the PHY-Protocol Interface
-- (PPI) connects the protocol layer specific to the application, like the Camera
-- Serial Interface (CSI).
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library UNISIM;
use UNISIM.VComponents.all;

use work.DPHY_types.ALL;

entity MIPI_DPHY_Receiver is
	generic (
		-- Users to add parameters here
        kNoOfDataLanes : natural range 1 to 2:= 2;
        kGenerateMMCM : boolean := false;
        kGenerateAXIL : boolean := false;
        kAddDelayClk_ps : integer := 0;
        kAddDelayData0_ps : integer := 0;
        kAddDelayData1_ps : integer := 0;
		-- User parameters ends
		-- Do not modify the parameters beyond this line


		-- Parameters of Axi Slave Bus Interface S_AXI_LITE
		C_S_AXI_LITE_DATA_WIDTH	: integer	:= 32;
		C_S_AXI_LITE_ADDR_WIDTH	: integer	:= 4
	);
	port (
		-- Users to add ports here
      dphy_clk_hs_p : in std_logic;
      dphy_clk_hs_n : in std_logic;
      dphy_clk_lp_n : in std_logic;
      dphy_clk_lp_p : in std_logic;
      
      dphy_data_hs_p : in std_logic_vector(0 to kNoOfDataLanes-1);
      dphy_data_hs_n : in std_logic_vector(0 to kNoOfDataLanes-1);
      dphy_data_lp_n : in std_logic_vector(0 to kNoOfDataLanes-1);
      dphy_data_lp_p : in std_logic_vector(0 to kNoOfDataLanes-1);
      
      RefClk : in std_logic; --200MHz
      aRst : in std_logic; --Only to be de-asserted when RefClk is valid
      
      --PHY-Protocol Interface (PPI)
      --Clock lane
      RxDDRClkHS : out std_logic; --Receiver DDR Clock (may be used by the protocol)
      aRxClkActiveHS : out std_logic; --Receiver Clock Active
      aClkStopstate : out std_logic; --Lane is in Stop state 
      aClkEnable : in std_logic; --Enable Lane Module
      
      aClkUlpsActiveNot : out std_logic; --ULP State (not) Active
      aRxUlpsClkNot : out std_logic; --Receive Ultra-Low Power State on Clock Lane
      aClkForceRxmode : in std_logic; --Force Lane Module Into Receive mode / Wait for Stop state
      aClkErrControl : out std_logic; --Control Error  
      RxByteClkHS : out std_logic; --High-Speed Receive Byte Clock
      
      --Data lane 0      
      aD0Stopstate : out std_logic; --Lane is in Stop state
      aD0Enable : in std_logic; --Enable Lane Module
      aD0UlpsActiveNot : out std_logic; --ULP State (not) Active
      
      rbD0RxDataHS : out std_logic_vector(7 downto 0); --High-Speed Receive Data (least-significant first)
      rbD0RxValidHS : out std_logic; --High-Speed Receive Data Valid
      rbD0RxActiveHS : out std_logic; --High-Speed Reception Active
      rbD0RxSyncHS : out std_logic; --Receiver Synchronization Observed (pulse)

      rbD0ErrSotHS : out std_logic; --Start-of-Transmission (SoT) Error (pulse)
      rbD0ErrSotSyncHS : out std_logic; --Start-of-Transmission (SoT) Synchronization Error (pulse)
      
      aD0ForceRxmode : in std_logic; --Force Lane Module Into Receive mode / Wait for Stop state
            
      D0RxClkEsc : out std_logic; --Escape mode Receive Clock (not periodic)
      aD0RxDataEsc : out std_logic_vector(7 downto 0); --Escape mode Receive Data
      aD0RxValidEsc : out std_logic; --Escape mode Receive Data Valid
      aD0RxLpdtEsc : out std_logic; --Escape Low-Power Data Receive Mode
      
      aD0RxUlpsEsc : out std_logic; --Escape Ultra-Low Power (Receive) mode
      aD0RxTriggerEsc : out std_logic_vector(3 downto 0); --Escape mode Receive Trigger 3-0
      
      aD0ErrEsc : out std_logic; --Escape Entry Error
      aD0ErrControl : out std_logic; --Control Error
      
      --Data lane 1      
      aD1Stopstate : out std_logic; --Lane is in Stop state
      aD1Enable : in std_logic; --Enable Lane Module
      aD1UlpsActiveNot : out std_logic; --ULP State (not) Active
      
      rbD1RxDataHS : out std_logic_vector(7 downto 0); --High-Speed Receive Data (least-significant first)
      rbD1RxValidHS : out std_logic; --High-Speed Receive Data Valid
      rbD1RxActiveHS : out std_logic; --High-Speed Reception Active
      rbD1RxSyncHS : out std_logic; --Receiver Synchronization Observed (pulse)

      rbD1ErrSotHS : out std_logic; --Start-of-Transmission (SoT) Error (pulse)
      rbD1ErrSotSyncHS : out std_logic; --Start-of-Transmission (SoT) Synchronization Error (pulse)
      
      aD1ForceRxmode : in std_logic; --Force Lane Module Into Receive mode / Wait for Stop state
            
      D1RxClkEsc : out std_logic; --Escape mode Receive Clock (not periodic)
      aD1RxDataEsc : out std_logic_vector(7 downto 0); --Escape mode Receive Data
      aD1RxValidEsc : out std_logic; --Escape mode Receive Data Valid
      aD1RxLpdtEsc : out std_logic; --Escape Low-Power Data Receive Mode
      
      aD1RxUlpsEsc : out std_logic; --Escape Ultra-Low Power (Receive) mode
      aD1RxTriggerEsc : out std_logic_vector(3 downto 0); --Escape mode Receive Trigger 3-0
      
      aD1ErrEsc : out std_logic; --Escape Entry Error
      aD1ErrControl : out std_logic; --Control Error
  		-- User ports ends
		-- Do not modify the ports beyond this line


		-- Ports of Axi Slave Bus Interface S_AXI_LITE
		s_axi_lite_aclk	: in std_logic;
		s_axi_lite_aresetn	: in std_logic;
		s_axi_lite_awaddr	: in std_logic_vector(C_S_AXI_LITE_ADDR_WIDTH-1 downto 0);
		s_axi_lite_awprot	: in std_logic_vector(2 downto 0);
		s_axi_lite_awvalid	: in std_logic;
		s_axi_lite_awready	: out std_logic;
		s_axi_lite_wdata	: in std_logic_vector(C_S_AXI_LITE_DATA_WIDTH-1 downto 0);
		s_axi_lite_wstrb	: in std_logic_vector((C_S_AXI_LITE_DATA_WIDTH/8)-1 downto 0);
		s_axi_lite_wvalid	: in std_logic;
		s_axi_lite_wready	: out std_logic;
		s_axi_lite_bresp	: out std_logic_vector(1 downto 0);
		s_axi_lite_bvalid	: out std_logic;
		s_axi_lite_bready	: in std_logic;
		s_axi_lite_araddr	: in std_logic_vector(C_S_AXI_LITE_ADDR_WIDTH-1 downto 0);
		s_axi_lite_arprot	: in std_logic_vector(2 downto 0);
		s_axi_lite_arvalid	: in std_logic;
		s_axi_lite_arready	: out std_logic;
		s_axi_lite_rdata	: out std_logic_vector(C_S_AXI_LITE_DATA_WIDTH-1 downto 0);
		s_axi_lite_rresp	: out std_logic_vector(1 downto 0);
		s_axi_lite_rvalid	: out std_logic;
		s_axi_lite_rready	: in std_logic
	);
end MIPI_DPHY_Receiver;

architecture arch_imp of MIPI_DPHY_Receiver is

function MIN(LEFT, RIGHT: INTEGER) return INTEGER is
begin
  if LEFT < RIGHT then return LEFT;
  else return RIGHT;
  end if;
end;
  
constant kDlyRstDelay : natural := 32;
constant kGenerateIDELAYCTRL : boolean := true;
--make all delays positive
constant kDelayAdjust : integer := MIN(kAddDelayClk_ps, MIN(kAddDelayData0_ps, kAddDelayData1_ps));
constant kAddAdjDelayClk_ps : integer := kAddDelayClk_ps - kDelayAdjust;
constant kAddAdjDelayData0_ps : integer := kAddDelayData0_ps - kDelayAdjust;
constant kAddAdjDelayData1_ps : integer := kAddDelayData1_ps - kDelayAdjust;

type dataLaneHSType is array(0 to kNoOfDataLanes-1) of std_logic;
type dataLaneLPType is array(0 to kNoOfDataLanes-1) of std_logic_vector(1 downto 0);
type dataLaneWordType is array(0 to kNoOfDataLanes-1) of std_logic_vector(7 downto 0);

signal HS_Clock   : std_logic;
signal HS_Data    : dataLaneHSType;
signal LP_Clock   : std_logic_vector(1 downto 0);
signal LP_Data    : dataLaneLPType;

signal dDataWord : dataLaneWordType;
signal dDataAligned : dataLaneHSType;

signal RxDDRClkHS_int, RxByteClkHS_int, aRxClkActiveHS_int, CtlClk : std_logic;
signal cHSClkLocked : std_logic;
signal cEnable, cClkEnable : std_logic;
signal cDataEnable : std_logic_vector(kNoOfDataLanes-1 downto 0);

signal aDlyLckd, rDlyRst, rExtRst : std_logic;
signal rDlyRstCnt : natural range 0 to kDlyRstDelay - 1 := kDlyRstDelay - 1;
signal aRstClkLane, aRstD1Lane, aRstD0Lane : std_logic;
attribute DONT_TOUCH : string;
attribute DONT_TOUCH of dDataWord: signal is "TRUE";
attribute DONT_TOUCH of dDataAligned: signal is "TRUE";
begin

-------------------------------------------------------------------------------
-- AXI-Lite interface for control and status
-------------------------------------------------------------------------------
YesAXILITE: if kGenerateAXIL generate
   AXI_Lite_Control: entity work.MIPI_DPHY_Receiver_S_AXI_Lite
      generic map (
         C_S_AXI_DATA_WIDTH	=> C_S_AXI_LITE_DATA_WIDTH,
         C_S_AXI_ADDR_WIDTH	=> C_S_AXI_LITE_ADDR_WIDTH
      )
      port map (
         xEnable => cEnable,
         S_AXI_ACLK	=> s_axi_lite_aclk,
         S_AXI_ARESETN	=> s_axi_lite_aresetn,
         S_AXI_AWADDR	=> s_axi_lite_awaddr,
         S_AXI_AWPROT	=> s_axi_lite_awprot,
         S_AXI_AWVALID	=> s_axi_lite_awvalid,
         S_AXI_AWREADY	=> s_axi_lite_awready,
         S_AXI_WDATA	=> s_axi_lite_wdata,
         S_AXI_WSTRB	=> s_axi_lite_wstrb,
         S_AXI_WVALID	=> s_axi_lite_wvalid,
         S_AXI_WREADY	=> s_axi_lite_wready,
         S_AXI_BRESP	=> s_axi_lite_bresp,
         S_AXI_BVALID	=> s_axi_lite_bvalid,
         S_AXI_BREADY	=> s_axi_lite_bready,
         S_AXI_ARADDR	=> s_axi_lite_araddr,
         S_AXI_ARPROT	=> s_axi_lite_arprot,
         S_AXI_ARVALID	=> s_axi_lite_arvalid,
         S_AXI_ARREADY	=> s_axi_lite_arready,
         S_AXI_RDATA	=> s_axi_lite_rdata,
         S_AXI_RRESP	=> s_axi_lite_rresp,
         S_AXI_RVALID	=> s_axi_lite_rvalid,
         S_AXI_RREADY	=> s_axi_lite_rready
      );
   CtlClk <= s_axi_lite_aclk;
end generate;

NoAXILITE: if not kGenerateAXIL generate
   cEnable <= '1';
   CtlClk <= RefClk;
end generate;

-- We need a reset bridge to use the asynchronous aRst signal to reset our circuitry
-- and decrease the chance of metastability. The signal rExtRst can be used as
-- asynchronous reset for any flip-flop in the RefClk domain, since it will be de-asserted
-- synchronously.
CoreAsyncReset: entity work.ResetBridge
   generic map (
      kPolarity => '1')
   port map (
      aRst => aRst,
      OutClk => RefClk,
      oRst => rExtRst);
      
-------------------------------------------------------------------------------
-- IDELAYCTRL needed by the IDELAYE2 primitives on the data lanes
-------------------------------------------------------------------------------
GenIDELAYCTRL: if (kGenerateIDELAYCTRL) generate
   --IDELAYCTRL must be reset after configuration or refclk lost for 52ns(K7), 72ns(A7) at least
   ResetIDELAYCTRL: process(rExtRst, RefClk)
   begin
      if Rising_Edge(RefClk) then
         if (rExtRst = '1') then
            rDlyRstCnt <= kDlyRstDelay - 1;
            rDlyRst <= '1';
         elsif (rDlyRstCnt /= 0) then
            rDlyRstCnt <= rDlyRstCnt - 1;
         else
            rDlyRst <= '0';
         end if;
      end if;
   end process;

   IDelayCtrlX: IDELAYCTRL
      port map (
         RDY         => aDlyLckd,
         REFCLK      => RefClk,
         RST         => rDlyRst);
   
end generate GenIDELAYCTRL;

GenNoIDELAYCTRL: if (not kGenerateIDELAYCTRL) generate
   aDlyLckd <= not aRst;
end generate GenNoIDELAYCTRL;

-------------------------------------------------------------------------------
-- Clock lane modules: enable, input buffer, D-PHY SCNN module
-------------------------------------------------------------------------------
aRstClkLane <= not aDlyLckd or not aClkEnable;
SyncAsyncClkEnable: entity work.SyncAsync
generic map (
   kResetTo => '0',
   kStages => 2) --use double FF synchronizer
port map (
   aReset => aRstClkLane, --lane-level enable
   aIn => cEnable, --core-level enable
   OutClk => CtlClk,
   oOut => cClkEnable);
ClockInputBuffer: entity work.InputBuffer
   Port map (
      HS_p => dphy_clk_hs_p,
      HS_n => dphy_clk_hs_n,
      LP_n => dphy_clk_lp_n,
      LP_p => dphy_clk_lp_p,
      
      aHS => HS_Clock,
      aLP => LP_Clock 
   );
ClockLane: entity work.DPHY_LaneSCNN
   Generic map (
      kCtlClkFreqHz => 200_000_000, --TODO generate this from tcl propagating frequency
      kGenerateMMCM => false,
      kAddDelay_ps => kAddAdjDelayClk_ps
   )
   Port map (
      aLP => LP_Clock,
      aHS => HS_Clock,
      CtlClk => CtlClk,
      RefClk => RefClk,
      
      RxDDRClkHS => RxDDRClkHS_int,
      RxByteClkHS => RxByteClkHS_int,
      aRxClkActiveHS => aRxClkActiveHS_int,
      aForceRxmode => aClkForceRxmode,
      aStopstate => aClkStopstate,
      aEnable => cClkEnable,
      aRxUlpsClkNot => aRxUlpsClkNot,
      aUlpsActiveNot => aClkUlpsActiveNot
   );

-------------------------------------------------------------------------------
-- Date lane modules: enable, input buffer, D-PHY SCNN module
-------------------------------------------------------------------------------   
InputBufferDataGen: for i in 0 to kNoOfDataLanes-1 generate
   InputBufferDataX: entity work.InputBuffer
      Port map (
         HS_p => dphy_data_hs_p(i),
         HS_n => dphy_data_hs_n(i),
         LP_n => dphy_data_lp_n(i),
         LP_p => dphy_data_lp_p(i),
         
         aHS => HS_Data(i),
         aLP => LP_Data(i) 
      );
DataLane0: if i = 0 generate
   aRstD0Lane <= not aDlyLckd or not aD0Enable;
   SyncAsyncEnable: entity work.SyncAsync
   generic map (
      kResetTo => '0',
      kStages => 2) --use double FF synchronizer
   port map (
      aReset => aRstD0Lane, --lane-level enable
      aIn => cEnable, --core-level enable
      OutClk => CtlClk,
      oOut => cDataEnable(i));
      
   DPHY_LaneSFEN_X: entity work.DPHY_LaneSFEN
      Generic map (
         kCtlClkFreqHz => 200_000_000, --TODO generate this from tcl propagating frequency
         kAddDelay_ps => kAddAdjDelayData0_ps
      )
      Port map (
         aLP => LP_Data(i),
         aHS => HS_Data(i),
         CtlClk => CtlClk,
         
         SerClkHS => RxDDRClkHS_int,
         DivClk => RxByteClkHS_int,
         aRxClkActiveHS => aRxClkActiveHS_int,
         
         --PPI
         RxByteClkHS => open, --see RxByteClkHS_int below
         rbRxDataHS => rbD0RxDataHS,
         rbRxValidHS => rbD0RxValidHS,
         rbRxActiveHS => rbD0RxActiveHS,
         rbRxSyncHS => rbD0RxSyncHS,
         rbErrSotHS => rbD0ErrSotHS,
         rbErrSotSyncHS => rbD0ErrSotSyncHS,
         
         aEnable => cDataEnable(i),
         aStopstate => aD0Stopstate,
         aForceRxmode => aD0ForceRxmode,
         aErrEsc => aD0ErrEsc,
         aErrControl => aD0ErrControl
      );
      --D0RxClkEsc <=
      --aD0RxDataEsc <=
      --aD0RxValidEsc <=
      --aD0RxLpdtEsc <=
      
      --aD0RxUlpsEsc <=
      --aD0RxTriggerEsc <=
      
end generate;
DataLane1: if i = 1 generate
   aRstD1Lane <= not aDlyLckd or not aD1Enable;
   SyncAsyncEnable: entity work.SyncAsync
   generic map (
      kResetTo => '0',
      kStages => 2) --use double FF synchronizer
   port map (
      aReset => aRstD1Lane, --lane-level enable
      aIn => cEnable, --core-level enable
      OutClk => CtlClk,
      oOut => cDataEnable(i));
      
   DPHY_LaneSFEN_X: entity work.DPHY_LaneSFEN
      Generic map (
         kCtlClkFreqHz => 200_000_000, --TODO generate this from tcl propagating frequency
         kAddDelay_ps => kAddAdjDelayData1_ps
      )   
      Port map (
         aLP => LP_Data(i),
         aHS => HS_Data(i),
         CtlClk => CtlClk,
         
         SerClkHS => RxDDRClkHS_int,
         DivClk => RxByteClkHS_int,
         aRxClkActiveHS => aRxClkActiveHS_int,
         
         --PPI
         RxByteClkHS => open, --see RxByteClkHS_int below
         rbRxDataHS => rbD1RxDataHS,
         rbRxValidHS => rbD1RxValidHS,
         rbRxActiveHS => rbD1RxActiveHS,
         rbRxSyncHS => rbD1RxSyncHS,
         rbErrSotHS => rbD1ErrSotHS,
         rbErrSotSyncHS => rbD1ErrSotSyncHS,
         
         aEnable => cDataEnable(i),
         aStopstate => aD1Stopstate,
         aForceRxmode => aD1ForceRxmode,
         aErrEsc => aD1ErrEsc,
         aErrControl => aD1ErrControl
      );
      --D1RxClkEsc <=
      --aD1RxDataEsc <=
      --aD1RxValidEsc <=
      --aD1RxLpdtEsc <=
      
      --aD1RxUlpsEsc <=
      --aD1RxTriggerEsc <=
      
end generate;           
end generate InputBufferDataGen;

-- We output a single divided clock common for all data lanes 
RxByteClkHS <= RxByteClkHS_int;
RxDDRClkHS <= RxDDRClkHS_int;
aRxClkActiveHS <= aRxClkActiveHS_int;

end arch_imp;
