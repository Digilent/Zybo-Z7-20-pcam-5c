----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/14/2016 01:57:26 PM
-- Design Name: 
-- Module Name: CSI2 - Behavioral
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity MIPI_CSI2_Rx is
   Generic (
      kTargetDT : string := "RAW10";
      --PPI
      kLaneCount : natural range 1 to 4 := 2; --[1,2,4]
      --Video Format
      C_M_AXIS_COMPONENT_WIDTH : natural := 10; -- [8,10]
      C_M_AXIS_TDATA_WIDTH : natural := 40;
      C_M_MAX_SAMPLES_PER_CLOCK : natural := 4
   );
   Port ( 
      --PPI
      RxByteClkHS : in STD_LOGIC;
      aClkStopstate : in std_logic;
      
      rbRxDataHS : in STD_LOGIC_VECTOR (8 * kLaneCount - 1 downto 0);
      rbRxSyncHS : in STD_LOGIC_VECTOR (kLaneCount - 1 downto 0);
      rbRxValidHS : in STD_LOGIC_VECTOR (kLaneCount - 1 downto 0);
      rbRxActiveHS : in STD_LOGIC_VECTOR (kLaneCount - 1 downto 0);
      aDEnable : out STD_LOGIC_VECTOR (kLaneCount - 1 downto 0);      
      aClkEnable : out STD_LOGIC;
      
      aRst : in std_logic;
      
      --axi stream signals
      m_axis_video_tdata    : out std_logic_vector(C_M_AXIS_TDATA_WIDTH-1 downto 0);
      m_axis_video_tvalid   : out std_logic;
      m_axis_video_tready   : in std_logic;
      m_axis_video_tlast    : out std_logic;
      m_axis_video_tuser    : out std_logic_vector(0 downto 0);
      
      video_aresetn        : in std_logic; -- TODO: can we rely on aRst alone?
      video_aclk           : in std_logic        
    );
end MIPI_CSI2_Rx;

architecture Behavioral of MIPI_CSI2_Rx is
   component LM is
      Generic(
         kMaxLaneCount : natural := 4;
         --PPI
         kLaneCount : natural range 1 to 4 := 2 --[1,2,4]
      );
      Port (
          RxByteClkHS : in STD_LOGIC;
          RxDataHS : in  STD_LOGIC_VECTOR (8 * kLaneCount - 1 downto 0);
          RxSyncHS : in  STD_LOGIC_VECTOR (kLaneCount - 1 downto 0);
          RxValidHS : in  STD_LOGIC_VECTOR (kLaneCount - 1 downto 0);
          RxActiveHS : in  STD_LOGIC_VECTOR (kLaneCount - 1 downto 0);
          
          rbMAxisTdata : out std_logic_vector(8 * kMaxLaneCount - 1 downto 0);
          rbMAxisTkeep : out std_logic_vector(kMaxLaneCount - 1 downto 0);
          rbMAxisTvalid : out std_logic;
          rbMAxisTready : in std_logic;
          rbMAxisTlast : out std_logic;
          
          rbOverflow : out std_logic;
          
          aRst : in std_logic
      );
   end component;
   component LLP is
      Generic(
         kMaxLaneCount : natural := 4;
         --PPI
         kLaneCount : natural range 1 to 4 := 2; --[1,2,4];
         kTargetDT : string := "RAW10"
      );
      Port (
         SAxisClk : in STD_LOGIC;
         --Slave AXI-Stream
         sAxisTdata : in std_logic_vector(8 * kMaxLaneCount - 1 downto 0);
         sAxisTkeep : in std_logic_vector(kMaxLaneCount - 1 downto 0);
         sAxisTvalid : in std_logic;
         sAxisTready : out std_logic;
         sAxisTlast : in std_logic;
         
         MAxisClk : in std_logic;
         --Master AXI-Stream
         mAxisTdata : out std_logic_vector(40 - 1 downto 0);
         mAxisTvalid : out std_logic;
         mAxisTready : in std_logic;
         mAxisTlast : out std_logic;
         mAxisTuser : out std_logic_vector(0 downto 0);
               
         sOverflow : out std_logic;
         aRst : in std_logic -- global asynchronous reset; synchronized internally to both clock domains
      );
   end component;
   constant kMaxLaneCount : natural := 4;
   
   signal rbLMAxisTdata : std_logic_vector(8 * kMaxLaneCount - 1 downto 0);
   signal rbLMAxisTkeep : std_logic_vector(kMaxLaneCount - 1 downto 0);
   signal rbLMAxisTvalid, rbLMAxisTlast : std_logic;
   signal rbLMOverflow : std_logic;
   signal rbLLPAxisTready : std_logic;
   signal rbRst, rbReady : std_logic;
begin

aClkEnable <=  '1' when aRst = '0' else
               '0';
aDEnable <= (others => '1') when rbReady = '1' else
            (others => '0');
            
-- Synchronize aRst into the RxByteClkHS domain
SyncReset: entity work.ResetBridge
   generic map (
      kPolarity => '1')
   port map (
      aRst => aRst,
      OutClk => RxByteClkHS,
      oRst => rbRst);

ReadyGen: process(RxByteClkHS, rbRst)
begin
   if (rbRst = '1') then
      rbReady <= '0';
   elsif Rising_Edge(RxByteClkHS) then
      if (rbLLPAxisTready = '1') then
         rbReady <= '1';
      end if;
   end if;
end process;

-- Lane merger compacts the CSI-2 lane into a wide AXI-Stream bus
-- Both the input and output interfaces are synchronous to RxByteClkHS
-- and it does not buffer data
LM_inst: LM
   Generic Map( 
      kMaxLaneCount  => kMaxLaneCount,
      kLaneCount     => kLaneCount
   )
   Port Map( 
      RxByteClkHS    => RxByteClkHS,
      RxDataHS       => rbRxDataHS,
      RxSyncHS       => rbRxSyncHS,
      RxValidHS      => rbRxValidHS,
      RxActiveHS     => rbRxActiveHS,
      
      rbMAxisTdata   => rbLMAxisTdata,
      rbMAxisTkeep   => rbLMAxisTkeep,
      rbMAxisTvalid  => rbLMAxisTvalid,
      rbMAxisTready  => rbLLPAxisTready,
      rbMAxisTlast   => rbLMAxisTlast,
      
      rbOverflow     => rbLMOverflow,
      
      aRst           => aRst
   );

-- Link-level protocol decodes short and long packets into frames, lines
-- and pixels. It synchronizes data from the MIPI clock domain (RxByteClkHS)
-- to the video pipeline domain aclk_m. It does error detection
-- and correction, filters data according to the target data type and
-- formats it according to UG934, ready to source a video processing
-- pipeline.
LLP_inst: LLP
   Generic map (
      kMaxLaneCount => kMaxLaneCount,
      --PPI
      kLaneCount => kLaneCount, --[1,2,4]
      kTargetDT => kTargetDT
   )
   Port map (
      SAxisClk => RxByteClkHS,
      --Slave AXI-Stream
      sAxisTdata => rbLMAxisTdata, 
      sAxisTkeep => rbLMAxisTkeep,
      sAxisTvalid => rbLMAxisTvalid,
      sAxisTready => rbLLPAxisTready,
      sAxisTlast => rbLMAxisTlast,
      
      MAxisClk => video_aclk,
      --Master AXI-Stream
      mAxisTdata => m_axis_video_tdata,
      mAxisTvalid => m_axis_video_tvalid,
      mAxisTready => m_axis_video_tready,
      mAxisTlast => m_axis_video_tlast,
      mAxisTuser => m_axis_video_tuser,
            
      sOverflow => open, --TODO
      aRst => aRst
   );
  
end Behavioral;
