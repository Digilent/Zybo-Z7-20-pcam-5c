--Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2018.2.2 (win64) Build 2348494 Mon Oct  1 18:25:44 MDT 2018
--Date        : Tue Jan 14 17:12:08 2020
--Host        : dig1-ro running 64-bit major release  (build 9200)
--Command     : generate_target design_1.bd
--Design      : design_1
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1 is
  port (
    S_AXI_0_araddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_0_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_0_arready : out STD_LOGIC;
    S_AXI_0_arvalid : in STD_LOGIC;
    S_AXI_0_awaddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_0_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_0_awready : out STD_LOGIC;
    S_AXI_0_awvalid : in STD_LOGIC;
    S_AXI_0_bready : in STD_LOGIC;
    S_AXI_0_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_0_bvalid : out STD_LOGIC;
    S_AXI_0_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_0_rready : in STD_LOGIC;
    S_AXI_0_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_0_rvalid : out STD_LOGIC;
    S_AXI_0_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_0_wready : out STD_LOGIC;
    S_AXI_0_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_0_wvalid : in STD_LOGIC;
    aclk_0 : in STD_LOGIC;
    aresetn_0 : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of design_1 : entity is "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=3,numReposBlks=3,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of design_1 : entity is "design_1.hwdef";
end design_1;

architecture STRUCTURE of design_1 is
  component design_1_axi4stream_vip_0_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axis_tlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tuser : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component design_1_axi4stream_vip_0_0;
  component design_1_axi4stream_vip_1_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_tlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tuser : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component design_1_axi4stream_vip_1_0;
  component design_1_AXI_GammaCorrection_0_0 is
  port (
    StreamClk : in STD_LOGIC;
    sStreamReset_n : in STD_LOGIC;
    s_axis_video_tready : out STD_LOGIC;
    s_axis_video_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_video_tvalid : in STD_LOGIC;
    s_axis_video_tuser : in STD_LOGIC;
    s_axis_video_tlast : in STD_LOGIC;
    m_axis_video_tready : in STD_LOGIC;
    m_axis_video_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axis_video_tvalid : out STD_LOGIC;
    m_axis_video_tuser : out STD_LOGIC;
    m_axis_video_tlast : out STD_LOGIC;
    AxiLiteClk : in STD_LOGIC;
    aAxiLiteReset_n : in STD_LOGIC;
    S_AXI_AWADDR : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_AWPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_AWVALID : in STD_LOGIC;
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_WVALID : in STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_BVALID : out STD_LOGIC;
    S_AXI_BREADY : in STD_LOGIC;
    S_AXI_ARADDR : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_ARPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_ARVALID : in STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    S_AXI_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_RVALID : out STD_LOGIC;
    S_AXI_RREADY : in STD_LOGIC
  );
  end component design_1_AXI_GammaCorrection_0_0;
  signal AXI_GammaCorrection_0_m_axis_video_TDATA : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal AXI_GammaCorrection_0_m_axis_video_TLAST : STD_LOGIC;
  signal AXI_GammaCorrection_0_m_axis_video_TREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal AXI_GammaCorrection_0_m_axis_video_TUSER : STD_LOGIC;
  signal AXI_GammaCorrection_0_m_axis_video_TVALID : STD_LOGIC;
  signal S_AXI_0_1_ARADDR : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal S_AXI_0_1_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal S_AXI_0_1_ARREADY : STD_LOGIC;
  signal S_AXI_0_1_ARVALID : STD_LOGIC;
  signal S_AXI_0_1_AWADDR : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal S_AXI_0_1_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal S_AXI_0_1_AWREADY : STD_LOGIC;
  signal S_AXI_0_1_AWVALID : STD_LOGIC;
  signal S_AXI_0_1_BREADY : STD_LOGIC;
  signal S_AXI_0_1_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S_AXI_0_1_BVALID : STD_LOGIC;
  signal S_AXI_0_1_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S_AXI_0_1_RREADY : STD_LOGIC;
  signal S_AXI_0_1_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S_AXI_0_1_RVALID : STD_LOGIC;
  signal S_AXI_0_1_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S_AXI_0_1_WREADY : STD_LOGIC;
  signal S_AXI_0_1_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S_AXI_0_1_WVALID : STD_LOGIC;
  signal aclk_0_1 : STD_LOGIC;
  signal aresetn_0_1 : STD_LOGIC;
  signal axi4stream_vip_1_M_AXIS_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi4stream_vip_1_M_AXIS_TLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi4stream_vip_1_M_AXIS_TREADY : STD_LOGIC;
  signal axi4stream_vip_1_M_AXIS_TUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi4stream_vip_1_M_AXIS_TVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of S_AXI_0_arready : signal is "xilinx.com:interface:aximm:1.0 S_AXI_0 ARREADY";
  attribute X_INTERFACE_INFO of S_AXI_0_arvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI_0 ARVALID";
  attribute X_INTERFACE_INFO of S_AXI_0_awready : signal is "xilinx.com:interface:aximm:1.0 S_AXI_0 AWREADY";
  attribute X_INTERFACE_INFO of S_AXI_0_awvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI_0 AWVALID";
  attribute X_INTERFACE_INFO of S_AXI_0_bready : signal is "xilinx.com:interface:aximm:1.0 S_AXI_0 BREADY";
  attribute X_INTERFACE_INFO of S_AXI_0_bvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI_0 BVALID";
  attribute X_INTERFACE_INFO of S_AXI_0_rready : signal is "xilinx.com:interface:aximm:1.0 S_AXI_0 RREADY";
  attribute X_INTERFACE_INFO of S_AXI_0_rvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI_0 RVALID";
  attribute X_INTERFACE_INFO of S_AXI_0_wready : signal is "xilinx.com:interface:aximm:1.0 S_AXI_0 WREADY";
  attribute X_INTERFACE_INFO of S_AXI_0_wvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI_0 WVALID";
  attribute X_INTERFACE_INFO of aclk_0 : signal is "xilinx.com:signal:clock:1.0 CLK.ACLK_0 CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of aclk_0 : signal is "XIL_INTERFACENAME CLK.ACLK_0, ASSOCIATED_BUSIF S_AXI_0, ASSOCIATED_RESET aresetn_0, CLK_DOMAIN design_1_aclk_0, FREQ_HZ 100000000, PHASE 0.000";
  attribute X_INTERFACE_INFO of aresetn_0 : signal is "xilinx.com:signal:reset:1.0 RST.ARESETN_0 RST";
  attribute X_INTERFACE_PARAMETER of aresetn_0 : signal is "XIL_INTERFACENAME RST.ARESETN_0, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of S_AXI_0_araddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI_0 ARADDR";
  attribute X_INTERFACE_PARAMETER of S_AXI_0_araddr : signal is "XIL_INTERFACENAME S_AXI_0, ADDR_WIDTH 3, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN design_1_aclk_0, DATA_WIDTH 32, FREQ_HZ 100000000, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 1, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 1, NUM_WRITE_THREADS 1, PHASE 0.000, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0";
  attribute X_INTERFACE_INFO of S_AXI_0_arprot : signal is "xilinx.com:interface:aximm:1.0 S_AXI_0 ARPROT";
  attribute X_INTERFACE_INFO of S_AXI_0_awaddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI_0 AWADDR";
  attribute X_INTERFACE_INFO of S_AXI_0_awprot : signal is "xilinx.com:interface:aximm:1.0 S_AXI_0 AWPROT";
  attribute X_INTERFACE_INFO of S_AXI_0_bresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI_0 BRESP";
  attribute X_INTERFACE_INFO of S_AXI_0_rdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI_0 RDATA";
  attribute X_INTERFACE_INFO of S_AXI_0_rresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI_0 RRESP";
  attribute X_INTERFACE_INFO of S_AXI_0_wdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI_0 WDATA";
  attribute X_INTERFACE_INFO of S_AXI_0_wstrb : signal is "xilinx.com:interface:aximm:1.0 S_AXI_0 WSTRB";
begin
  S_AXI_0_1_ARADDR(2 downto 0) <= S_AXI_0_araddr(2 downto 0);
  S_AXI_0_1_ARPROT(2 downto 0) <= S_AXI_0_arprot(2 downto 0);
  S_AXI_0_1_ARVALID <= S_AXI_0_arvalid;
  S_AXI_0_1_AWADDR(2 downto 0) <= S_AXI_0_awaddr(2 downto 0);
  S_AXI_0_1_AWPROT(2 downto 0) <= S_AXI_0_awprot(2 downto 0);
  S_AXI_0_1_AWVALID <= S_AXI_0_awvalid;
  S_AXI_0_1_BREADY <= S_AXI_0_bready;
  S_AXI_0_1_RREADY <= S_AXI_0_rready;
  S_AXI_0_1_WDATA(31 downto 0) <= S_AXI_0_wdata(31 downto 0);
  S_AXI_0_1_WSTRB(3 downto 0) <= S_AXI_0_wstrb(3 downto 0);
  S_AXI_0_1_WVALID <= S_AXI_0_wvalid;
  S_AXI_0_arready <= S_AXI_0_1_ARREADY;
  S_AXI_0_awready <= S_AXI_0_1_AWREADY;
  S_AXI_0_bresp(1 downto 0) <= S_AXI_0_1_BRESP(1 downto 0);
  S_AXI_0_bvalid <= S_AXI_0_1_BVALID;
  S_AXI_0_rdata(31 downto 0) <= S_AXI_0_1_RDATA(31 downto 0);
  S_AXI_0_rresp(1 downto 0) <= S_AXI_0_1_RRESP(1 downto 0);
  S_AXI_0_rvalid <= S_AXI_0_1_RVALID;
  S_AXI_0_wready <= S_AXI_0_1_WREADY;
  aclk_0_1 <= aclk_0;
  aresetn_0_1 <= aresetn_0;
AXI_GammaCorrection_0: component design_1_AXI_GammaCorrection_0_0
     port map (
      AxiLiteClk => aclk_0_1,
      S_AXI_ARADDR(2 downto 0) => S_AXI_0_1_ARADDR(2 downto 0),
      S_AXI_ARPROT(2 downto 0) => S_AXI_0_1_ARPROT(2 downto 0),
      S_AXI_ARREADY => S_AXI_0_1_ARREADY,
      S_AXI_ARVALID => S_AXI_0_1_ARVALID,
      S_AXI_AWADDR(2 downto 0) => S_AXI_0_1_AWADDR(2 downto 0),
      S_AXI_AWPROT(2 downto 0) => S_AXI_0_1_AWPROT(2 downto 0),
      S_AXI_AWREADY => S_AXI_0_1_AWREADY,
      S_AXI_AWVALID => S_AXI_0_1_AWVALID,
      S_AXI_BREADY => S_AXI_0_1_BREADY,
      S_AXI_BRESP(1 downto 0) => S_AXI_0_1_BRESP(1 downto 0),
      S_AXI_BVALID => S_AXI_0_1_BVALID,
      S_AXI_RDATA(31 downto 0) => S_AXI_0_1_RDATA(31 downto 0),
      S_AXI_RREADY => S_AXI_0_1_RREADY,
      S_AXI_RRESP(1 downto 0) => S_AXI_0_1_RRESP(1 downto 0),
      S_AXI_RVALID => S_AXI_0_1_RVALID,
      S_AXI_WDATA(31 downto 0) => S_AXI_0_1_WDATA(31 downto 0),
      S_AXI_WREADY => S_AXI_0_1_WREADY,
      S_AXI_WSTRB(3 downto 0) => S_AXI_0_1_WSTRB(3 downto 0),
      S_AXI_WVALID => S_AXI_0_1_WVALID,
      StreamClk => aclk_0_1,
      aAxiLiteReset_n => aresetn_0_1,
      m_axis_video_tdata(23 downto 0) => AXI_GammaCorrection_0_m_axis_video_TDATA(23 downto 0),
      m_axis_video_tlast => AXI_GammaCorrection_0_m_axis_video_TLAST,
      m_axis_video_tready => AXI_GammaCorrection_0_m_axis_video_TREADY(0),
      m_axis_video_tuser => AXI_GammaCorrection_0_m_axis_video_TUSER,
      m_axis_video_tvalid => AXI_GammaCorrection_0_m_axis_video_TVALID,
      sStreamReset_n => aresetn_0_1,
      s_axis_video_tdata(31 downto 0) => axi4stream_vip_1_M_AXIS_TDATA(31 downto 0),
      s_axis_video_tlast => axi4stream_vip_1_M_AXIS_TLAST(0),
      s_axis_video_tready => axi4stream_vip_1_M_AXIS_TREADY,
      s_axis_video_tuser => axi4stream_vip_1_M_AXIS_TUSER(0),
      s_axis_video_tvalid => axi4stream_vip_1_M_AXIS_TVALID(0)
    );
axi4stream_vip_0: component design_1_axi4stream_vip_0_0
     port map (
      aclk => aclk_0_1,
      aresetn => aresetn_0_1,
      s_axis_tdata(23 downto 0) => AXI_GammaCorrection_0_m_axis_video_TDATA(23 downto 0),
      s_axis_tlast(0) => AXI_GammaCorrection_0_m_axis_video_TLAST,
      s_axis_tready(0) => AXI_GammaCorrection_0_m_axis_video_TREADY(0),
      s_axis_tuser(0) => AXI_GammaCorrection_0_m_axis_video_TUSER,
      s_axis_tvalid(0) => AXI_GammaCorrection_0_m_axis_video_TVALID
    );
axi4stream_vip_1: component design_1_axi4stream_vip_1_0
     port map (
      aclk => aclk_0_1,
      aresetn => aresetn_0_1,
      m_axis_tdata(31 downto 0) => axi4stream_vip_1_M_AXIS_TDATA(31 downto 0),
      m_axis_tlast(0) => axi4stream_vip_1_M_AXIS_TLAST(0),
      m_axis_tready(0) => axi4stream_vip_1_M_AXIS_TREADY,
      m_axis_tuser(0) => axi4stream_vip_1_M_AXIS_TUSER(0),
      m_axis_tvalid(0) => axi4stream_vip_1_M_AXIS_TVALID(0)
    );
end STRUCTURE;
