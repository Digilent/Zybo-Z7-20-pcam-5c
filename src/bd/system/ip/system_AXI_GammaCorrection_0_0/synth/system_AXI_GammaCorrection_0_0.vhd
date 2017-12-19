-- (c) Copyright 1995-2017 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: digilentinc.com:user:AXI_GammaCorrection:1.0
-- IP Revision: 20

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY system_AXI_GammaCorrection_0_0 IS
  PORT (
    StreamClk : IN STD_LOGIC;
    sStreamReset_n : IN STD_LOGIC;
    s_axis_video_tready : OUT STD_LOGIC;
    s_axis_video_tdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axis_video_tvalid : IN STD_LOGIC;
    s_axis_video_tuser : IN STD_LOGIC;
    s_axis_video_tlast : IN STD_LOGIC;
    m_axis_video_tready : IN STD_LOGIC;
    m_axis_video_tdata : OUT STD_LOGIC_VECTOR(23 DOWNTO 0);
    m_axis_video_tvalid : OUT STD_LOGIC;
    m_axis_video_tuser : OUT STD_LOGIC;
    m_axis_video_tlast : OUT STD_LOGIC;
    AxiLiteClk : IN STD_LOGIC;
    aAxiLiteReset_n : IN STD_LOGIC;
    S_AXI_AWADDR : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    S_AXI_AWPROT : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    S_AXI_AWVALID : IN STD_LOGIC;
    S_AXI_AWREADY : OUT STD_LOGIC;
    S_AXI_WDATA : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    S_AXI_WSTRB : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    S_AXI_WVALID : IN STD_LOGIC;
    S_AXI_WREADY : OUT STD_LOGIC;
    S_AXI_BRESP : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    S_AXI_BVALID : OUT STD_LOGIC;
    S_AXI_BREADY : IN STD_LOGIC;
    S_AXI_ARADDR : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    S_AXI_ARPROT : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    S_AXI_ARVALID : IN STD_LOGIC;
    S_AXI_ARREADY : OUT STD_LOGIC;
    S_AXI_RDATA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    S_AXI_RRESP : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    S_AXI_RVALID : OUT STD_LOGIC;
    S_AXI_RREADY : IN STD_LOGIC
  );
END system_AXI_GammaCorrection_0_0;

ARCHITECTURE system_AXI_GammaCorrection_0_0_arch OF system_AXI_GammaCorrection_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF system_AXI_GammaCorrection_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT AXI_GammaCorrection IS
    GENERIC (
      kAXI_InputDataWidth : INTEGER;
      kAXI_OutputDataWidth : INTEGER;
      kInputColorWidth : INTEGER;
      C_S_AXI_DATA_WIDTH : INTEGER;
      C_S_AXI_ADDR_WIDTH : INTEGER
    );
    PORT (
      StreamClk : IN STD_LOGIC;
      sStreamReset_n : IN STD_LOGIC;
      s_axis_video_tready : OUT STD_LOGIC;
      s_axis_video_tdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      s_axis_video_tvalid : IN STD_LOGIC;
      s_axis_video_tuser : IN STD_LOGIC;
      s_axis_video_tlast : IN STD_LOGIC;
      m_axis_video_tready : IN STD_LOGIC;
      m_axis_video_tdata : OUT STD_LOGIC_VECTOR(23 DOWNTO 0);
      m_axis_video_tvalid : OUT STD_LOGIC;
      m_axis_video_tuser : OUT STD_LOGIC;
      m_axis_video_tlast : OUT STD_LOGIC;
      AxiLiteClk : IN STD_LOGIC;
      aAxiLiteReset_n : IN STD_LOGIC;
      S_AXI_AWADDR : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      S_AXI_AWPROT : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      S_AXI_AWVALID : IN STD_LOGIC;
      S_AXI_AWREADY : OUT STD_LOGIC;
      S_AXI_WDATA : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      S_AXI_WSTRB : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      S_AXI_WVALID : IN STD_LOGIC;
      S_AXI_WREADY : OUT STD_LOGIC;
      S_AXI_BRESP : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      S_AXI_BVALID : OUT STD_LOGIC;
      S_AXI_BREADY : IN STD_LOGIC;
      S_AXI_ARADDR : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      S_AXI_ARPROT : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      S_AXI_ARVALID : IN STD_LOGIC;
      S_AXI_ARREADY : OUT STD_LOGIC;
      S_AXI_RDATA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      S_AXI_RRESP : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      S_AXI_RVALID : OUT STD_LOGIC;
      S_AXI_RREADY : IN STD_LOGIC
    );
  END COMPONENT AXI_GammaCorrection;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF system_AXI_GammaCorrection_0_0_arch: ARCHITECTURE IS "AXI_GammaCorrection,Vivado 2016.4";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF system_AXI_GammaCorrection_0_0_arch : ARCHITECTURE IS "system_AXI_GammaCorrection_0_0,AXI_GammaCorrection,{}";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF StreamClk: SIGNAL IS "xilinx.com:signal:clock:1.0 AXI_Stream_Clk CLK";
  ATTRIBUTE X_INTERFACE_INFO OF sStreamReset_n: SIGNAL IS "xilinx.com:signal:reset:1.0 AXI_Stream_Reset_n RST";
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_video_tready: SIGNAL IS "xilinx.com:interface:axis:1.0 AXI_Slave_Interface TREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_video_tdata: SIGNAL IS "xilinx.com:interface:axis:1.0 AXI_Slave_Interface TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_video_tvalid: SIGNAL IS "xilinx.com:interface:axis:1.0 AXI_Slave_Interface TVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_video_tuser: SIGNAL IS "xilinx.com:interface:axis:1.0 AXI_Slave_Interface TUSER";
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_video_tlast: SIGNAL IS "xilinx.com:interface:axis:1.0 AXI_Slave_Interface TLAST";
  ATTRIBUTE X_INTERFACE_INFO OF m_axis_video_tready: SIGNAL IS "xilinx.com:interface:axis:1.0 AXI_Stream_Master TREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m_axis_video_tdata: SIGNAL IS "xilinx.com:interface:axis:1.0 AXI_Stream_Master TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF m_axis_video_tvalid: SIGNAL IS "xilinx.com:interface:axis:1.0 AXI_Stream_Master TVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m_axis_video_tuser: SIGNAL IS "xilinx.com:interface:axis:1.0 AXI_Stream_Master TUSER";
  ATTRIBUTE X_INTERFACE_INFO OF m_axis_video_tlast: SIGNAL IS "xilinx.com:interface:axis:1.0 AXI_Stream_Master TLAST";
  ATTRIBUTE X_INTERFACE_INFO OF AxiLiteClk: SIGNAL IS "xilinx.com:signal:clock:1.0 AxiLiteClk CLK";
  ATTRIBUTE X_INTERFACE_INFO OF aAxiLiteReset_n: SIGNAL IS "xilinx.com:signal:reset:1.0 AxiLiteReset_n RST";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXI_AWADDR: SIGNAL IS "xilinx.com:interface:aximm:1.0 AXI_Lite_Reg_Intf AWADDR";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXI_AWPROT: SIGNAL IS "xilinx.com:interface:aximm:1.0 AXI_Lite_Reg_Intf AWPROT";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXI_AWVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 AXI_Lite_Reg_Intf AWVALID";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXI_AWREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 AXI_Lite_Reg_Intf AWREADY";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXI_WDATA: SIGNAL IS "xilinx.com:interface:aximm:1.0 AXI_Lite_Reg_Intf WDATA";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXI_WSTRB: SIGNAL IS "xilinx.com:interface:aximm:1.0 AXI_Lite_Reg_Intf WSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXI_WVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 AXI_Lite_Reg_Intf WVALID";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXI_WREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 AXI_Lite_Reg_Intf WREADY";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXI_BRESP: SIGNAL IS "xilinx.com:interface:aximm:1.0 AXI_Lite_Reg_Intf BRESP";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXI_BVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 AXI_Lite_Reg_Intf BVALID";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXI_BREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 AXI_Lite_Reg_Intf BREADY";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXI_ARADDR: SIGNAL IS "xilinx.com:interface:aximm:1.0 AXI_Lite_Reg_Intf ARADDR";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXI_ARPROT: SIGNAL IS "xilinx.com:interface:aximm:1.0 AXI_Lite_Reg_Intf ARPROT";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXI_ARVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 AXI_Lite_Reg_Intf ARVALID";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXI_ARREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 AXI_Lite_Reg_Intf ARREADY";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXI_RDATA: SIGNAL IS "xilinx.com:interface:aximm:1.0 AXI_Lite_Reg_Intf RDATA";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXI_RRESP: SIGNAL IS "xilinx.com:interface:aximm:1.0 AXI_Lite_Reg_Intf RRESP";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXI_RVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 AXI_Lite_Reg_Intf RVALID";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXI_RREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 AXI_Lite_Reg_Intf RREADY";
BEGIN
  U0 : AXI_GammaCorrection
    GENERIC MAP (
      kAXI_InputDataWidth => 32,
      kAXI_OutputDataWidth => 24,
      kInputColorWidth => 10,
      C_S_AXI_DATA_WIDTH => 32,
      C_S_AXI_ADDR_WIDTH => 3
    )
    PORT MAP (
      StreamClk => StreamClk,
      sStreamReset_n => sStreamReset_n,
      s_axis_video_tready => s_axis_video_tready,
      s_axis_video_tdata => s_axis_video_tdata,
      s_axis_video_tvalid => s_axis_video_tvalid,
      s_axis_video_tuser => s_axis_video_tuser,
      s_axis_video_tlast => s_axis_video_tlast,
      m_axis_video_tready => m_axis_video_tready,
      m_axis_video_tdata => m_axis_video_tdata,
      m_axis_video_tvalid => m_axis_video_tvalid,
      m_axis_video_tuser => m_axis_video_tuser,
      m_axis_video_tlast => m_axis_video_tlast,
      AxiLiteClk => AxiLiteClk,
      aAxiLiteReset_n => aAxiLiteReset_n,
      S_AXI_AWADDR => S_AXI_AWADDR,
      S_AXI_AWPROT => S_AXI_AWPROT,
      S_AXI_AWVALID => S_AXI_AWVALID,
      S_AXI_AWREADY => S_AXI_AWREADY,
      S_AXI_WDATA => S_AXI_WDATA,
      S_AXI_WSTRB => S_AXI_WSTRB,
      S_AXI_WVALID => S_AXI_WVALID,
      S_AXI_WREADY => S_AXI_WREADY,
      S_AXI_BRESP => S_AXI_BRESP,
      S_AXI_BVALID => S_AXI_BVALID,
      S_AXI_BREADY => S_AXI_BREADY,
      S_AXI_ARADDR => S_AXI_ARADDR,
      S_AXI_ARPROT => S_AXI_ARPROT,
      S_AXI_ARVALID => S_AXI_ARVALID,
      S_AXI_ARREADY => S_AXI_ARREADY,
      S_AXI_RDATA => S_AXI_RDATA,
      S_AXI_RRESP => S_AXI_RRESP,
      S_AXI_RVALID => S_AXI_RVALID,
      S_AXI_RREADY => S_AXI_RREADY
    );
END system_AXI_GammaCorrection_0_0_arch;
