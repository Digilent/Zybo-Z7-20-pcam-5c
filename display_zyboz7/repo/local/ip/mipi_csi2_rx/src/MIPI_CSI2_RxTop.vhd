----------------------------------------------------------------------------------
-- Company: Digilent Ro
-- Engineer: Elod Gyorgy, Cristian Ignat
-- 
-- Create Date: 08/18/2016 11:31:43 AM
-- Design Name: 
-- Module Name: CSI2_TOP - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity mipi_csi2_rx_top is
   Generic (
      kTargetDT : string := "RAW10";
      --PPI
      kLaneCount : natural range 1 to 4 := 2; --[1,2,4]
      --Video Format
      C_M_AXIS_COMPONENT_WIDTH : natural := 10; -- [8,10]
      C_M_AXIS_TDATA_WIDTH : natural := 40;
      C_M_MAX_SAMPLES_PER_CLOCK : natural := 4;
        --AXIL  
      C_HAS_AXI4_LITE : BOOLEAN := FALSE;
      C_AXIL_DATA_WIDTH   : integer   := 32;
      C_AXIL_ADDR_WIDTH   : integer   := 6  
   );
   Port ( 
      --PPI
      RxByteClkHS : in STD_LOGIC;
      aClkStopstate : in std_logic;
      
      RxDataHSD0 : in  STD_LOGIC_VECTOR (7 downto 0);
      RxSyncHSD0 : in  STD_LOGIC;
      RxValidHSD0 : in  STD_LOGIC;
      RxActiveHSD0 : in  STD_LOGIC;
      aD0Enable : out STD_LOGIC;
      
      RxDataHSD1 : in  STD_LOGIC_VECTOR (7 downto 0);
      RxSyncHSD1 : in  STD_LOGIC;
      RxValidHSD1 : in  STD_LOGIC;
      RxActiveHSD1 : in  STD_LOGIC;
      aD1Enable : out STD_LOGIC;
      
      RxDataHSD2 : in  STD_LOGIC_VECTOR (7 downto 0);
      RxSyncHSD2 : in  STD_LOGIC;
      RxValidHSD2 : in  STD_LOGIC;
      RxActiveHSD2 : in  STD_LOGIC;
      aD2Enable : out STD_LOGIC;
      
      RxDataHSD3 : in  STD_LOGIC_VECTOR (7 downto 0);
      RxSyncHSD3 : in  STD_LOGIC;
      RxValidHSD3 : in  STD_LOGIC;
      RxActiveHSD3 : in  STD_LOGIC;
      aD3Enable : out STD_LOGIC;      
      aClkEnable : out STD_LOGIC;
      
      aRst : in std_logic;
      
      --axi stream signals
      m_axis_video_tdata    : out std_logic_vector(C_M_AXIS_TDATA_WIDTH-1 downto 0);
      m_axis_video_tvalid   : out std_logic;
      m_axis_video_tready   : in std_logic;
      m_axis_video_tlast    : out std_logic;
      m_axis_video_tuser    : out std_logic_vector(0 downto 0);
      
      video_aresetn        : in std_logic;
      video_aclk           : in std_logic;
      
      -- Ports of Axi Slave Bus Interface S00_AXI
      s_axil_aclk    : in std_logic;
      s_axil_aresetn    : in std_logic;
      s_axil_awaddr    : in std_logic_vector(C_AXIL_ADDR_WIDTH-1 downto 0);
      s_axil_awprot    : in std_logic_vector(2 downto 0);
      s_axil_awvalid    : in std_logic;
      s_axil_awready    : out std_logic;
      s_axil_wdata    : in std_logic_vector(C_AXIL_DATA_WIDTH-1 downto 0);
      s_axil_wstrb    : in std_logic_vector((C_AXIL_DATA_WIDTH/8)-1 downto 0);
      s_axil_wvalid    : in std_logic;
      s_axil_wready    : out std_logic;
      s_axil_bresp    : out std_logic_vector(1 downto 0);
      s_axil_bvalid    : out std_logic;
      s_axil_bready    : in std_logic;
      s_axil_araddr    : in std_logic_vector(C_AXIL_ADDR_WIDTH-1 downto 0);
      s_axil_arprot    : in std_logic_vector(2 downto 0);
      s_axil_arvalid    : in std_logic;
      s_axil_arready    : out std_logic;
      s_axil_rdata    : out std_logic_vector(C_AXIL_DATA_WIDTH-1 downto 0);
      s_axil_rresp    : out std_logic_vector(1 downto 0);
      s_axil_rvalid    : out std_logic;
      s_axil_rready    : in std_logic
        
   );
end mipi_csi2_rx_top;

architecture Behavioral of mipi_csi2_rx_top is    
   constant kMaxLaneCount : natural := 4;
   signal rbRxDataHS : STD_LOGIC_VECTOR (8 * kLaneCount - 1 downto 0);
   signal rbRxSyncHS : STD_LOGIC_VECTOR (kLaneCount - 1 downto 0);
   signal rbRxValidHS : STD_LOGIC_VECTOR (kLaneCount - 1 downto 0);
   signal rbRxActiveHS : STD_LOGIC_VECTOR (kLaneCount - 1 downto 0);
   signal aDEnable : STD_LOGIC_VECTOR (kLaneCount - 1 downto 0);
begin
    
InputDataGen: for i in 0 to kLaneCount-1 generate
    DataLane0: if i = 0 generate
        rbRxDataHS(8 * (i + 1) - 1 downto 8 * i) <= RxDataHSD0;
        rbRxValidHS(i) <= RxValidHSD0;
        rbRxActiveHS(i) <= RxActiveHSD0;
        rbRxSyncHS(i) <= RxSyncHSD0;
        aD0Enable <= aDEnable(i);
    end generate;
    
    DataLane1: if i = 1 generate
        rbRxDataHS(8 * (i + 1) - 1 downto 8 * i) <= RxDataHSD1;
        rbRxValidHS(i) <= RxValidHSD1;
        rbRxActiveHS(i) <= RxActiveHSD1;
        rbRxSyncHS(i) <= RxSyncHSD1;
        aD1Enable <= aDEnable(i);
    end generate;
    
    DataLane2: if i = 2 generate
        rbRxDataHS(8 * (i + 1) - 1 downto 8 * i) <= RxDataHSD2;
        rbRxValidHS(i) <= RxValidHSD2;
        rbRxActiveHS(i) <= RxActiveHSD2;
        rbRxSyncHS(i) <= RxSyncHSD2;
        aD2Enable <= aDEnable(i);
    end generate;
    
    DataLane3: if i = 3 generate
        rbRxDataHS(8 * (i + 1) - 1 downto 8 * i) <= RxDataHSD3;
        rbRxValidHS(i) <= RxValidHSD3;
        rbRxActiveHS(i) <= RxActiveHSD3;
        rbRxSyncHS(i) <= RxSyncHSD3;
        aD3Enable <= aDEnable(i);
    end generate;
end generate InputDataGen;

MIPI_CSI2_Rx_inst: entity work.MIPI_CSI2_Rx
   Generic map(
      kTargetDT => kTargetDT,
      --PPI
      kLaneCount => kLaneCount, --[1,2,4]
      --Video Format
      C_M_AXIS_COMPONENT_WIDTH => C_M_AXIS_COMPONENT_WIDTH, -- [8,10]
      C_M_AXIS_TDATA_WIDTH => C_M_AXIS_TDATA_WIDTH,
      C_M_MAX_SAMPLES_PER_CLOCK => C_M_MAX_SAMPLES_PER_CLOCK
   )
   Port map( 
      --PPI
      RxByteClkHS => RxByteClkHS,
      aClkStopstate => aClkStopstate,
      
      rbRxDataHS => rbRxDataHS,
      rbRxSyncHS => rbRxSyncHS,
      rbRxValidHS => rbRxValidHS,
      rbRxActiveHS => rbRxActiveHS,
      aDEnable => aDEnable,      
      aClkEnable => aClkEnable,
      
      aRst => aRst,
      
      --axi stream signals
      m_axis_video_tdata    => m_axis_video_tdata,
      m_axis_video_tvalid   => m_axis_video_tvalid,
      m_axis_video_tready   => m_axis_video_tready,
      m_axis_video_tlast    => m_axis_video_tlast,
      m_axis_video_tuser    => m_axis_video_tuser,
      
      video_aresetn        => video_aresetn,
      video_aclk           => video_aclk
    );
    
AXIL_GEN: if C_HAS_AXI4_LITE = TRUE generate

end generate AXIL_GEN;
    
end Behavioral;
