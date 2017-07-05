----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/23/2016 11:23:11 AM
-- Design Name: 
-- Module Name: sync - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity sync is

    generic (
        C_AXI_DATA_WIDTH	: integer	:= 32;
        C_AXI_ADDR_WIDTH	: integer	:= 6);
    Port (
        sysclk          : in std_logic;
        
        init_done       : out std_logic;
        WC              : in std_logic_vector(15 downto 0);
        CRC_ERR         : in std_logic_vector(31 downto 0);
        ECC_ERR         : in std_logic_vector(31 downto 0);
        actual_line     : in std_logic_vector(15 downto 0);
        shorter_line    : in std_logic_vector(15 downto 0);
        frame_width     : in std_logic_vector(15 downto 0);
        
        irq_ack         : out std_logic;
        
        -- Ports of Axi Slave Bus Interface S00_AXI
        s00_axi_aclk    : in std_logic;
        s00_axi_aresetn    : in std_logic;
        s00_axi_awaddr    : in std_logic_vector(C_AXI_ADDR_WIDTH-1 downto 0);
        s00_axi_awprot    : in std_logic_vector(2 downto 0);
        s00_axi_awvalid    : in std_logic;
        s00_axi_awready    : out std_logic;
        s00_axi_wdata    : in std_logic_vector(C_AXI_DATA_WIDTH-1 downto 0);
        s00_axi_wstrb    : in std_logic_vector((C_AXI_DATA_WIDTH/8)-1 downto 0);
        s00_axi_wvalid    : in std_logic;
        s00_axi_wready    : out std_logic;
        s00_axi_bresp    : out std_logic_vector(1 downto 0);
        s00_axi_bvalid    : out std_logic;
        s00_axi_bready    : in std_logic;
        s00_axi_araddr    : in std_logic_vector(C_AXI_ADDR_WIDTH-1 downto 0);
        s00_axi_arprot    : in std_logic_vector(2 downto 0);
        s00_axi_arvalid    : in std_logic;
        s00_axi_arready    : out std_logic;
        s00_axi_rdata    : out std_logic_vector(C_AXI_DATA_WIDTH-1 downto 0);
        s00_axi_rresp    : out std_logic_vector(1 downto 0);
        s00_axi_rvalid    : out std_logic;
        s00_axi_rready    : in std_logic
        );
end sync;

architecture Behavioral of sync is
    
    component AXI_L
        generic (
            -- Users to add parameters here

            -- User parameters ends
            -- Do not modify the parameters beyond this line

            -- Width of S_AXI data bus
            C_S_AXI_DATA_WIDTH    : integer    := 32;
            -- Width of S_AXI address bus
            C_S_AXI_ADDR_WIDTH    : integer    := 6
        );
        port (
            -- Users to add ports here

            -- User ports ends
            -- Do not modify the ports beyond this line

            -- Global Clock Signal
            S_AXI_ACLK    : in std_logic;
            S_AXI_ARESETN    : in std_logic;
            S_AXI_AWADDR    : in std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
            S_AXI_AWPROT    : in std_logic_vector(2 downto 0);
            S_AXI_AWVALID    : in std_logic;
            S_AXI_AWREADY    : out std_logic;
            S_AXI_WDATA    : in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
            S_AXI_WSTRB    : in std_logic_vector((C_S_AXI_DATA_WIDTH/8)-1 downto 0);
            S_AXI_WVALID    : in std_logic;
            S_AXI_WREADY    : out std_logic;
            S_AXI_BRESP    : out std_logic_vector(1 downto 0);
            S_AXI_BVALID    : out std_logic;
            S_AXI_BREADY    : in std_logic;
            S_AXI_ARADDR    : in std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
            S_AXI_ARPROT    : in std_logic_vector(2 downto 0);
            S_AXI_ARVALID    : in std_logic;
            S_AXI_ARREADY    : out std_logic;
            S_AXI_RDATA    : out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
            S_AXI_RRESP    : out std_logic_vector(1 downto 0);
            S_AXI_RVALID    : out std_logic;
            S_AXI_RREADY    : in std_logic;
            
            reg5_readed: out std_logic;
            
            reg0 : in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
            reg1 : in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
            reg2 : in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
            reg3 : in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
            reg4 : in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
            reg5 : in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
            reg6 : in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
            reg7 : in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
            reg8 : in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
            reg9 : out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0)
        );
    end component;
    
    component HandshakeData
       Generic (
          kDataWidth : natural := 8);
       Port (
          InClk : in STD_LOGIC;
          OutClk : in STD_LOGIC;
          iData : in STD_LOGIC_VECTOR (kDataWidth-1 downto 0);
          oData : out STD_LOGIC_VECTOR (kDataWidth-1 downto 0);
          iPush : in STD_LOGIC;
          iRdy : out STD_LOGIC;
          oAck : in STD_LOGIC := '1';
          oValid : out STD_LOGIC;
          aReset : in std_logic);
    end component;
    
    component SyncBase
       Generic (
          kResetTo : std_logic := '0'; --value when reset and upon init
          kStages : natural := 2); --double sync by default
       Port (
          aReset : in STD_LOGIC; -- active-high asynchronous reset
          InClk : in std_logic;
          iIn : in STD_LOGIC;
          OutClk : in STD_LOGIC;
          oOut : out STD_LOGIC);
    end component;
         
    signal reg0 : std_logic_vector(C_AXI_DATA_WIDTH-1 downto 0);
    signal reg1 : std_logic_vector(C_AXI_DATA_WIDTH-1 downto 0);
    signal reg2 : std_logic_vector(C_AXI_DATA_WIDTH-1 downto 0);
    signal reg3 : std_logic_vector(C_AXI_DATA_WIDTH-1 downto 0);
    signal reg4 : std_logic_vector(C_AXI_DATA_WIDTH-1 downto 0);
    signal reg5 : std_logic_vector(C_AXI_DATA_WIDTH-1 downto 0);
    signal reg6 : std_logic_vector(C_AXI_DATA_WIDTH-1 downto 0);
    signal reg7 : std_logic_vector(C_AXI_DATA_WIDTH-1 downto 0);
    signal reg8 : std_logic_vector(C_AXI_DATA_WIDTH-1 downto 0);
    signal reg9 : std_logic_vector(C_AXI_DATA_WIDTH-1 downto 0);
    
    signal sync_iRdy, sync_oValid: std_logic_vector(15 downto 0) := (others => '0');
begin

--AXIL_GEN: if AXI_interface = TRUE generate
    
    SyncBase_init_done: SyncBase
       Port Map(
          aReset => '0',  -- active-high asynchronous reset
          InClk => s00_axi_aclk,
          iIn => reg9(0),
          OutClk => sysclk,
          oOut => init_done);
    
    HandshakeData_WC: HandshakeData
       Generic Map(
          kDataWidth => 16)
       Port Map(
          InClk => sysclk, OutClk => s00_axi_aclk,
          iData => WC,
          oData => reg0(15 downto 0),
          iPush => sync_iRdy(0), iRdy => sync_iRdy(0), oAck => sync_oValid(0), oValid => sync_oValid(0), aReset => '0');
    
    HandshakeData_crc_err: HandshakeData
        Generic Map(
            kDataWidth => 32)
        Port Map(
            InClk => sysclk, OutClk => s00_axi_aclk,
            iData => CRC_ERR,
            oData => reg1,
            iPush => sync_iRdy(1), iRdy => sync_iRdy(1), oAck => sync_oValid(1), oValid => sync_oValid(1), aReset => '0');
    
    HandshakeData_ecc_err: HandshakeData
        Generic Map(
            kDataWidth => 32)
        Port Map(
            InClk => sysclk, OutClk => s00_axi_aclk,
            iData => ECC_ERR,
            oData => reg2,
            iPush => sync_iRdy(2), iRdy => sync_iRdy(2), oAck => sync_oValid(2), oValid => sync_oValid(2), aReset => '0');
    
    HandshakeData_actual_line: HandshakeData
       Generic Map(
          kDataWidth => 16)
       Port Map(
          InClk => sysclk, OutClk => s00_axi_aclk,
          iData => actual_line,
          oData => reg4(15 downto 0),
          iPush => sync_iRdy(4), iRdy => sync_iRdy(4), oAck => sync_oValid(4), oValid => sync_oValid(4), aReset => '0');
    
    HandshakeData_short_line: HandshakeData
        Generic Map(
            kDataWidth => 16)
        Port Map(
            InClk => sysclk, OutClk => s00_axi_aclk,
            iData => shorter_line,
            oData => reg5(15 downto 0),
            iPush => sync_iRdy(5), iRdy => sync_iRdy(5), oAck => sync_oValid(5), oValid => sync_oValid(5), aReset => '0');
    
    HandshakeData_frame_width: HandshakeData
        Generic Map(
            kDataWidth => 16)
        Port Map(
            InClk => sysclk, OutClk => s00_axi_aclk,
            iData => frame_width,
            oData => reg7(15 downto 0),
            iPush => sync_iRdy(7), iRdy => sync_iRdy(7), oAck => sync_oValid(7), oValid => sync_oValid(7), aReset => '0');

    axis_comm: AXI_L
        Port Map(
            -- Global Clock Signal
            S_AXI_ACLK    => s00_axi_aclk,   
            S_AXI_ARESETN => s00_axi_aresetn,
            S_AXI_AWADDR  => s00_axi_awaddr, 
            S_AXI_AWPROT  => s00_axi_awprot, 
            S_AXI_AWVALID => s00_axi_awvalid,
            S_AXI_AWREADY => s00_axi_awready,
            S_AXI_WDATA   => s00_axi_wdata,  
            S_AXI_WSTRB   => s00_axi_wstrb,  
            S_AXI_WVALID  => s00_axi_wvalid, 
            S_AXI_WREADY  => s00_axi_wready, 
            S_AXI_BRESP   => s00_axi_bresp,  
            S_AXI_BVALID  => s00_axi_bvalid, 
            S_AXI_BREADY  => s00_axi_bready, 
            S_AXI_ARADDR  => s00_axi_araddr, 
            S_AXI_ARPROT  => s00_axi_arprot, 
            S_AXI_ARVALID => s00_axi_arvalid,
            S_AXI_ARREADY => s00_axi_arready,
            S_AXI_RDATA   => s00_axi_rdata,
            S_AXI_RRESP   => s00_axi_rresp,
            S_AXI_RVALID  => s00_axi_rvalid,
            S_AXI_RREADY  => s00_axi_rready,
                            
            reg5_readed => irq_ack,
            
            reg0 => reg0,
            reg1 => reg1,
            reg2 => reg2,
            reg3 => reg3,
            reg4 => reg4,
            reg5 => reg5,
            reg6 => reg6,
            reg7 => reg7,
            reg8 => reg8,
            reg9 => reg9 
        );
--end generate AXIS_GEN;

end Behavioral;
