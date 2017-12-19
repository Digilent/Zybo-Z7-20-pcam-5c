// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
// Date        : Tue Dec 19 13:27:19 2017
// Host        : WK73 running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode funcsim
//               C:/sam_work/git/digilent/Zybo-Z7-20-pcam-5c/src/bd/system/ip/system_AXI_GammaCorrection_0_0/system_AXI_GammaCorrection_0_0_sim_netlist.v
// Design      : system_AXI_GammaCorrection_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "system_AXI_GammaCorrection_0_0,AXI_GammaCorrection,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "AXI_GammaCorrection,Vivado 2016.4" *) 
(* NotValidForBitStream *)
module system_AXI_GammaCorrection_0_0
   (StreamClk,
    sStreamReset_n,
    s_axis_video_tready,
    s_axis_video_tdata,
    s_axis_video_tvalid,
    s_axis_video_tuser,
    s_axis_video_tlast,
    m_axis_video_tready,
    m_axis_video_tdata,
    m_axis_video_tvalid,
    m_axis_video_tuser,
    m_axis_video_tlast,
    AxiLiteClk,
    aAxiLiteReset_n,
    S_AXI_AWADDR,
    S_AXI_AWPROT,
    S_AXI_AWVALID,
    S_AXI_AWREADY,
    S_AXI_WDATA,
    S_AXI_WSTRB,
    S_AXI_WVALID,
    S_AXI_WREADY,
    S_AXI_BRESP,
    S_AXI_BVALID,
    S_AXI_BREADY,
    S_AXI_ARADDR,
    S_AXI_ARPROT,
    S_AXI_ARVALID,
    S_AXI_ARREADY,
    S_AXI_RDATA,
    S_AXI_RRESP,
    S_AXI_RVALID,
    S_AXI_RREADY);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 AXI_Stream_Clk CLK" *) input StreamClk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 AXI_Stream_Reset_n RST" *) input sStreamReset_n;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 AXI_Slave_Interface TREADY" *) output s_axis_video_tready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 AXI_Slave_Interface TDATA" *) input [31:0]s_axis_video_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 AXI_Slave_Interface TVALID" *) input s_axis_video_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 AXI_Slave_Interface TUSER" *) input s_axis_video_tuser;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 AXI_Slave_Interface TLAST" *) input s_axis_video_tlast;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 AXI_Stream_Master TREADY" *) input m_axis_video_tready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 AXI_Stream_Master TDATA" *) output [23:0]m_axis_video_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 AXI_Stream_Master TVALID" *) output m_axis_video_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 AXI_Stream_Master TUSER" *) output m_axis_video_tuser;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 AXI_Stream_Master TLAST" *) output m_axis_video_tlast;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 AxiLiteClk CLK" *) input AxiLiteClk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 AxiLiteReset_n RST" *) input aAxiLiteReset_n;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_Lite_Reg_Intf AWADDR" *) input [2:0]S_AXI_AWADDR;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_Lite_Reg_Intf AWPROT" *) input [2:0]S_AXI_AWPROT;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_Lite_Reg_Intf AWVALID" *) input S_AXI_AWVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_Lite_Reg_Intf AWREADY" *) output S_AXI_AWREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_Lite_Reg_Intf WDATA" *) input [31:0]S_AXI_WDATA;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_Lite_Reg_Intf WSTRB" *) input [3:0]S_AXI_WSTRB;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_Lite_Reg_Intf WVALID" *) input S_AXI_WVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_Lite_Reg_Intf WREADY" *) output S_AXI_WREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_Lite_Reg_Intf BRESP" *) output [1:0]S_AXI_BRESP;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_Lite_Reg_Intf BVALID" *) output S_AXI_BVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_Lite_Reg_Intf BREADY" *) input S_AXI_BREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_Lite_Reg_Intf ARADDR" *) input [2:0]S_AXI_ARADDR;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_Lite_Reg_Intf ARPROT" *) input [2:0]S_AXI_ARPROT;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_Lite_Reg_Intf ARVALID" *) input S_AXI_ARVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_Lite_Reg_Intf ARREADY" *) output S_AXI_ARREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_Lite_Reg_Intf RDATA" *) output [31:0]S_AXI_RDATA;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_Lite_Reg_Intf RRESP" *) output [1:0]S_AXI_RRESP;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_Lite_Reg_Intf RVALID" *) output S_AXI_RVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_Lite_Reg_Intf RREADY" *) input S_AXI_RREADY;

  wire \<const0> ;
  wire AxiLiteClk;
  wire S_AXI_ARREADY;
  wire S_AXI_ARVALID;
  wire [2:0]S_AXI_AWADDR;
  wire S_AXI_AWREADY;
  wire S_AXI_AWVALID;
  wire S_AXI_BREADY;
  wire S_AXI_BVALID;
  wire S_AXI_RREADY;
  wire S_AXI_RVALID;
  wire [31:0]S_AXI_WDATA;
  wire S_AXI_WREADY;
  wire [3:0]S_AXI_WSTRB;
  wire S_AXI_WVALID;
  wire StreamClk;
  wire aAxiLiteReset_n;
  wire [23:0]m_axis_video_tdata;
  wire m_axis_video_tlast;
  wire m_axis_video_tready;
  wire m_axis_video_tuser;
  wire m_axis_video_tvalid;
  wire sStreamReset_n;
  wire [31:0]s_axis_video_tdata;
  wire s_axis_video_tlast;
  wire s_axis_video_tuser;
  wire s_axis_video_tvalid;

  assign S_AXI_BRESP[1] = \<const0> ;
  assign S_AXI_BRESP[0] = \<const0> ;
  assign S_AXI_RDATA[31] = \<const0> ;
  assign S_AXI_RDATA[30] = \<const0> ;
  assign S_AXI_RDATA[29] = \<const0> ;
  assign S_AXI_RDATA[28] = \<const0> ;
  assign S_AXI_RDATA[27] = \<const0> ;
  assign S_AXI_RDATA[26] = \<const0> ;
  assign S_AXI_RDATA[25] = \<const0> ;
  assign S_AXI_RDATA[24] = \<const0> ;
  assign S_AXI_RDATA[23] = \<const0> ;
  assign S_AXI_RDATA[22] = \<const0> ;
  assign S_AXI_RDATA[21] = \<const0> ;
  assign S_AXI_RDATA[20] = \<const0> ;
  assign S_AXI_RDATA[19] = \<const0> ;
  assign S_AXI_RDATA[18] = \<const0> ;
  assign S_AXI_RDATA[17] = \<const0> ;
  assign S_AXI_RDATA[16] = \<const0> ;
  assign S_AXI_RDATA[15] = \<const0> ;
  assign S_AXI_RDATA[14] = \<const0> ;
  assign S_AXI_RDATA[13] = \<const0> ;
  assign S_AXI_RDATA[12] = \<const0> ;
  assign S_AXI_RDATA[11] = \<const0> ;
  assign S_AXI_RDATA[10] = \<const0> ;
  assign S_AXI_RDATA[9] = \<const0> ;
  assign S_AXI_RDATA[8] = \<const0> ;
  assign S_AXI_RDATA[7] = \<const0> ;
  assign S_AXI_RDATA[6] = \<const0> ;
  assign S_AXI_RDATA[5] = \<const0> ;
  assign S_AXI_RDATA[4] = \<const0> ;
  assign S_AXI_RDATA[3] = \<const0> ;
  assign S_AXI_RDATA[2] = \<const0> ;
  assign S_AXI_RDATA[1] = \<const0> ;
  assign S_AXI_RDATA[0] = \<const0> ;
  assign S_AXI_RRESP[1] = \<const0> ;
  assign S_AXI_RRESP[0] = \<const0> ;
  assign s_axis_video_tready = m_axis_video_tready;
  GND GND
       (.G(\<const0> ));
  system_AXI_GammaCorrection_0_0_AXI_GammaCorrection U0
       (.AxiLiteClk(AxiLiteClk),
        .S_AXI_ARREADY(S_AXI_ARREADY),
        .S_AXI_ARVALID(S_AXI_ARVALID),
        .S_AXI_AWADDR(S_AXI_AWADDR[2]),
        .S_AXI_AWREADY(S_AXI_AWREADY),
        .S_AXI_AWVALID(S_AXI_AWVALID),
        .S_AXI_BREADY(S_AXI_BREADY),
        .S_AXI_BVALID(S_AXI_BVALID),
        .S_AXI_RREADY(S_AXI_RREADY),
        .S_AXI_RVALID(S_AXI_RVALID),
        .S_AXI_WDATA(S_AXI_WDATA[2:0]),
        .S_AXI_WREADY(S_AXI_WREADY),
        .S_AXI_WSTRB(S_AXI_WSTRB[0]),
        .S_AXI_WVALID(S_AXI_WVALID),
        .StreamClk(StreamClk),
        .aAxiLiteReset_n(aAxiLiteReset_n),
        .m_axis_video_tdata(m_axis_video_tdata),
        .m_axis_video_tlast(m_axis_video_tlast),
        .m_axis_video_tready(m_axis_video_tready),
        .m_axis_video_tuser(m_axis_video_tuser),
        .m_axis_video_tvalid(m_axis_video_tvalid),
        .sStreamReset_n(sStreamReset_n),
        .s_axis_video_tdata(s_axis_video_tdata[29:0]),
        .s_axis_video_tlast(s_axis_video_tlast),
        .s_axis_video_tuser(s_axis_video_tuser),
        .s_axis_video_tvalid(s_axis_video_tvalid));
endmodule

(* ORIG_REF_NAME = "AXI_GammaCorrection" *) 
module system_AXI_GammaCorrection_0_0_AXI_GammaCorrection
   (S_AXI_WREADY,
    S_AXI_ARREADY,
    S_AXI_AWREADY,
    m_axis_video_tdata,
    m_axis_video_tlast,
    m_axis_video_tuser,
    m_axis_video_tvalid,
    S_AXI_BVALID,
    S_AXI_RVALID,
    s_axis_video_tdata,
    S_AXI_AWVALID,
    S_AXI_WVALID,
    S_AXI_ARVALID,
    AxiLiteClk,
    S_AXI_WDATA,
    StreamClk,
    s_axis_video_tvalid,
    m_axis_video_tready,
    S_AXI_WSTRB,
    s_axis_video_tlast,
    sStreamReset_n,
    s_axis_video_tuser,
    aAxiLiteReset_n,
    S_AXI_BREADY,
    S_AXI_RREADY,
    S_AXI_AWADDR);
  output S_AXI_WREADY;
  output S_AXI_ARREADY;
  output S_AXI_AWREADY;
  output [23:0]m_axis_video_tdata;
  output m_axis_video_tlast;
  output m_axis_video_tuser;
  output m_axis_video_tvalid;
  output S_AXI_BVALID;
  output S_AXI_RVALID;
  input [29:0]s_axis_video_tdata;
  input S_AXI_AWVALID;
  input S_AXI_WVALID;
  input S_AXI_ARVALID;
  input AxiLiteClk;
  input [2:0]S_AXI_WDATA;
  input StreamClk;
  input s_axis_video_tvalid;
  input m_axis_video_tready;
  input [0:0]S_AXI_WSTRB;
  input s_axis_video_tlast;
  input sStreamReset_n;
  input s_axis_video_tuser;
  input aAxiLiteReset_n;
  input S_AXI_BREADY;
  input S_AXI_RREADY;
  input [0:0]S_AXI_AWADDR;

  wire AxiLiteClk;
  wire \GammaStorageCoefsGeneration[2].StoredGammaCoefsInst_n_0 ;
  wire S_AXI_ARREADY;
  wire S_AXI_ARVALID;
  wire [0:0]S_AXI_AWADDR;
  wire S_AXI_AWREADY;
  wire S_AXI_AWVALID;
  wire S_AXI_BREADY;
  wire S_AXI_BVALID;
  wire S_AXI_RREADY;
  wire S_AXI_RVALID;
  wire [2:0]S_AXI_WDATA;
  wire S_AXI_WREADY;
  wire [0:0]S_AXI_WSTRB;
  wire S_AXI_WVALID;
  wire StreamClk;
  wire aAxiLiteReset_n;
  wire axi_arready_i_1_n_0;
  wire [2:2]axi_awaddr;
  wire \axi_awaddr[2]_i_1_n_0 ;
  wire axi_awready0__0;
  wire axi_awready_i_1_n_0;
  wire axi_bvalid_i_1_n_0;
  wire axi_rvalid_i_1_n_0;
  wire axi_wready_i_1_n_0;
  wire [23:0]m_axis_video_tdata;
  wire m_axis_video_tlast;
  wire m_axis_video_tlast_i_1_n_0;
  wire m_axis_video_tready;
  wire m_axis_video_tuser;
  wire m_axis_video_tuser_i_1_n_0;
  wire m_axis_video_tvalid;
  wire [0:0]p_1_in;
  wire sAXI_OutputValid_i_1_n_0;
  wire [2:0]sGammaReg;
  wire \sGammaReg[0]_i_1_n_0 ;
  wire \sGammaReg[1]_i_1_n_0 ;
  wire \sGammaReg[2]_i_1_n_0 ;
  wire sStreamReset_n;
  wire [29:0]s_axis_video_tdata;
  wire s_axis_video_tlast;
  wire s_axis_video_tuser;
  wire s_axis_video_tvalid;

  system_AXI_GammaCorrection_0_0_StoredGammaCoefs \GammaStorageCoefsGeneration[0].StoredGammaCoefsInst 
       (.E(\GammaStorageCoefsGeneration[2].StoredGammaCoefsInst_n_0 ),
        .StreamClk(StreamClk),
        .m_axis_video_tdata(m_axis_video_tdata[7:0]),
        .sGammaReg(sGammaReg),
        .s_axis_video_tdata(s_axis_video_tdata[9:0]));
  system_AXI_GammaCorrection_0_0_StoredGammaCoefs_0 \GammaStorageCoefsGeneration[1].StoredGammaCoefsInst 
       (.E(\GammaStorageCoefsGeneration[2].StoredGammaCoefsInst_n_0 ),
        .StreamClk(StreamClk),
        .m_axis_video_tdata(m_axis_video_tdata[15:8]),
        .sGammaReg(sGammaReg),
        .s_axis_video_tdata(s_axis_video_tdata[19:10]));
  system_AXI_GammaCorrection_0_0_StoredGammaCoefs_1 \GammaStorageCoefsGeneration[2].StoredGammaCoefsInst 
       (.E(\GammaStorageCoefsGeneration[2].StoredGammaCoefsInst_n_0 ),
        .StreamClk(StreamClk),
        .m_axis_video_tdata(m_axis_video_tdata[23:16]),
        .m_axis_video_tready(m_axis_video_tready),
        .sGammaReg(sGammaReg),
        .s_axis_video_tdata(s_axis_video_tdata[29:20]),
        .s_axis_video_tvalid(s_axis_video_tvalid));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT2 #(
    .INIT(4'h2)) 
    axi_arready_i_1
       (.I0(S_AXI_ARVALID),
        .I1(S_AXI_ARREADY),
        .O(axi_arready_i_1_n_0));
  FDRE axi_arready_reg
       (.C(AxiLiteClk),
        .CE(1'b1),
        .D(axi_arready_i_1_n_0),
        .Q(S_AXI_ARREADY),
        .R(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT5 #(
    .INIT(32'hEFFF2000)) 
    \axi_awaddr[2]_i_1 
       (.I0(S_AXI_AWADDR),
        .I1(S_AXI_AWREADY),
        .I2(S_AXI_AWVALID),
        .I3(S_AXI_WVALID),
        .I4(axi_awaddr),
        .O(\axi_awaddr[2]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[2] 
       (.C(AxiLiteClk),
        .CE(1'b1),
        .D(\axi_awaddr[2]_i_1_n_0 ),
        .Q(axi_awaddr),
        .R(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT3 #(
    .INIT(8'h40)) 
    axi_awready0
       (.I0(S_AXI_AWREADY),
        .I1(S_AXI_AWVALID),
        .I2(S_AXI_WVALID),
        .O(axi_awready0__0));
  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1
       (.I0(aAxiLiteReset_n),
        .O(axi_awready_i_1_n_0));
  FDRE axi_awready_reg
       (.C(AxiLiteClk),
        .CE(1'b1),
        .D(axi_awready0__0),
        .Q(S_AXI_AWREADY),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000FFFF80008000)) 
    axi_bvalid_i_1
       (.I0(S_AXI_AWVALID),
        .I1(S_AXI_WVALID),
        .I2(S_AXI_WREADY),
        .I3(S_AXI_AWREADY),
        .I4(S_AXI_BREADY),
        .I5(S_AXI_BVALID),
        .O(axi_bvalid_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(AxiLiteClk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(S_AXI_BVALID),
        .R(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT4 #(
    .INIT(16'h0F88)) 
    axi_rvalid_i_1
       (.I0(S_AXI_ARREADY),
        .I1(S_AXI_ARVALID),
        .I2(S_AXI_RREADY),
        .I3(S_AXI_RVALID),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(AxiLiteClk),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(S_AXI_RVALID),
        .R(axi_awready_i_1_n_0));
  LUT3 #(
    .INIT(8'h40)) 
    axi_wready_i_1
       (.I0(S_AXI_WREADY),
        .I1(S_AXI_AWVALID),
        .I2(S_AXI_WVALID),
        .O(axi_wready_i_1_n_0));
  FDRE axi_wready_reg
       (.C(AxiLiteClk),
        .CE(1'b1),
        .D(axi_wready_i_1_n_0),
        .Q(S_AXI_WREADY),
        .R(axi_awready_i_1_n_0));
  LUT5 #(
    .INIT(32'hEA2A0000)) 
    m_axis_video_tlast_i_1
       (.I0(m_axis_video_tlast),
        .I1(m_axis_video_tready),
        .I2(s_axis_video_tvalid),
        .I3(s_axis_video_tlast),
        .I4(sStreamReset_n),
        .O(m_axis_video_tlast_i_1_n_0));
  FDRE m_axis_video_tlast_reg
       (.C(StreamClk),
        .CE(1'b1),
        .D(m_axis_video_tlast_i_1_n_0),
        .Q(m_axis_video_tlast),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hEA2A0000)) 
    m_axis_video_tuser_i_1
       (.I0(m_axis_video_tuser),
        .I1(m_axis_video_tready),
        .I2(s_axis_video_tvalid),
        .I3(s_axis_video_tuser),
        .I4(sStreamReset_n),
        .O(m_axis_video_tuser_i_1_n_0));
  FDRE m_axis_video_tuser_reg
       (.C(StreamClk),
        .CE(1'b1),
        .D(m_axis_video_tuser_i_1_n_0),
        .Q(m_axis_video_tuser),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hE200)) 
    sAXI_OutputValid_i_1
       (.I0(m_axis_video_tvalid),
        .I1(m_axis_video_tready),
        .I2(s_axis_video_tvalid),
        .I3(sStreamReset_n),
        .O(sAXI_OutputValid_i_1_n_0));
  FDRE sAXI_OutputValid_reg
       (.C(StreamClk),
        .CE(1'b1),
        .D(sAXI_OutputValid_i_1_n_0),
        .Q(m_axis_video_tvalid),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sGammaReg[0]_i_1 
       (.I0(S_AXI_WDATA[0]),
        .I1(p_1_in),
        .I2(sGammaReg[0]),
        .O(\sGammaReg[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \sGammaReg[1]_i_1 
       (.I0(S_AXI_WDATA[1]),
        .I1(p_1_in),
        .I2(sGammaReg[1]),
        .O(\sGammaReg[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sGammaReg[2]_i_1 
       (.I0(S_AXI_WDATA[2]),
        .I1(p_1_in),
        .I2(sGammaReg[2]),
        .O(\sGammaReg[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \sGammaReg[2]_i_2 
       (.I0(S_AXI_WSTRB),
        .I1(S_AXI_AWVALID),
        .I2(S_AXI_WVALID),
        .I3(S_AXI_WREADY),
        .I4(S_AXI_AWREADY),
        .I5(axi_awaddr),
        .O(p_1_in));
  FDRE \sGammaReg_reg[0] 
       (.C(AxiLiteClk),
        .CE(1'b1),
        .D(\sGammaReg[0]_i_1_n_0 ),
        .Q(sGammaReg[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \sGammaReg_reg[1] 
       (.C(AxiLiteClk),
        .CE(1'b1),
        .D(\sGammaReg[1]_i_1_n_0 ),
        .Q(sGammaReg[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \sGammaReg_reg[2] 
       (.C(AxiLiteClk),
        .CE(1'b1),
        .D(\sGammaReg[2]_i_1_n_0 ),
        .Q(sGammaReg[2]),
        .R(axi_awready_i_1_n_0));
endmodule

(* ORIG_REF_NAME = "StoredGammaCoefs" *) 
module system_AXI_GammaCorrection_0_0_StoredGammaCoefs
   (m_axis_video_tdata,
    s_axis_video_tdata,
    sGammaReg,
    E,
    StreamClk);
  output [7:0]m_axis_video_tdata;
  input [9:0]s_axis_video_tdata;
  input [2:0]sGammaReg;
  input [0:0]E;
  input StreamClk;

  wire [0:0]E;
  wire StreamClk;
  wire [7:0]m_axis_video_tdata;
  wire [7:0]p_0_in;
  wire [6:0]p_0_out;
  wire \rStoredData[0]_i_100_n_0 ;
  wire \rStoredData[0]_i_101_n_0 ;
  wire \rStoredData[0]_i_102_n_0 ;
  wire \rStoredData[0]_i_103_n_0 ;
  wire \rStoredData[0]_i_104_n_0 ;
  wire \rStoredData[0]_i_105_n_0 ;
  wire \rStoredData[0]_i_106_n_0 ;
  wire \rStoredData[0]_i_107_n_0 ;
  wire \rStoredData[0]_i_108_n_0 ;
  wire \rStoredData[0]_i_109_n_0 ;
  wire \rStoredData[0]_i_10_n_0 ;
  wire \rStoredData[0]_i_110_n_0 ;
  wire \rStoredData[0]_i_111_n_0 ;
  wire \rStoredData[0]_i_112_n_0 ;
  wire \rStoredData[0]_i_113_n_0 ;
  wire \rStoredData[0]_i_114_n_0 ;
  wire \rStoredData[0]_i_115_n_0 ;
  wire \rStoredData[0]_i_116_n_0 ;
  wire \rStoredData[0]_i_117_n_0 ;
  wire \rStoredData[0]_i_118_n_0 ;
  wire \rStoredData[0]_i_31_n_0 ;
  wire \rStoredData[0]_i_32_n_0 ;
  wire \rStoredData[0]_i_33_n_0 ;
  wire \rStoredData[0]_i_34_n_0 ;
  wire \rStoredData[0]_i_35_n_0 ;
  wire \rStoredData[0]_i_36_n_0 ;
  wire \rStoredData[0]_i_37_n_0 ;
  wire \rStoredData[0]_i_38_n_0 ;
  wire \rStoredData[0]_i_39_n_0 ;
  wire \rStoredData[0]_i_3_n_0 ;
  wire \rStoredData[0]_i_40_n_0 ;
  wire \rStoredData[0]_i_41_n_0 ;
  wire \rStoredData[0]_i_42_n_0 ;
  wire \rStoredData[0]_i_43_n_0 ;
  wire \rStoredData[0]_i_44_n_0 ;
  wire \rStoredData[0]_i_45_n_0 ;
  wire \rStoredData[0]_i_46_n_0 ;
  wire \rStoredData[0]_i_71_n_0 ;
  wire \rStoredData[0]_i_72_n_0 ;
  wire \rStoredData[0]_i_73_n_0 ;
  wire \rStoredData[0]_i_74_n_0 ;
  wire \rStoredData[0]_i_75_n_0 ;
  wire \rStoredData[0]_i_76_n_0 ;
  wire \rStoredData[0]_i_77_n_0 ;
  wire \rStoredData[0]_i_78_n_0 ;
  wire \rStoredData[0]_i_79_n_0 ;
  wire \rStoredData[0]_i_80_n_0 ;
  wire \rStoredData[0]_i_81_n_0 ;
  wire \rStoredData[0]_i_82_n_0 ;
  wire \rStoredData[0]_i_83_n_0 ;
  wire \rStoredData[0]_i_84_n_0 ;
  wire \rStoredData[0]_i_85_n_0 ;
  wire \rStoredData[0]_i_86_n_0 ;
  wire \rStoredData[0]_i_87_n_0 ;
  wire \rStoredData[0]_i_88_n_0 ;
  wire \rStoredData[0]_i_89_n_0 ;
  wire \rStoredData[0]_i_8_n_0 ;
  wire \rStoredData[0]_i_90_n_0 ;
  wire \rStoredData[0]_i_91_n_0 ;
  wire \rStoredData[0]_i_92_n_0 ;
  wire \rStoredData[0]_i_93_n_0 ;
  wire \rStoredData[0]_i_94_n_0 ;
  wire \rStoredData[0]_i_95_n_0 ;
  wire \rStoredData[0]_i_96_n_0 ;
  wire \rStoredData[0]_i_97_n_0 ;
  wire \rStoredData[0]_i_98_n_0 ;
  wire \rStoredData[0]_i_99_n_0 ;
  wire \rStoredData[0]_i_9_n_0 ;
  wire \rStoredData[1]_i_100_n_0 ;
  wire \rStoredData[1]_i_101_n_0 ;
  wire \rStoredData[1]_i_102_n_0 ;
  wire \rStoredData[1]_i_103_n_0 ;
  wire \rStoredData[1]_i_104_n_0 ;
  wire \rStoredData[1]_i_105_n_0 ;
  wire \rStoredData[1]_i_106_n_0 ;
  wire \rStoredData[1]_i_107_n_0 ;
  wire \rStoredData[1]_i_108_n_0 ;
  wire \rStoredData[1]_i_109_n_0 ;
  wire \rStoredData[1]_i_10_n_0 ;
  wire \rStoredData[1]_i_110_n_0 ;
  wire \rStoredData[1]_i_111_n_0 ;
  wire \rStoredData[1]_i_112_n_0 ;
  wire \rStoredData[1]_i_113_n_0 ;
  wire \rStoredData[1]_i_114_n_0 ;
  wire \rStoredData[1]_i_115_n_0 ;
  wire \rStoredData[1]_i_116_n_0 ;
  wire \rStoredData[1]_i_11_n_0 ;
  wire \rStoredData[1]_i_12_n_0 ;
  wire \rStoredData[1]_i_13_n_0 ;
  wire \rStoredData[1]_i_14_n_0 ;
  wire \rStoredData[1]_i_33_n_0 ;
  wire \rStoredData[1]_i_34_n_0 ;
  wire \rStoredData[1]_i_35_n_0 ;
  wire \rStoredData[1]_i_36_n_0 ;
  wire \rStoredData[1]_i_37_n_0 ;
  wire \rStoredData[1]_i_38_n_0 ;
  wire \rStoredData[1]_i_39_n_0 ;
  wire \rStoredData[1]_i_3_n_0 ;
  wire \rStoredData[1]_i_40_n_0 ;
  wire \rStoredData[1]_i_41_n_0 ;
  wire \rStoredData[1]_i_42_n_0 ;
  wire \rStoredData[1]_i_43_n_0 ;
  wire \rStoredData[1]_i_44_n_0 ;
  wire \rStoredData[1]_i_4_n_0 ;
  wire \rStoredData[1]_i_69_n_0 ;
  wire \rStoredData[1]_i_70_n_0 ;
  wire \rStoredData[1]_i_71_n_0 ;
  wire \rStoredData[1]_i_72_n_0 ;
  wire \rStoredData[1]_i_73_n_0 ;
  wire \rStoredData[1]_i_74_n_0 ;
  wire \rStoredData[1]_i_75_n_0 ;
  wire \rStoredData[1]_i_76_n_0 ;
  wire \rStoredData[1]_i_77_n_0 ;
  wire \rStoredData[1]_i_78_n_0 ;
  wire \rStoredData[1]_i_79_n_0 ;
  wire \rStoredData[1]_i_80_n_0 ;
  wire \rStoredData[1]_i_81_n_0 ;
  wire \rStoredData[1]_i_82_n_0 ;
  wire \rStoredData[1]_i_83_n_0 ;
  wire \rStoredData[1]_i_84_n_0 ;
  wire \rStoredData[1]_i_85_n_0 ;
  wire \rStoredData[1]_i_86_n_0 ;
  wire \rStoredData[1]_i_87_n_0 ;
  wire \rStoredData[1]_i_88_n_0 ;
  wire \rStoredData[1]_i_89_n_0 ;
  wire \rStoredData[1]_i_8_n_0 ;
  wire \rStoredData[1]_i_90_n_0 ;
  wire \rStoredData[1]_i_91_n_0 ;
  wire \rStoredData[1]_i_92_n_0 ;
  wire \rStoredData[1]_i_93_n_0 ;
  wire \rStoredData[1]_i_94_n_0 ;
  wire \rStoredData[1]_i_95_n_0 ;
  wire \rStoredData[1]_i_96_n_0 ;
  wire \rStoredData[1]_i_97_n_0 ;
  wire \rStoredData[1]_i_98_n_0 ;
  wire \rStoredData[1]_i_99_n_0 ;
  wire \rStoredData[1]_i_9_n_0 ;
  wire \rStoredData[2]_i_100_n_0 ;
  wire \rStoredData[2]_i_101_n_0 ;
  wire \rStoredData[2]_i_102_n_0 ;
  wire \rStoredData[2]_i_103_n_0 ;
  wire \rStoredData[2]_i_104_n_0 ;
  wire \rStoredData[2]_i_105_n_0 ;
  wire \rStoredData[2]_i_106_n_0 ;
  wire \rStoredData[2]_i_107_n_0 ;
  wire \rStoredData[2]_i_10_n_0 ;
  wire \rStoredData[2]_i_11_n_0 ;
  wire \rStoredData[2]_i_12_n_0 ;
  wire \rStoredData[2]_i_19_n_0 ;
  wire \rStoredData[2]_i_20_n_0 ;
  wire \rStoredData[2]_i_23_n_0 ;
  wire \rStoredData[2]_i_29_n_0 ;
  wire \rStoredData[2]_i_30_n_0 ;
  wire \rStoredData[2]_i_31_n_0 ;
  wire \rStoredData[2]_i_32_n_0 ;
  wire \rStoredData[2]_i_33_n_0 ;
  wire \rStoredData[2]_i_34_n_0 ;
  wire \rStoredData[2]_i_35_n_0 ;
  wire \rStoredData[2]_i_36_n_0 ;
  wire \rStoredData[2]_i_37_n_0 ;
  wire \rStoredData[2]_i_38_n_0 ;
  wire \rStoredData[2]_i_39_n_0 ;
  wire \rStoredData[2]_i_3_n_0 ;
  wire \rStoredData[2]_i_40_n_0 ;
  wire \rStoredData[2]_i_45_n_0 ;
  wire \rStoredData[2]_i_53_n_0 ;
  wire \rStoredData[2]_i_54_n_0 ;
  wire \rStoredData[2]_i_55_n_0 ;
  wire \rStoredData[2]_i_66_n_0 ;
  wire \rStoredData[2]_i_67_n_0 ;
  wire \rStoredData[2]_i_68_n_0 ;
  wire \rStoredData[2]_i_69_n_0 ;
  wire \rStoredData[2]_i_70_n_0 ;
  wire \rStoredData[2]_i_71_n_0 ;
  wire \rStoredData[2]_i_72_n_0 ;
  wire \rStoredData[2]_i_73_n_0 ;
  wire \rStoredData[2]_i_74_n_0 ;
  wire \rStoredData[2]_i_75_n_0 ;
  wire \rStoredData[2]_i_76_n_0 ;
  wire \rStoredData[2]_i_77_n_0 ;
  wire \rStoredData[2]_i_78_n_0 ;
  wire \rStoredData[2]_i_79_n_0 ;
  wire \rStoredData[2]_i_80_n_0 ;
  wire \rStoredData[2]_i_81_n_0 ;
  wire \rStoredData[2]_i_82_n_0 ;
  wire \rStoredData[2]_i_83_n_0 ;
  wire \rStoredData[2]_i_84_n_0 ;
  wire \rStoredData[2]_i_85_n_0 ;
  wire \rStoredData[2]_i_86_n_0 ;
  wire \rStoredData[2]_i_87_n_0 ;
  wire \rStoredData[2]_i_88_n_0 ;
  wire \rStoredData[2]_i_89_n_0 ;
  wire \rStoredData[2]_i_90_n_0 ;
  wire \rStoredData[2]_i_91_n_0 ;
  wire \rStoredData[2]_i_92_n_0 ;
  wire \rStoredData[2]_i_93_n_0 ;
  wire \rStoredData[2]_i_94_n_0 ;
  wire \rStoredData[2]_i_95_n_0 ;
  wire \rStoredData[2]_i_96_n_0 ;
  wire \rStoredData[2]_i_97_n_0 ;
  wire \rStoredData[2]_i_98_n_0 ;
  wire \rStoredData[2]_i_99_n_0 ;
  wire \rStoredData[2]_i_9_n_0 ;
  wire \rStoredData[3]_i_10_n_0 ;
  wire \rStoredData[3]_i_11_n_0 ;
  wire \rStoredData[3]_i_12_n_0 ;
  wire \rStoredData[3]_i_15_n_0 ;
  wire \rStoredData[3]_i_16_n_0 ;
  wire \rStoredData[3]_i_17_n_0 ;
  wire \rStoredData[3]_i_18_n_0 ;
  wire \rStoredData[3]_i_20_n_0 ;
  wire \rStoredData[3]_i_24_n_0 ;
  wire \rStoredData[3]_i_25_n_0 ;
  wire \rStoredData[3]_i_30_n_0 ;
  wire \rStoredData[3]_i_31_n_0 ;
  wire \rStoredData[3]_i_34_n_0 ;
  wire \rStoredData[3]_i_35_n_0 ;
  wire \rStoredData[3]_i_36_n_0 ;
  wire \rStoredData[3]_i_37_n_0 ;
  wire \rStoredData[3]_i_38_n_0 ;
  wire \rStoredData[3]_i_39_n_0 ;
  wire \rStoredData[3]_i_40_n_0 ;
  wire \rStoredData[3]_i_41_n_0 ;
  wire \rStoredData[3]_i_42_n_0 ;
  wire \rStoredData[3]_i_43__1_n_0 ;
  wire \rStoredData[3]_i_44__1_n_0 ;
  wire \rStoredData[3]_i_45__1_n_0 ;
  wire \rStoredData[3]_i_46_n_0 ;
  wire \rStoredData[3]_i_47__1_n_0 ;
  wire \rStoredData[3]_i_4_n_0 ;
  wire \rStoredData[3]_i_50_n_0 ;
  wire \rStoredData[3]_i_51__1_n_0 ;
  wire \rStoredData[3]_i_52__1_n_0 ;
  wire \rStoredData[3]_i_55_n_0 ;
  wire \rStoredData[3]_i_56_n_0 ;
  wire \rStoredData[3]_i_59_n_0 ;
  wire \rStoredData[3]_i_5_n_0 ;
  wire \rStoredData[3]_i_60_n_0 ;
  wire \rStoredData[3]_i_61_n_0 ;
  wire \rStoredData[3]_i_62_n_0 ;
  wire \rStoredData[3]_i_63_n_0 ;
  wire \rStoredData[3]_i_64_n_0 ;
  wire \rStoredData[3]_i_65_n_0 ;
  wire \rStoredData[3]_i_66_n_0 ;
  wire \rStoredData[3]_i_67_n_0 ;
  wire \rStoredData[3]_i_68_n_0 ;
  wire \rStoredData[3]_i_69_n_0 ;
  wire \rStoredData[3]_i_6_n_0 ;
  wire \rStoredData[3]_i_70_n_0 ;
  wire \rStoredData[3]_i_71_n_0 ;
  wire \rStoredData[3]_i_72_n_0 ;
  wire \rStoredData[3]_i_73__1_n_0 ;
  wire \rStoredData[3]_i_74_n_0 ;
  wire \rStoredData[3]_i_75_n_0 ;
  wire \rStoredData[3]_i_76_n_0 ;
  wire \rStoredData[3]_i_77_n_0 ;
  wire \rStoredData[3]_i_78_n_0 ;
  wire \rStoredData[3]_i_79_n_0 ;
  wire \rStoredData[3]_i_7_n_0 ;
  wire \rStoredData[3]_i_80_n_0 ;
  wire \rStoredData[3]_i_81_n_0 ;
  wire \rStoredData[3]_i_82_n_0 ;
  wire \rStoredData[3]_i_83_n_0 ;
  wire \rStoredData[3]_i_84_n_0 ;
  wire \rStoredData[3]_i_85_n_0 ;
  wire \rStoredData[3]_i_86_n_0 ;
  wire \rStoredData[3]_i_87_n_0 ;
  wire \rStoredData[3]_i_88_n_0 ;
  wire \rStoredData[3]_i_89_n_0 ;
  wire \rStoredData[3]_i_8_n_0 ;
  wire \rStoredData[3]_i_9_n_0 ;
  wire \rStoredData[4]_i_12__1_n_0 ;
  wire \rStoredData[4]_i_13__1_n_0 ;
  wire \rStoredData[4]_i_14__1_n_0 ;
  wire \rStoredData[4]_i_15_n_0 ;
  wire \rStoredData[4]_i_17__1_n_0 ;
  wire \rStoredData[4]_i_18_n_0 ;
  wire \rStoredData[4]_i_25_n_0 ;
  wire \rStoredData[4]_i_26_n_0 ;
  wire \rStoredData[4]_i_27_n_0 ;
  wire \rStoredData[4]_i_28_n_0 ;
  wire \rStoredData[4]_i_29_n_0 ;
  wire \rStoredData[4]_i_30_n_0 ;
  wire \rStoredData[4]_i_31_n_0 ;
  wire \rStoredData[4]_i_32_n_0 ;
  wire \rStoredData[4]_i_33_n_0 ;
  wire \rStoredData[4]_i_34_n_0 ;
  wire \rStoredData[4]_i_35_n_0 ;
  wire \rStoredData[4]_i_36_n_0 ;
  wire \rStoredData[4]_i_37_n_0 ;
  wire \rStoredData[4]_i_38_n_0 ;
  wire \rStoredData[4]_i_39_n_0 ;
  wire \rStoredData[4]_i_40_n_0 ;
  wire \rStoredData[4]_i_41_n_0 ;
  wire \rStoredData[4]_i_42_n_0 ;
  wire \rStoredData[4]_i_43_n_0 ;
  wire \rStoredData[4]_i_44_n_0 ;
  wire \rStoredData[4]_i_45_n_0 ;
  wire \rStoredData[4]_i_46_n_0 ;
  wire \rStoredData[4]_i_47_n_0 ;
  wire \rStoredData[4]_i_48_n_0 ;
  wire \rStoredData[4]_i_49_n_0 ;
  wire \rStoredData[4]_i_4_n_0 ;
  wire \rStoredData[4]_i_50_n_0 ;
  wire \rStoredData[4]_i_51__1_n_0 ;
  wire \rStoredData[4]_i_52__1_n_0 ;
  wire \rStoredData[4]_i_53_n_0 ;
  wire \rStoredData[4]_i_54_n_0 ;
  wire \rStoredData[4]_i_55_n_0 ;
  wire \rStoredData[4]_i_56_n_0 ;
  wire \rStoredData[4]_i_57_n_0 ;
  wire \rStoredData[4]_i_58_n_0 ;
  wire \rStoredData[4]_i_59_n_0 ;
  wire \rStoredData[4]_i_5_n_0 ;
  wire \rStoredData[4]_i_60__1_n_0 ;
  wire \rStoredData[4]_i_61__1_n_0 ;
  wire \rStoredData[4]_i_6_n_0 ;
  wire \rStoredData[4]_i_7_n_0 ;
  wire \rStoredData[4]_i_8_n_0 ;
  wire \rStoredData[5]_i_10_n_0 ;
  wire \rStoredData[5]_i_12_n_0 ;
  wire \rStoredData[5]_i_14__1_n_0 ;
  wire \rStoredData[5]_i_15__1_n_0 ;
  wire \rStoredData[5]_i_16_n_0 ;
  wire \rStoredData[5]_i_17_n_0 ;
  wire \rStoredData[5]_i_18_n_0 ;
  wire \rStoredData[5]_i_19_n_0 ;
  wire \rStoredData[5]_i_20_n_0 ;
  wire \rStoredData[5]_i_21_n_0 ;
  wire \rStoredData[5]_i_22__1_n_0 ;
  wire \rStoredData[5]_i_23_n_0 ;
  wire \rStoredData[5]_i_24_n_0 ;
  wire \rStoredData[5]_i_25_n_0 ;
  wire \rStoredData[5]_i_26_n_0 ;
  wire \rStoredData[5]_i_27_n_0 ;
  wire \rStoredData[5]_i_28_n_0 ;
  wire \rStoredData[5]_i_29_n_0 ;
  wire \rStoredData[5]_i_30__1_n_0 ;
  wire \rStoredData[5]_i_31_n_0 ;
  wire \rStoredData[5]_i_32__1_n_0 ;
  wire \rStoredData[5]_i_33__1_n_0 ;
  wire \rStoredData[5]_i_34__1_n_0 ;
  wire \rStoredData[5]_i_35__1_n_0 ;
  wire \rStoredData[5]_i_36_n_0 ;
  wire \rStoredData[5]_i_3_n_0 ;
  wire \rStoredData[5]_i_4_n_0 ;
  wire \rStoredData[5]_i_5_n_0 ;
  wire \rStoredData[5]_i_6_n_0 ;
  wire \rStoredData[5]_i_7_n_0 ;
  wire \rStoredData[5]_i_8_n_0 ;
  wire \rStoredData[5]_i_9_n_0 ;
  wire \rStoredData[6]_i_10_n_0 ;
  wire \rStoredData[6]_i_11_n_0 ;
  wire \rStoredData[6]_i_12__1_n_0 ;
  wire \rStoredData[6]_i_13__1_n_0 ;
  wire \rStoredData[6]_i_14_n_0 ;
  wire \rStoredData[6]_i_15_n_0 ;
  wire \rStoredData[6]_i_16_n_0 ;
  wire \rStoredData[6]_i_17__1_n_0 ;
  wire \rStoredData[6]_i_18__1_n_0 ;
  wire \rStoredData[6]_i_19_n_0 ;
  wire \rStoredData[6]_i_3__1_n_0 ;
  wire \rStoredData[6]_i_4_n_0 ;
  wire \rStoredData[6]_i_5_n_0 ;
  wire \rStoredData[6]_i_6_n_0 ;
  wire \rStoredData[6]_i_7_n_0 ;
  wire \rStoredData[6]_i_8_n_0 ;
  wire \rStoredData[6]_i_9_n_0 ;
  wire \rStoredData[7]_i_10__1_n_0 ;
  wire \rStoredData[7]_i_2_n_0 ;
  wire \rStoredData[7]_i_3__0_n_0 ;
  wire \rStoredData[7]_i_4__1_n_0 ;
  wire \rStoredData[7]_i_5_n_0 ;
  wire \rStoredData[7]_i_6_n_0 ;
  wire \rStoredData[7]_i_7_n_0 ;
  wire \rStoredData[7]_i_8_n_0 ;
  wire \rStoredData[7]_i_9__1_n_0 ;
  wire \rStoredData_reg[0]_i_11_n_0 ;
  wire \rStoredData_reg[0]_i_12_n_0 ;
  wire \rStoredData_reg[0]_i_13_n_0 ;
  wire \rStoredData_reg[0]_i_14_n_0 ;
  wire \rStoredData_reg[0]_i_15_n_0 ;
  wire \rStoredData_reg[0]_i_16_n_0 ;
  wire \rStoredData_reg[0]_i_17_n_0 ;
  wire \rStoredData_reg[0]_i_18_n_0 ;
  wire \rStoredData_reg[0]_i_19_n_0 ;
  wire \rStoredData_reg[0]_i_20_n_0 ;
  wire \rStoredData_reg[0]_i_21_n_0 ;
  wire \rStoredData_reg[0]_i_22_n_0 ;
  wire \rStoredData_reg[0]_i_23_n_0 ;
  wire \rStoredData_reg[0]_i_24_n_0 ;
  wire \rStoredData_reg[0]_i_25_n_0 ;
  wire \rStoredData_reg[0]_i_26_n_0 ;
  wire \rStoredData_reg[0]_i_27_n_0 ;
  wire \rStoredData_reg[0]_i_28_n_0 ;
  wire \rStoredData_reg[0]_i_29_n_0 ;
  wire \rStoredData_reg[0]_i_30_n_0 ;
  wire \rStoredData_reg[0]_i_47_n_0 ;
  wire \rStoredData_reg[0]_i_48_n_0 ;
  wire \rStoredData_reg[0]_i_49_n_0 ;
  wire \rStoredData_reg[0]_i_4_n_0 ;
  wire \rStoredData_reg[0]_i_50_n_0 ;
  wire \rStoredData_reg[0]_i_51_n_0 ;
  wire \rStoredData_reg[0]_i_52_n_0 ;
  wire \rStoredData_reg[0]_i_53_n_0 ;
  wire \rStoredData_reg[0]_i_54_n_0 ;
  wire \rStoredData_reg[0]_i_55_n_0 ;
  wire \rStoredData_reg[0]_i_56_n_0 ;
  wire \rStoredData_reg[0]_i_57_n_0 ;
  wire \rStoredData_reg[0]_i_58_n_0 ;
  wire \rStoredData_reg[0]_i_59_n_0 ;
  wire \rStoredData_reg[0]_i_5_n_0 ;
  wire \rStoredData_reg[0]_i_60_n_0 ;
  wire \rStoredData_reg[0]_i_61_n_0 ;
  wire \rStoredData_reg[0]_i_62_n_0 ;
  wire \rStoredData_reg[0]_i_63_n_0 ;
  wire \rStoredData_reg[0]_i_64_n_0 ;
  wire \rStoredData_reg[0]_i_65_n_0 ;
  wire \rStoredData_reg[0]_i_66_n_0 ;
  wire \rStoredData_reg[0]_i_67_n_0 ;
  wire \rStoredData_reg[0]_i_68_n_0 ;
  wire \rStoredData_reg[0]_i_69_n_0 ;
  wire \rStoredData_reg[0]_i_6_n_0 ;
  wire \rStoredData_reg[0]_i_70_n_0 ;
  wire \rStoredData_reg[0]_i_7_n_0 ;
  wire \rStoredData_reg[1]_i_15_n_0 ;
  wire \rStoredData_reg[1]_i_16_n_0 ;
  wire \rStoredData_reg[1]_i_17_n_0 ;
  wire \rStoredData_reg[1]_i_18_n_0 ;
  wire \rStoredData_reg[1]_i_19_n_0 ;
  wire \rStoredData_reg[1]_i_20_n_0 ;
  wire \rStoredData_reg[1]_i_21_n_0 ;
  wire \rStoredData_reg[1]_i_22_n_0 ;
  wire \rStoredData_reg[1]_i_23_n_0 ;
  wire \rStoredData_reg[1]_i_24_n_0 ;
  wire \rStoredData_reg[1]_i_25_n_0 ;
  wire \rStoredData_reg[1]_i_26_n_0 ;
  wire \rStoredData_reg[1]_i_27_n_0 ;
  wire \rStoredData_reg[1]_i_28_n_0 ;
  wire \rStoredData_reg[1]_i_29_n_0 ;
  wire \rStoredData_reg[1]_i_30_n_0 ;
  wire \rStoredData_reg[1]_i_31_n_0 ;
  wire \rStoredData_reg[1]_i_32_n_0 ;
  wire \rStoredData_reg[1]_i_45_n_0 ;
  wire \rStoredData_reg[1]_i_46_n_0 ;
  wire \rStoredData_reg[1]_i_47_n_0 ;
  wire \rStoredData_reg[1]_i_48_n_0 ;
  wire \rStoredData_reg[1]_i_49_n_0 ;
  wire \rStoredData_reg[1]_i_50_n_0 ;
  wire \rStoredData_reg[1]_i_51_n_0 ;
  wire \rStoredData_reg[1]_i_52_n_0 ;
  wire \rStoredData_reg[1]_i_53_n_0 ;
  wire \rStoredData_reg[1]_i_54_n_0 ;
  wire \rStoredData_reg[1]_i_55_n_0 ;
  wire \rStoredData_reg[1]_i_56_n_0 ;
  wire \rStoredData_reg[1]_i_57_n_0 ;
  wire \rStoredData_reg[1]_i_58_n_0 ;
  wire \rStoredData_reg[1]_i_59_n_0 ;
  wire \rStoredData_reg[1]_i_5_n_0 ;
  wire \rStoredData_reg[1]_i_60_n_0 ;
  wire \rStoredData_reg[1]_i_61_n_0 ;
  wire \rStoredData_reg[1]_i_62_n_0 ;
  wire \rStoredData_reg[1]_i_63_n_0 ;
  wire \rStoredData_reg[1]_i_64_n_0 ;
  wire \rStoredData_reg[1]_i_65_n_0 ;
  wire \rStoredData_reg[1]_i_66_n_0 ;
  wire \rStoredData_reg[1]_i_67_n_0 ;
  wire \rStoredData_reg[1]_i_68_n_0 ;
  wire \rStoredData_reg[1]_i_6_n_0 ;
  wire \rStoredData_reg[1]_i_7_n_0 ;
  wire \rStoredData_reg[2]_i_13_n_0 ;
  wire \rStoredData_reg[2]_i_14_n_0 ;
  wire \rStoredData_reg[2]_i_15_n_0 ;
  wire \rStoredData_reg[2]_i_16_n_0 ;
  wire \rStoredData_reg[2]_i_17_n_0 ;
  wire \rStoredData_reg[2]_i_18_n_0 ;
  wire \rStoredData_reg[2]_i_21_n_0 ;
  wire \rStoredData_reg[2]_i_22_n_0 ;
  wire \rStoredData_reg[2]_i_24_n_0 ;
  wire \rStoredData_reg[2]_i_25_n_0 ;
  wire \rStoredData_reg[2]_i_26_n_0 ;
  wire \rStoredData_reg[2]_i_27_n_0 ;
  wire \rStoredData_reg[2]_i_28_n_0 ;
  wire \rStoredData_reg[2]_i_41_n_0 ;
  wire \rStoredData_reg[2]_i_42_n_0 ;
  wire \rStoredData_reg[2]_i_43_n_0 ;
  wire \rStoredData_reg[2]_i_44_n_0 ;
  wire \rStoredData_reg[2]_i_46_n_0 ;
  wire \rStoredData_reg[2]_i_47_n_0 ;
  wire \rStoredData_reg[2]_i_48_n_0 ;
  wire \rStoredData_reg[2]_i_49_n_0 ;
  wire \rStoredData_reg[2]_i_4_n_0 ;
  wire \rStoredData_reg[2]_i_50_n_0 ;
  wire \rStoredData_reg[2]_i_51_n_0 ;
  wire \rStoredData_reg[2]_i_52_n_0 ;
  wire \rStoredData_reg[2]_i_56_n_0 ;
  wire \rStoredData_reg[2]_i_57_n_0 ;
  wire \rStoredData_reg[2]_i_58_n_0 ;
  wire \rStoredData_reg[2]_i_59_n_0 ;
  wire \rStoredData_reg[2]_i_5_n_0 ;
  wire \rStoredData_reg[2]_i_60_n_0 ;
  wire \rStoredData_reg[2]_i_61_n_0 ;
  wire \rStoredData_reg[2]_i_62_n_0 ;
  wire \rStoredData_reg[2]_i_63_n_0 ;
  wire \rStoredData_reg[2]_i_64_n_0 ;
  wire \rStoredData_reg[2]_i_65_n_0 ;
  wire \rStoredData_reg[2]_i_6_n_0 ;
  wire \rStoredData_reg[2]_i_7_n_0 ;
  wire \rStoredData_reg[2]_i_8_n_0 ;
  wire \rStoredData_reg[3]_i_13_n_0 ;
  wire \rStoredData_reg[3]_i_14_n_0 ;
  wire \rStoredData_reg[3]_i_19_n_0 ;
  wire \rStoredData_reg[3]_i_21_n_0 ;
  wire \rStoredData_reg[3]_i_22_n_0 ;
  wire \rStoredData_reg[3]_i_23_n_0 ;
  wire \rStoredData_reg[3]_i_26_n_0 ;
  wire \rStoredData_reg[3]_i_27_n_0 ;
  wire \rStoredData_reg[3]_i_28_n_0 ;
  wire \rStoredData_reg[3]_i_29_n_0 ;
  wire \rStoredData_reg[3]_i_32_n_0 ;
  wire \rStoredData_reg[3]_i_33_n_0 ;
  wire \rStoredData_reg[3]_i_3_n_0 ;
  wire \rStoredData_reg[3]_i_48_n_0 ;
  wire \rStoredData_reg[3]_i_49_n_0 ;
  wire \rStoredData_reg[3]_i_53_n_0 ;
  wire \rStoredData_reg[3]_i_54_n_0 ;
  wire \rStoredData_reg[3]_i_57_n_0 ;
  wire \rStoredData_reg[3]_i_58_n_0 ;
  wire \rStoredData_reg[4]_i_10_n_0 ;
  wire \rStoredData_reg[4]_i_11_n_0 ;
  wire \rStoredData_reg[4]_i_16_n_0 ;
  wire \rStoredData_reg[4]_i_19_n_0 ;
  wire \rStoredData_reg[4]_i_20_n_0 ;
  wire \rStoredData_reg[4]_i_21_n_0 ;
  wire \rStoredData_reg[4]_i_22_n_0 ;
  wire \rStoredData_reg[4]_i_23_n_0 ;
  wire \rStoredData_reg[4]_i_24_n_0 ;
  wire \rStoredData_reg[4]_i_2_n_0 ;
  wire \rStoredData_reg[4]_i_3_n_0 ;
  wire \rStoredData_reg[4]_i_9_n_0 ;
  wire \rStoredData_reg[5]_i_11_n_0 ;
  wire \rStoredData_reg[5]_i_13_n_0 ;
  wire [2:0]sGammaReg;
  wire [9:0]s_axis_video_tdata;

  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \rStoredData[0]_i_1 
       (.I0(p_0_out[0]),
        .I1(\rStoredData[0]_i_3_n_0 ),
        .I2(sGammaReg[2]),
        .O(p_0_in[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rStoredData[0]_i_10 
       (.I0(\rStoredData_reg[0]_i_27_n_0 ),
        .I1(\rStoredData_reg[0]_i_28_n_0 ),
        .I2(s_axis_video_tdata[9]),
        .I3(\rStoredData_reg[0]_i_29_n_0 ),
        .I4(s_axis_video_tdata[8]),
        .I5(\rStoredData_reg[0]_i_30_n_0 ),
        .O(\rStoredData[0]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h10518A88EEAE75F7)) 
    \rStoredData[0]_i_100 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[3]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[2]),
        .O(\rStoredData[0]_i_100_n_0 ));
  LUT6 #(
    .INIT(64'hCC633BCC4333CCC3)) 
    \rStoredData[0]_i_101 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[0]_i_101_n_0 ));
  LUT6 #(
    .INIT(64'h7655571591A888EA)) 
    \rStoredData[0]_i_102 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[0]),
        .I5(s_axis_video_tdata[2]),
        .O(\rStoredData[0]_i_102_n_0 ));
  LUT6 #(
    .INIT(64'h3B999CC466233B99)) 
    \rStoredData[0]_i_103 
       (.I0(s_axis_video_tdata[6]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[0]_i_103_n_0 ));
  LUT6 #(
    .INIT(64'h99629D3BC499669C)) 
    \rStoredData[0]_i_104 
       (.I0(s_axis_video_tdata[6]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[3]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[2]),
        .O(\rStoredData[0]_i_104_n_0 ));
  LUT6 #(
    .INIT(64'h6E56A866996E91A9)) 
    \rStoredData[0]_i_105 
       (.I0(s_axis_video_tdata[6]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[3]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[2]),
        .O(\rStoredData[0]_i_105_n_0 ));
  LUT6 #(
    .INIT(64'h8999177666E89999)) 
    \rStoredData[0]_i_106 
       (.I0(s_axis_video_tdata[6]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[0]_i_106_n_0 ));
  LUT6 #(
    .INIT(64'h665D999A26665999)) 
    \rStoredData[0]_i_107 
       (.I0(s_axis_video_tdata[6]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[0]_i_107_n_0 ));
  LUT6 #(
    .INIT(64'h269B66264D66994D)) 
    \rStoredData[0]_i_108 
       (.I0(s_axis_video_tdata[6]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[3]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[2]),
        .O(\rStoredData[0]_i_108_n_0 ));
  LUT6 #(
    .INIT(64'hD33332CCCCD93333)) 
    \rStoredData[0]_i_109 
       (.I0(s_axis_video_tdata[6]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[0]_i_109_n_0 ));
  LUT6 #(
    .INIT(64'h433333CCCCC33333)) 
    \rStoredData[0]_i_110 
       (.I0(s_axis_video_tdata[6]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[0]_i_110_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF40000000FD)) 
    \rStoredData[0]_i_111 
       (.I0(s_axis_video_tdata[6]),
        .I1(s_axis_video_tdata[3]),
        .I2(s_axis_video_tdata[4]),
        .I3(s_axis_video_tdata[0]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[2]),
        .O(\rStoredData[0]_i_111_n_0 ));
  LUT6 #(
    .INIT(64'h4F00FFFF30FF0000)) 
    \rStoredData[0]_i_112 
       (.I0(s_axis_video_tdata[3]),
        .I1(s_axis_video_tdata[0]),
        .I2(s_axis_video_tdata[4]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[6]),
        .I5(s_axis_video_tdata[2]),
        .O(\rStoredData[0]_i_112_n_0 ));
  LUT6 #(
    .INIT(64'h00CD204CFF33DFFB)) 
    \rStoredData[0]_i_113 
       (.I0(s_axis_video_tdata[6]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[3]),
        .I5(s_axis_video_tdata[2]),
        .O(\rStoredData[0]_i_113_n_0 ));
  LUT6 #(
    .INIT(64'hFE377F33038080C8)) 
    \rStoredData[0]_i_114 
       (.I0(s_axis_video_tdata[6]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[0]),
        .I5(s_axis_video_tdata[2]),
        .O(\rStoredData[0]_i_114_n_0 ));
  LUT6 #(
    .INIT(64'h521FBDA4E5063FE8)) 
    \rStoredData[0]_i_115 
       (.I0(s_axis_video_tdata[6]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[1]),
        .I3(s_axis_video_tdata[0]),
        .I4(s_axis_video_tdata[3]),
        .I5(s_axis_video_tdata[2]),
        .O(\rStoredData[0]_i_115_n_0 ));
  LUT6 #(
    .INIT(64'hA37DC222DE821DD7)) 
    \rStoredData[0]_i_116 
       (.I0(s_axis_video_tdata[6]),
        .I1(s_axis_video_tdata[3]),
        .I2(s_axis_video_tdata[2]),
        .I3(s_axis_video_tdata[4]),
        .I4(s_axis_video_tdata[0]),
        .I5(s_axis_video_tdata[1]),
        .O(\rStoredData[0]_i_116_n_0 ));
  LUT6 #(
    .INIT(64'h1466B990467B9844)) 
    \rStoredData[0]_i_117 
       (.I0(s_axis_video_tdata[6]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[0]_i_117_n_0 ));
  LUT6 #(
    .INIT(64'hFC4013BEEC0137EE)) 
    \rStoredData[0]_i_118 
       (.I0(s_axis_video_tdata[6]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[0]_i_118_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rStoredData[0]_i_2 
       (.I0(\rStoredData_reg[0]_i_4_n_0 ),
        .I1(\rStoredData_reg[0]_i_5_n_0 ),
        .I2(s_axis_video_tdata[8]),
        .I3(\rStoredData_reg[0]_i_6_n_0 ),
        .I4(s_axis_video_tdata[9]),
        .I5(\rStoredData_reg[0]_i_7_n_0 ),
        .O(p_0_out[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rStoredData[0]_i_3 
       (.I0(\rStoredData[0]_i_8_n_0 ),
        .I1(\rStoredData[0]_i_9_n_0 ),
        .I2(sGammaReg[0]),
        .I3(\rStoredData[0]_i_10_n_0 ),
        .I4(sGammaReg[1]),
        .I5(s_axis_video_tdata[2]),
        .O(\rStoredData[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h007F01FFFF00FA00)) 
    \rStoredData[0]_i_31 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[0]_i_31_n_0 ));
  LUT6 #(
    .INIT(64'h00008FFFFFFF7000)) 
    \rStoredData[0]_i_32 
       (.I0(s_axis_video_tdata[4]),
        .I1(s_axis_video_tdata[5]),
        .I2(s_axis_video_tdata[1]),
        .I3(s_axis_video_tdata[0]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[0]_i_32_n_0 ));
  LUT6 #(
    .INIT(64'h0B0AFFFFF5FD0000)) 
    \rStoredData[0]_i_33 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[0]),
        .I2(s_axis_video_tdata[1]),
        .I3(s_axis_video_tdata[4]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[0]_i_33_n_0 ));
  LUT6 #(
    .INIT(64'hFFF5F7F51008000A)) 
    \rStoredData[0]_i_34 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[2]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[0]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[0]_i_34_n_0 ));
  LUT6 #(
    .INIT(64'h7655579581A888AA)) 
    \rStoredData[0]_i_35 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[0]),
        .I5(s_axis_video_tdata[2]),
        .O(\rStoredData[0]_i_35_n_0 ));
  LUT6 #(
    .INIT(64'hCD4C9BDD329B2632)) 
    \rStoredData[0]_i_36 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[3]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[2]),
        .O(\rStoredData[0]_i_36_n_0 ));
  LUT6 #(
    .INIT(64'hCC3BC4CC33CC33C3)) 
    \rStoredData[0]_i_37 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[3]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[2]),
        .O(\rStoredData[0]_i_37_n_0 ));
  LUT6 #(
    .INIT(64'h4A0FF052ADB54A2F)) 
    \rStoredData[0]_i_38 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[0]),
        .I2(s_axis_video_tdata[4]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[3]),
        .I5(s_axis_video_tdata[2]),
        .O(\rStoredData[0]_i_38_n_0 ));
  LUT6 #(
    .INIT(64'h54666AAB999D5446)) 
    \rStoredData[0]_i_39 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[0]_i_39_n_0 ));
  LUT6 #(
    .INIT(64'h576EEAA899155576)) 
    \rStoredData[0]_i_40 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[0]_i_40_n_0 ));
  LUT6 #(
    .INIT(64'hEAA80111575FEEEA)) 
    \rStoredData[0]_i_41 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[1]),
        .I3(s_axis_video_tdata[0]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[0]_i_41_n_0 ));
  LUT6 #(
    .INIT(64'h57FFFFEAA8000115)) 
    \rStoredData[0]_i_42 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[0]_i_42_n_0 ));
  LUT6 #(
    .INIT(64'h3C9249E04F15AD1E)) 
    \rStoredData[0]_i_43 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[0]_i_43_n_0 ));
  LUT6 #(
    .INIT(64'hDD8819FD297F6222)) 
    \rStoredData[0]_i_44 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[3]),
        .I2(s_axis_video_tdata[2]),
        .I3(s_axis_video_tdata[4]),
        .I4(s_axis_video_tdata[0]),
        .I5(s_axis_video_tdata[1]),
        .O(\rStoredData[0]_i_44_n_0 ));
  LUT6 #(
    .INIT(64'hCC433B8CC533ACDD)) 
    \rStoredData[0]_i_45 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[0]_i_45_n_0 ));
  LUT6 #(
    .INIT(64'h1FFF5FFEE001A011)) 
    \rStoredData[0]_i_46 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[3]),
        .I5(s_axis_video_tdata[2]),
        .O(\rStoredData[0]_i_46_n_0 ));
  LUT5 #(
    .INIT(32'h92DB496D)) 
    \rStoredData[0]_i_71 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[2]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[4]),
        .O(\rStoredData[0]_i_71_n_0 ));
  LUT6 #(
    .INIT(64'hAB6699629DAA54B9)) 
    \rStoredData[0]_i_72 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[2]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[3]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[4]),
        .O(\rStoredData[0]_i_72_n_0 ));
  LUT6 #(
    .INIT(64'h778876917691EE15)) 
    \rStoredData[0]_i_73 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[2]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[3]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[4]),
        .O(\rStoredData[0]_i_73_n_0 ));
  LUT6 #(
    .INIT(64'hC787871E878E861E)) 
    \rStoredData[0]_i_74 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[2]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[4]),
        .I5(s_axis_video_tdata[0]),
        .O(\rStoredData[0]_i_74_n_0 ));
  LUT6 #(
    .INIT(64'h733C328C4DDBC9B2)) 
    \rStoredData[0]_i_75 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[2]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[0]),
        .I5(s_axis_video_tdata[4]),
        .O(\rStoredData[0]_i_75_n_0 ));
  LUT6 #(
    .INIT(64'h66CC64D96499C999)) 
    \rStoredData[0]_i_76 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[2]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[0]),
        .I5(s_axis_video_tdata[4]),
        .O(\rStoredData[0]_i_76_n_0 ));
  LUT6 #(
    .INIT(64'h8E9867E69C1966C6)) 
    \rStoredData[0]_i_77 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[2]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[4]),
        .I5(s_axis_video_tdata[0]),
        .O(\rStoredData[0]_i_77_n_0 ));
  LUT6 #(
    .INIT(64'hF3C7C3CE1C313833)) 
    \rStoredData[0]_i_78 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[2]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[0]),
        .I5(s_axis_video_tdata[4]),
        .O(\rStoredData[0]_i_78_n_0 ));
  LUT6 #(
    .INIT(64'hDCCC33BD0333CC40)) 
    \rStoredData[0]_i_79 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[2]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[3]),
        .I5(s_axis_video_tdata[4]),
        .O(\rStoredData[0]_i_79_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rStoredData[0]_i_8 
       (.I0(\rStoredData_reg[0]_i_19_n_0 ),
        .I1(\rStoredData_reg[0]_i_20_n_0 ),
        .I2(s_axis_video_tdata[7]),
        .I3(\rStoredData_reg[0]_i_21_n_0 ),
        .I4(s_axis_video_tdata[9]),
        .I5(\rStoredData_reg[0]_i_22_n_0 ),
        .O(\rStoredData[0]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h4D2C6D2434B2B2D3)) 
    \rStoredData[0]_i_80 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[2]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[0]),
        .I5(s_axis_video_tdata[4]),
        .O(\rStoredData[0]_i_80_n_0 ));
  LUT6 #(
    .INIT(64'hA696869A965A9659)) 
    \rStoredData[0]_i_81 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[2]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[4]),
        .I4(s_axis_video_tdata[0]),
        .I5(s_axis_video_tdata[1]),
        .O(\rStoredData[0]_i_81_n_0 ));
  LUT6 #(
    .INIT(64'hA515055F7AA8EAA5)) 
    \rStoredData[0]_i_82 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[0]),
        .I2(s_axis_video_tdata[2]),
        .I3(s_axis_video_tdata[4]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[0]_i_82_n_0 ));
  LUT6 #(
    .INIT(64'h44EE11EF12E53C12)) 
    \rStoredData[0]_i_83 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[2]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[0]),
        .I5(s_axis_video_tdata[4]),
        .O(\rStoredData[0]_i_83_n_0 ));
  LUT6 #(
    .INIT(64'h20DBCD22658E5875)) 
    \rStoredData[0]_i_84 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[2]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[3]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[4]),
        .O(\rStoredData[0]_i_84_n_0 ));
  LUT6 #(
    .INIT(64'h8E00F3FFFFFF0000)) 
    \rStoredData[0]_i_85 
       (.I0(s_axis_video_tdata[3]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[5]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[1]),
        .O(\rStoredData[0]_i_85_n_0 ));
  LUT6 #(
    .INIT(64'h66666C6696996626)) 
    \rStoredData[0]_i_86 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[2]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[0]),
        .I4(s_axis_video_tdata[4]),
        .I5(s_axis_video_tdata[1]),
        .O(\rStoredData[0]_i_86_n_0 ));
  LUT6 #(
    .INIT(64'h008F0000FF70FFFF)) 
    \rStoredData[0]_i_87 
       (.I0(s_axis_video_tdata[3]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[5]),
        .I5(s_axis_video_tdata[2]),
        .O(\rStoredData[0]_i_87_n_0 ));
  LUT6 #(
    .INIT(64'h4D64995DBA9926B2)) 
    \rStoredData[0]_i_88 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[3]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[2]),
        .O(\rStoredData[0]_i_88_n_0 ));
  LUT6 #(
    .INIT(64'hEFAEF7F751510808)) 
    \rStoredData[0]_i_89 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[3]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[2]),
        .O(\rStoredData[0]_i_89_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rStoredData[0]_i_9 
       (.I0(\rStoredData_reg[0]_i_23_n_0 ),
        .I1(\rStoredData_reg[0]_i_24_n_0 ),
        .I2(s_axis_video_tdata[7]),
        .I3(\rStoredData_reg[0]_i_25_n_0 ),
        .I4(s_axis_video_tdata[8]),
        .I5(\rStoredData_reg[0]_i_26_n_0 ),
        .O(\rStoredData[0]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h9BB26644D99BA266)) 
    \rStoredData[0]_i_90 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[0]_i_90_n_0 ));
  LUT6 #(
    .INIT(64'hB955955666AB6AB9)) 
    \rStoredData[0]_i_91 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[3]),
        .I5(s_axis_video_tdata[2]),
        .O(\rStoredData[0]_i_91_n_0 ));
  LUT6 #(
    .INIT(64'hE675599AAE675599)) 
    \rStoredData[0]_i_92 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[0]_i_92_n_0 ));
  LUT6 #(
    .INIT(64'h157F15FEEA81A801)) 
    \rStoredData[0]_i_93 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[3]),
        .I5(s_axis_video_tdata[2]),
        .O(\rStoredData[0]_i_93_n_0 ));
  LUT6 #(
    .INIT(64'hA665AA6659995559)) 
    \rStoredData[0]_i_94 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[3]),
        .I5(s_axis_video_tdata[2]),
        .O(\rStoredData[0]_i_94_n_0 ));
  LUT6 #(
    .INIT(64'hA0007FFE80017FFE)) 
    \rStoredData[0]_i_95 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[0]_i_95_n_0 ));
  LUT6 #(
    .INIT(64'h2665AA66599B55D9)) 
    \rStoredData[0]_i_96 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[3]),
        .I5(s_axis_video_tdata[2]),
        .O(\rStoredData[0]_i_96_n_0 ));
  LUT6 #(
    .INIT(64'h3F00000080FFFFFF)) 
    \rStoredData[0]_i_97 
       (.I0(s_axis_video_tdata[3]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[5]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[0]),
        .I5(s_axis_video_tdata[2]),
        .O(\rStoredData[0]_i_97_n_0 ));
  LUT6 #(
    .INIT(64'h665D99BA26645D99)) 
    \rStoredData[0]_i_98 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[0]_i_98_n_0 ));
  LUT6 #(
    .INIT(64'h8F76601909BEEF30)) 
    \rStoredData[0]_i_99 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[3]),
        .I5(s_axis_video_tdata[2]),
        .O(\rStoredData[0]_i_99_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \rStoredData[1]_i_1 
       (.I0(p_0_out[1]),
        .I1(\rStoredData[1]_i_3_n_0 ),
        .I2(sGammaReg[2]),
        .O(p_0_in[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rStoredData[1]_i_10 
       (.I0(\rStoredData_reg[1]_i_29_n_0 ),
        .I1(\rStoredData_reg[1]_i_30_n_0 ),
        .I2(s_axis_video_tdata[9]),
        .I3(\rStoredData_reg[1]_i_31_n_0 ),
        .I4(s_axis_video_tdata[8]),
        .I5(\rStoredData_reg[1]_i_32_n_0 ),
        .O(\rStoredData[1]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h080A080EEFF7F7F5)) 
    \rStoredData[1]_i_100 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[2]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[0]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[1]_i_100_n_0 ));
  LUT6 #(
    .INIT(64'h088C88CCEEF7EF77)) 
    \rStoredData[1]_i_101 
       (.I0(s_axis_video_tdata[6]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[1]_i_101_n_0 ));
  LUT6 #(
    .INIT(64'h5F0F4F0505A020B0)) 
    \rStoredData[1]_i_102 
       (.I0(s_axis_video_tdata[6]),
        .I1(s_axis_video_tdata[0]),
        .I2(s_axis_video_tdata[4]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[1]_i_102_n_0 ));
  LUT6 #(
    .INIT(64'hE666777731111998)) 
    \rStoredData[1]_i_103 
       (.I0(s_axis_video_tdata[6]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[1]_i_103_n_0 ));
  LUT6 #(
    .INIT(64'h98888EEEE6E67777)) 
    \rStoredData[1]_i_104 
       (.I0(s_axis_video_tdata[6]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[1]),
        .I3(s_axis_video_tdata[0]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[1]_i_104_n_0 ));
  LUT6 #(
    .INIT(64'h5075EFAFF5F78A0A)) 
    \rStoredData[1]_i_105 
       (.I0(s_axis_video_tdata[6]),
        .I1(s_axis_video_tdata[0]),
        .I2(s_axis_video_tdata[4]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[3]),
        .I5(s_axis_video_tdata[2]),
        .O(\rStoredData[1]_i_105_n_0 ));
  LUT6 #(
    .INIT(64'hFBBBB2222004444D)) 
    \rStoredData[1]_i_106 
       (.I0(s_axis_video_tdata[6]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[1]_i_106_n_0 ));
  LUT6 #(
    .INIT(64'h080000F0F0FFF3FF)) 
    \rStoredData[1]_i_107 
       (.I0(s_axis_video_tdata[0]),
        .I1(s_axis_video_tdata[6]),
        .I2(s_axis_video_tdata[4]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[1]_i_107_n_0 ));
  LUT5 #(
    .INIT(32'hBFF55040)) 
    \rStoredData[1]_i_108 
       (.I0(s_axis_video_tdata[4]),
        .I1(s_axis_video_tdata[0]),
        .I2(s_axis_video_tdata[2]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[3]),
        .O(\rStoredData[1]_i_108_n_0 ));
  LUT6 #(
    .INIT(64'h0000000FFFFFFFF4)) 
    \rStoredData[1]_i_109 
       (.I0(s_axis_video_tdata[4]),
        .I1(s_axis_video_tdata[6]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[1]_i_109_n_0 ));
  LUT6 #(
    .INIT(64'hFEFEFFFF00010000)) 
    \rStoredData[1]_i_11 
       (.I0(s_axis_video_tdata[1]),
        .I1(s_axis_video_tdata[2]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[0]),
        .I4(s_axis_video_tdata[5]),
        .I5(s_axis_video_tdata[4]),
        .O(\rStoredData[1]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h004F0000FFB0FFFF)) 
    \rStoredData[1]_i_110 
       (.I0(s_axis_video_tdata[0]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[1]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[6]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[1]_i_110_n_0 ));
  LUT6 #(
    .INIT(64'hAA67551955558AAA)) 
    \rStoredData[1]_i_111 
       (.I0(s_axis_video_tdata[6]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[3]),
        .I5(s_axis_video_tdata[2]),
        .O(\rStoredData[1]_i_111_n_0 ));
  LUT6 #(
    .INIT(64'h555D5D59BAAAAAA2)) 
    \rStoredData[1]_i_112 
       (.I0(s_axis_video_tdata[6]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[2]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[0]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[1]_i_112_n_0 ));
  LUT6 #(
    .INIT(64'h331CCC9B22774898)) 
    \rStoredData[1]_i_113 
       (.I0(s_axis_video_tdata[6]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[1]_i_113_n_0 ));
  LUT6 #(
    .INIT(64'h8ACAD2D7F7F53520)) 
    \rStoredData[1]_i_114 
       (.I0(s_axis_video_tdata[6]),
        .I1(s_axis_video_tdata[3]),
        .I2(s_axis_video_tdata[4]),
        .I3(s_axis_video_tdata[0]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[2]),
        .O(\rStoredData[1]_i_114_n_0 ));
  LUT6 #(
    .INIT(64'h400AFDD0AFAF5000)) 
    \rStoredData[1]_i_115 
       (.I0(s_axis_video_tdata[6]),
        .I1(s_axis_video_tdata[0]),
        .I2(s_axis_video_tdata[4]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[3]),
        .I5(s_axis_video_tdata[2]),
        .O(\rStoredData[1]_i_115_n_0 ));
  LUT6 #(
    .INIT(64'h555546EAAAAB9D55)) 
    \rStoredData[1]_i_116 
       (.I0(s_axis_video_tdata[6]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[1]_i_116_n_0 ));
  LUT6 #(
    .INIT(64'h0BF5FF00FF00FF00)) 
    \rStoredData[1]_i_12 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[0]),
        .I2(s_axis_video_tdata[1]),
        .I3(s_axis_video_tdata[4]),
        .I4(s_axis_video_tdata[3]),
        .I5(s_axis_video_tdata[2]),
        .O(\rStoredData[1]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h3333CCCCBCCCCCCC)) 
    \rStoredData[1]_i_13 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[1]),
        .I3(s_axis_video_tdata[0]),
        .I4(s_axis_video_tdata[3]),
        .I5(s_axis_video_tdata[2]),
        .O(\rStoredData[1]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h334CCCCC32CCCCCC)) 
    \rStoredData[1]_i_14 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[3]),
        .I5(s_axis_video_tdata[1]),
        .O(\rStoredData[1]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rStoredData[1]_i_2 
       (.I0(\rStoredData[1]_i_4_n_0 ),
        .I1(\rStoredData_reg[1]_i_5_n_0 ),
        .I2(s_axis_video_tdata[8]),
        .I3(\rStoredData_reg[1]_i_6_n_0 ),
        .I4(s_axis_video_tdata[9]),
        .I5(\rStoredData_reg[1]_i_7_n_0 ),
        .O(p_0_out[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rStoredData[1]_i_3 
       (.I0(\rStoredData[1]_i_8_n_0 ),
        .I1(\rStoredData[1]_i_9_n_0 ),
        .I2(sGammaReg[0]),
        .I3(\rStoredData[1]_i_10_n_0 ),
        .I4(sGammaReg[1]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF7F5F7751008080A)) 
    \rStoredData[1]_i_33 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[2]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[0]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[1]_i_33_n_0 ));
  LUT6 #(
    .INIT(64'h98AA8AAEE6757755)) 
    \rStoredData[1]_i_34 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[1]_i_34_n_0 ));
  LUT6 #(
    .INIT(64'h9999AAAAA2666665)) 
    \rStoredData[1]_i_35 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[1]_i_35_n_0 ));
  LUT6 #(
    .INIT(64'hAFAA0A1A5A585075)) 
    \rStoredData[1]_i_36 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[0]),
        .I2(s_axis_video_tdata[4]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[1]_i_36_n_0 ));
  LUT6 #(
    .INIT(64'h66444CCDDDD9999B)) 
    \rStoredData[1]_i_37 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[1]_i_37_n_0 ));
  LUT6 #(
    .INIT(64'hA0807FFF0515AAA0)) 
    \rStoredData[1]_i_38 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[0]),
        .I2(s_axis_video_tdata[2]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[4]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[1]_i_38_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCCDDD9B933333)) 
    \rStoredData[1]_i_39 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[1]),
        .I3(s_axis_video_tdata[0]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[1]_i_39_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rStoredData[1]_i_4 
       (.I0(\rStoredData[1]_i_11_n_0 ),
        .I1(\rStoredData[1]_i_12_n_0 ),
        .I2(s_axis_video_tdata[7]),
        .I3(\rStoredData[1]_i_13_n_0 ),
        .I4(s_axis_video_tdata[6]),
        .I5(\rStoredData[1]_i_14_n_0 ),
        .O(\rStoredData[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h6C4CCCCCCCCCCDD9)) 
    \rStoredData[1]_i_40 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[1]),
        .I3(s_axis_video_tdata[0]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[1]_i_40_n_0 ));
  LUT6 #(
    .INIT(64'h2EFD389C8176733C)) 
    \rStoredData[1]_i_41 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[3]),
        .I5(s_axis_video_tdata[2]),
        .O(\rStoredData[1]_i_41_n_0 ));
  LUT6 #(
    .INIT(64'hD2F5D5B52D2A280A)) 
    \rStoredData[1]_i_42 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[3]),
        .I2(s_axis_video_tdata[4]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[0]),
        .I5(s_axis_video_tdata[2]),
        .O(\rStoredData[1]_i_42_n_0 ));
  LUT6 #(
    .INIT(64'hAAA954669115EABB)) 
    \rStoredData[1]_i_43 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[3]),
        .I5(s_axis_video_tdata[2]),
        .O(\rStoredData[1]_i_43_n_0 ));
  LUT6 #(
    .INIT(64'h1FFFFFFEA0000011)) 
    \rStoredData[1]_i_44 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[1]_i_44_n_0 ));
  LUT5 #(
    .INIT(32'hE85EA17A)) 
    \rStoredData[1]_i_69 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[2]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[4]),
        .I4(s_axis_video_tdata[1]),
        .O(\rStoredData[1]_i_69_n_0 ));
  LUT6 #(
    .INIT(64'h0177EA001177AA11)) 
    \rStoredData[1]_i_70 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[2]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[3]),
        .I4(s_axis_video_tdata[4]),
        .I5(s_axis_video_tdata[1]),
        .O(\rStoredData[1]_i_70_n_0 ));
  LUT6 #(
    .INIT(64'hA0005FFAA005FFEA)) 
    \rStoredData[1]_i_71 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[0]),
        .I2(s_axis_video_tdata[2]),
        .I3(s_axis_video_tdata[3]),
        .I4(s_axis_video_tdata[4]),
        .I5(s_axis_video_tdata[1]),
        .O(\rStoredData[1]_i_71_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFC08000033FFF)) 
    \rStoredData[1]_i_72 
       (.I0(s_axis_video_tdata[0]),
        .I1(s_axis_video_tdata[5]),
        .I2(s_axis_video_tdata[2]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[3]),
        .I5(s_axis_video_tdata[4]),
        .O(\rStoredData[1]_i_72_n_0 ));
  LUT6 #(
    .INIT(64'h3C7CC3334CCB303C)) 
    \rStoredData[1]_i_73 
       (.I0(s_axis_video_tdata[0]),
        .I1(s_axis_video_tdata[5]),
        .I2(s_axis_video_tdata[2]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[3]),
        .I5(s_axis_video_tdata[4]),
        .O(\rStoredData[1]_i_73_n_0 ));
  LUT6 #(
    .INIT(64'h870F871E871E0E1E)) 
    \rStoredData[1]_i_74 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[2]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[4]),
        .I5(s_axis_video_tdata[0]),
        .O(\rStoredData[1]_i_74_n_0 ));
  LUT6 #(
    .INIT(64'h5A4AD2D24A4B5252)) 
    \rStoredData[1]_i_75 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[2]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[0]),
        .I4(s_axis_video_tdata[4]),
        .I5(s_axis_video_tdata[1]),
        .O(\rStoredData[1]_i_75_n_0 ));
  LUT6 #(
    .INIT(64'h33CB33C33C334C34)) 
    \rStoredData[1]_i_76 
       (.I0(s_axis_video_tdata[0]),
        .I1(s_axis_video_tdata[5]),
        .I2(s_axis_video_tdata[2]),
        .I3(s_axis_video_tdata[4]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[1]_i_76_n_0 ));
  LUT6 #(
    .INIT(64'h555566EAA9995555)) 
    \rStoredData[1]_i_77 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[2]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[3]),
        .I5(s_axis_video_tdata[4]),
        .O(\rStoredData[1]_i_77_n_0 ));
  LUT6 #(
    .INIT(64'h59717175A5A7A7A6)) 
    \rStoredData[1]_i_78 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[2]),
        .I2(s_axis_video_tdata[4]),
        .I3(s_axis_video_tdata[0]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[1]_i_78_n_0 ));
  LUT6 #(
    .INIT(64'hF8E8F8E8175F1F5E)) 
    \rStoredData[1]_i_79 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[2]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[0]),
        .I5(s_axis_video_tdata[4]),
        .O(\rStoredData[1]_i_79_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rStoredData[1]_i_8 
       (.I0(\rStoredData_reg[1]_i_21_n_0 ),
        .I1(\rStoredData_reg[1]_i_22_n_0 ),
        .I2(s_axis_video_tdata[7]),
        .I3(\rStoredData_reg[1]_i_23_n_0 ),
        .I4(s_axis_video_tdata[9]),
        .I5(\rStoredData_reg[1]_i_24_n_0 ),
        .O(\rStoredData[1]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h057FEA0005FFA005)) 
    \rStoredData[1]_i_80 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[0]),
        .I2(s_axis_video_tdata[2]),
        .I3(s_axis_video_tdata[3]),
        .I4(s_axis_video_tdata[4]),
        .I5(s_axis_video_tdata[1]),
        .O(\rStoredData[1]_i_80_n_0 ));
  LUT6 #(
    .INIT(64'h9C638B728D62B660)) 
    \rStoredData[1]_i_81 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[2]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[4]),
        .I5(s_axis_video_tdata[0]),
        .O(\rStoredData[1]_i_81_n_0 ));
  LUT6 #(
    .INIT(64'h331389E8FE339199)) 
    \rStoredData[1]_i_82 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[2]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[3]),
        .I4(s_axis_video_tdata[4]),
        .I5(s_axis_video_tdata[1]),
        .O(\rStoredData[1]_i_82_n_0 ));
  LUT6 #(
    .INIT(64'h2F00000040FFFFFF)) 
    \rStoredData[1]_i_83 
       (.I0(s_axis_video_tdata[0]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[5]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[1]_i_83_n_0 ));
  LUT6 #(
    .INIT(64'h2D2F2D2DBD2DB42D)) 
    \rStoredData[1]_i_84 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[2]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[4]),
        .I4(s_axis_video_tdata[0]),
        .I5(s_axis_video_tdata[1]),
        .O(\rStoredData[1]_i_84_n_0 ));
  LUT6 #(
    .INIT(64'h0B00FFFFFCFF0000)) 
    \rStoredData[1]_i_85 
       (.I0(s_axis_video_tdata[4]),
        .I1(s_axis_video_tdata[0]),
        .I2(s_axis_video_tdata[1]),
        .I3(s_axis_video_tdata[5]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[1]_i_85_n_0 ));
  LUT6 #(
    .INIT(64'hE7557751118808AA)) 
    \rStoredData[1]_i_86 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[1]_i_86_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFFFF751000008)) 
    \rStoredData[1]_i_87 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[1]_i_87_n_0 ));
  LUT6 #(
    .INIT(64'hCCFF4CCC3330FB33)) 
    \rStoredData[1]_i_88 
       (.I0(s_axis_video_tdata[0]),
        .I1(s_axis_video_tdata[5]),
        .I2(s_axis_video_tdata[1]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[4]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[1]_i_88_n_0 ));
  LUT6 #(
    .INIT(64'hEEAA880115577FEE)) 
    \rStoredData[1]_i_89 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[1]_i_89_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rStoredData[1]_i_9 
       (.I0(\rStoredData_reg[1]_i_25_n_0 ),
        .I1(\rStoredData_reg[1]_i_26_n_0 ),
        .I2(s_axis_video_tdata[7]),
        .I3(\rStoredData_reg[1]_i_27_n_0 ),
        .I4(s_axis_video_tdata[8]),
        .I5(\rStoredData_reg[1]_i_28_n_0 ),
        .O(\rStoredData[1]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hEEF7FF7551001088)) 
    \rStoredData[1]_i_90 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[1]_i_90_n_0 ));
  LUT6 #(
    .INIT(64'h157FFFFEEA000001)) 
    \rStoredData[1]_i_91 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[1]_i_91_n_0 ));
  LUT6 #(
    .INIT(64'h51100888AAEEFFF7)) 
    \rStoredData[1]_i_92 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[1]_i_92_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFFE7FFF8000)) 
    \rStoredData[1]_i_93 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[3]),
        .I5(s_axis_video_tdata[2]),
        .O(\rStoredData[1]_i_93_n_0 ));
  LUT6 #(
    .INIT(64'hAEEF5511F7750088)) 
    \rStoredData[1]_i_94 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[3]),
        .I5(s_axis_video_tdata[2]),
        .O(\rStoredData[1]_i_94_n_0 ));
  LUT6 #(
    .INIT(64'h00008FFFFFFFF000)) 
    \rStoredData[1]_i_95 
       (.I0(s_axis_video_tdata[4]),
        .I1(s_axis_video_tdata[5]),
        .I2(s_axis_video_tdata[1]),
        .I3(s_axis_video_tdata[0]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[1]_i_95_n_0 ));
  LUT6 #(
    .INIT(64'h0520A0AABAFADF5F)) 
    \rStoredData[1]_i_96 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[0]),
        .I2(s_axis_video_tdata[4]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[1]_i_96_n_0 ));
  LUT6 #(
    .INIT(64'h43CC33D53A328C22)) 
    \rStoredData[1]_i_97 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[3]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[2]),
        .O(\rStoredData[1]_i_97_n_0 ));
  LUT6 #(
    .INIT(64'hFF5D050000A0BAFF)) 
    \rStoredData[1]_i_98 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[0]),
        .I2(s_axis_video_tdata[4]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[1]_i_98_n_0 ));
  LUT6 #(
    .INIT(64'h55766EAAA9995556)) 
    \rStoredData[1]_i_99 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[1]_i_99_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \rStoredData[2]_i_1 
       (.I0(p_0_out[2]),
        .I1(\rStoredData[2]_i_3_n_0 ),
        .I2(sGammaReg[2]),
        .O(p_0_in[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rStoredData[2]_i_10 
       (.I0(\rStoredData_reg[2]_i_25_n_0 ),
        .I1(\rStoredData_reg[2]_i_26_n_0 ),
        .I2(s_axis_video_tdata[9]),
        .I3(\rStoredData_reg[2]_i_27_n_0 ),
        .I4(s_axis_video_tdata[8]),
        .I5(\rStoredData_reg[2]_i_28_n_0 ),
        .O(\rStoredData[2]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hAAA95555)) 
    \rStoredData[2]_i_100 
       (.I0(s_axis_video_tdata[4]),
        .I1(s_axis_video_tdata[0]),
        .I2(s_axis_video_tdata[1]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[3]),
        .O(\rStoredData[2]_i_100_n_0 ));
  LUT6 #(
    .INIT(64'hF8FF03000000FFFF)) 
    \rStoredData[2]_i_101 
       (.I0(s_axis_video_tdata[0]),
        .I1(s_axis_video_tdata[1]),
        .I2(s_axis_video_tdata[2]),
        .I3(s_axis_video_tdata[6]),
        .I4(s_axis_video_tdata[4]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[2]_i_101_n_0 ));
  LUT6 #(
    .INIT(64'h663333B9233B3399)) 
    \rStoredData[2]_i_102 
       (.I0(s_axis_video_tdata[6]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[3]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[1]),
        .O(\rStoredData[2]_i_102_n_0 ));
  LUT6 #(
    .INIT(64'h07FF0000FF00FFFF)) 
    \rStoredData[2]_i_103 
       (.I0(s_axis_video_tdata[1]),
        .I1(s_axis_video_tdata[0]),
        .I2(s_axis_video_tdata[2]),
        .I3(s_axis_video_tdata[3]),
        .I4(s_axis_video_tdata[6]),
        .I5(s_axis_video_tdata[4]),
        .O(\rStoredData[2]_i_103_n_0 ));
  LUT6 #(
    .INIT(64'hAF509F055F2558A0)) 
    \rStoredData[2]_i_104 
       (.I0(s_axis_video_tdata[6]),
        .I1(s_axis_video_tdata[0]),
        .I2(s_axis_video_tdata[4]),
        .I3(s_axis_video_tdata[3]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[2]),
        .O(\rStoredData[2]_i_104_n_0 ));
  LUT6 #(
    .INIT(64'h8CDDCDDDFF22BA22)) 
    \rStoredData[2]_i_105 
       (.I0(s_axis_video_tdata[6]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[2]_i_105_n_0 ));
  LUT5 #(
    .INIT(32'hC73C0C3C)) 
    \rStoredData[2]_i_106 
       (.I0(s_axis_video_tdata[1]),
        .I1(s_axis_video_tdata[6]),
        .I2(s_axis_video_tdata[4]),
        .I3(s_axis_video_tdata[3]),
        .I4(s_axis_video_tdata[2]),
        .O(\rStoredData[2]_i_106_n_0 ));
  LUT6 #(
    .INIT(64'h999B993333263266)) 
    \rStoredData[2]_i_107 
       (.I0(s_axis_video_tdata[6]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[2]_i_107_n_0 ));
  LUT6 #(
    .INIT(64'h30BBFC88FF00FF00)) 
    \rStoredData[2]_i_11 
       (.I0(\rStoredData[5]_i_30__1_n_0 ),
        .I1(s_axis_video_tdata[6]),
        .I2(\rStoredData[3]_i_36_n_0 ),
        .I3(s_axis_video_tdata[5]),
        .I4(\rStoredData[7]_i_4__1_n_0 ),
        .I5(s_axis_video_tdata[4]),
        .O(\rStoredData[2]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFC33FC00BB00BB00)) 
    \rStoredData[2]_i_12 
       (.I0(\rStoredData[6]_i_17__1_n_0 ),
        .I1(s_axis_video_tdata[6]),
        .I2(\rStoredData[3]_i_34_n_0 ),
        .I3(s_axis_video_tdata[5]),
        .I4(\rStoredData[5]_i_35__1_n_0 ),
        .I5(s_axis_video_tdata[4]),
        .O(\rStoredData[2]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rStoredData[2]_i_19 
       (.I0(\rStoredData_reg[2]_i_41_n_0 ),
        .I1(\rStoredData_reg[2]_i_42_n_0 ),
        .I2(s_axis_video_tdata[9]),
        .I3(\rStoredData_reg[2]_i_43_n_0 ),
        .I4(s_axis_video_tdata[8]),
        .I5(\rStoredData_reg[2]_i_44_n_0 ),
        .O(\rStoredData[2]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rStoredData[2]_i_2 
       (.I0(\rStoredData_reg[2]_i_4_n_0 ),
        .I1(\rStoredData_reg[2]_i_5_n_0 ),
        .I2(s_axis_video_tdata[8]),
        .I3(\rStoredData_reg[2]_i_6_n_0 ),
        .I4(s_axis_video_tdata[9]),
        .I5(\rStoredData_reg[2]_i_7_n_0 ),
        .O(p_0_out[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rStoredData[2]_i_20 
       (.I0(\rStoredData[2]_i_45_n_0 ),
        .I1(\rStoredData_reg[2]_i_46_n_0 ),
        .I2(s_axis_video_tdata[9]),
        .I3(\rStoredData_reg[2]_i_47_n_0 ),
        .I4(s_axis_video_tdata[8]),
        .I5(\rStoredData_reg[2]_i_48_n_0 ),
        .O(\rStoredData[2]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rStoredData[2]_i_23 
       (.I0(\rStoredData[2]_i_53_n_0 ),
        .I1(\rStoredData[1]_i_13_n_0 ),
        .I2(s_axis_video_tdata[6]),
        .I3(\rStoredData[2]_i_54_n_0 ),
        .I4(s_axis_video_tdata[9]),
        .I5(\rStoredData[2]_i_55_n_0 ),
        .O(\rStoredData[2]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hFEFCFFFF00010000)) 
    \rStoredData[2]_i_29 
       (.I0(s_axis_video_tdata[1]),
        .I1(s_axis_video_tdata[2]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[0]),
        .I4(s_axis_video_tdata[5]),
        .I5(s_axis_video_tdata[4]),
        .O(\rStoredData[2]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rStoredData[2]_i_3 
       (.I0(\rStoredData_reg[2]_i_8_n_0 ),
        .I1(\rStoredData[2]_i_9_n_0 ),
        .I2(sGammaReg[0]),
        .I3(\rStoredData[2]_i_10_n_0 ),
        .I4(sGammaReg[1]),
        .I5(s_axis_video_tdata[4]),
        .O(\rStoredData[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h505A524A0A0F0F0F)) 
    \rStoredData[2]_i_30 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[0]),
        .I2(s_axis_video_tdata[4]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[2]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hBB9D99DDBB9D99DC)) 
    \rStoredData[2]_i_31 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[1]),
        .I3(s_axis_video_tdata[3]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[0]),
        .O(\rStoredData[2]_i_31_n_0 ));
  LUT6 #(
    .INIT(64'h5A0A5A0A5A0A4A2F)) 
    \rStoredData[2]_i_32 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[0]),
        .I2(s_axis_video_tdata[4]),
        .I3(s_axis_video_tdata[3]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[1]),
        .O(\rStoredData[2]_i_32_n_0 ));
  LUT6 #(
    .INIT(64'hF5D5D5D550505042)) 
    \rStoredData[2]_i_33 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[2]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[0]),
        .I5(s_axis_video_tdata[4]),
        .O(\rStoredData[2]_i_33_n_0 ));
  LUT6 #(
    .INIT(64'hAABBABBBD5555555)) 
    \rStoredData[2]_i_34 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[3]),
        .I2(s_axis_video_tdata[1]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[0]),
        .I5(s_axis_video_tdata[4]),
        .O(\rStoredData[2]_i_34_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAB9BD9D9D)) 
    \rStoredData[2]_i_35 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[3]),
        .I2(s_axis_video_tdata[2]),
        .I3(s_axis_video_tdata[0]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[4]),
        .O(\rStoredData[2]_i_35_n_0 ));
  LUT6 #(
    .INIT(64'h2A2AAAAAAAABABAB)) 
    \rStoredData[2]_i_36 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[3]),
        .I2(s_axis_video_tdata[2]),
        .I3(s_axis_video_tdata[0]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[4]),
        .O(\rStoredData[2]_i_36_n_0 ));
  LUT6 #(
    .INIT(64'h7BAAABDDC451232E)) 
    \rStoredData[2]_i_37 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[2]_i_37_n_0 ));
  LUT6 #(
    .INIT(64'h65757575188A088A)) 
    \rStoredData[2]_i_38 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[2]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[0]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[2]_i_38_n_0 ));
  LUT6 #(
    .INIT(64'hCCCD99BBDDD93322)) 
    \rStoredData[2]_i_39 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[3]),
        .I5(s_axis_video_tdata[2]),
        .O(\rStoredData[2]_i_39_n_0 ));
  LUT6 #(
    .INIT(64'h38F0F0F0F0F0F0F5)) 
    \rStoredData[2]_i_40 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[0]),
        .I2(s_axis_video_tdata[4]),
        .I3(s_axis_video_tdata[3]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[1]),
        .O(\rStoredData[2]_i_40_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCCCCDD9B39B33)) 
    \rStoredData[2]_i_45 
       (.I0(s_axis_video_tdata[6]),
        .I1(s_axis_video_tdata[5]),
        .I2(s_axis_video_tdata[2]),
        .I3(s_axis_video_tdata[3]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[4]),
        .O(\rStoredData[2]_i_45_n_0 ));
  LUT6 #(
    .INIT(64'hFD00552240AA00FF)) 
    \rStoredData[2]_i_53 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[1]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[4]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[2]_i_53_n_0 ));
  LUT6 #(
    .INIT(64'h9DCCCCCCDCCCCC44)) 
    \rStoredData[2]_i_54 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[3]),
        .I5(s_axis_video_tdata[1]),
        .O(\rStoredData[2]_i_54_n_0 ));
  LUT6 #(
    .INIT(64'h00FF7F00FF00FF00)) 
    \rStoredData[2]_i_55 
       (.I0(s_axis_video_tdata[1]),
        .I1(s_axis_video_tdata[0]),
        .I2(s_axis_video_tdata[5]),
        .I3(s_axis_video_tdata[4]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[2]_i_55_n_0 ));
  LUT6 #(
    .INIT(64'h33333333304C00CC)) 
    \rStoredData[2]_i_66 
       (.I0(s_axis_video_tdata[0]),
        .I1(s_axis_video_tdata[5]),
        .I2(s_axis_video_tdata[1]),
        .I3(s_axis_video_tdata[3]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[4]),
        .O(\rStoredData[2]_i_66_n_0 ));
  LUT6 #(
    .INIT(64'hCFCF3333B3333330)) 
    \rStoredData[2]_i_67 
       (.I0(s_axis_video_tdata[0]),
        .I1(s_axis_video_tdata[5]),
        .I2(s_axis_video_tdata[2]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[4]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[2]_i_67_n_0 ));
  LUT6 #(
    .INIT(64'h000022AAABBBFFFF)) 
    \rStoredData[2]_i_68 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[2]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[3]),
        .I5(s_axis_video_tdata[4]),
        .O(\rStoredData[2]_i_68_n_0 ));
  LUT6 #(
    .INIT(64'hFF55D5555400002A)) 
    \rStoredData[2]_i_69 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[0]),
        .I2(s_axis_video_tdata[1]),
        .I3(s_axis_video_tdata[3]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[4]),
        .O(\rStoredData[2]_i_69_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFB00000000FFF)) 
    \rStoredData[2]_i_70 
       (.I0(s_axis_video_tdata[0]),
        .I1(s_axis_video_tdata[5]),
        .I2(s_axis_video_tdata[1]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[3]),
        .I5(s_axis_video_tdata[4]),
        .O(\rStoredData[2]_i_70_n_0 ));
  LUT5 #(
    .INIT(32'hD40022FF)) 
    \rStoredData[2]_i_71 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[2]),
        .I2(s_axis_video_tdata[1]),
        .I3(s_axis_video_tdata[3]),
        .I4(s_axis_video_tdata[4]),
        .O(\rStoredData[2]_i_71_n_0 ));
  LUT6 #(
    .INIT(64'hE586E486B2C786C6)) 
    \rStoredData[2]_i_72 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[2]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[0]),
        .I5(s_axis_video_tdata[4]),
        .O(\rStoredData[2]_i_72_n_0 ));
  LUT6 #(
    .INIT(64'h66B954AAAA9944BB)) 
    \rStoredData[2]_i_73 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[2]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[3]),
        .I4(s_axis_video_tdata[4]),
        .I5(s_axis_video_tdata[1]),
        .O(\rStoredData[2]_i_73_n_0 ));
  LUT5 #(
    .INIT(32'hAAABF5D5)) 
    \rStoredData[2]_i_74 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[2]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[4]),
        .O(\rStoredData[2]_i_74_n_0 ));
  LUT6 #(
    .INIT(64'h54224422AAAAAABB)) 
    \rStoredData[2]_i_75 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[2]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[3]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[4]),
        .O(\rStoredData[2]_i_75_n_0 ));
  LUT6 #(
    .INIT(64'h0A0A0A0BFDFDFDFD)) 
    \rStoredData[2]_i_76 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[2]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[0]),
        .I5(s_axis_video_tdata[4]),
        .O(\rStoredData[2]_i_76_n_0 ));
  LUT6 #(
    .INIT(64'hFFEFFF0F0F000010)) 
    \rStoredData[2]_i_77 
       (.I0(s_axis_video_tdata[0]),
        .I1(s_axis_video_tdata[1]),
        .I2(s_axis_video_tdata[5]),
        .I3(s_axis_video_tdata[3]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[4]),
        .O(\rStoredData[2]_i_77_n_0 ));
  LUT6 #(
    .INIT(64'hC08003337FFCCCC0)) 
    \rStoredData[2]_i_78 
       (.I0(s_axis_video_tdata[0]),
        .I1(s_axis_video_tdata[5]),
        .I2(s_axis_video_tdata[2]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[3]),
        .I5(s_axis_video_tdata[4]),
        .O(\rStoredData[2]_i_78_n_0 ));
  LUT6 #(
    .INIT(64'hFFFE808001017FFF)) 
    \rStoredData[2]_i_79 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[2]),
        .I2(s_axis_video_tdata[1]),
        .I3(s_axis_video_tdata[0]),
        .I4(s_axis_video_tdata[3]),
        .I5(s_axis_video_tdata[4]),
        .O(\rStoredData[2]_i_79_n_0 ));
  LUT6 #(
    .INIT(64'h30EFFF00FF00FF00)) 
    \rStoredData[2]_i_80 
       (.I0(s_axis_video_tdata[0]),
        .I1(s_axis_video_tdata[1]),
        .I2(s_axis_video_tdata[5]),
        .I3(s_axis_video_tdata[4]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[2]_i_80_n_0 ));
  LUT6 #(
    .INIT(64'h000A020ABFFFFFF5)) 
    \rStoredData[2]_i_81 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[0]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[4]),
        .O(\rStoredData[2]_i_81_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFD40000000)) 
    \rStoredData[2]_i_82 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[0]),
        .I2(s_axis_video_tdata[2]),
        .I3(s_axis_video_tdata[3]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[4]),
        .O(\rStoredData[2]_i_82_n_0 ));
  LUT6 #(
    .INIT(64'hF0FF8F0FFFFF0000)) 
    \rStoredData[2]_i_83 
       (.I0(s_axis_video_tdata[0]),
        .I1(s_axis_video_tdata[1]),
        .I2(s_axis_video_tdata[5]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[4]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[2]_i_83_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCCCCDD99BB333)) 
    \rStoredData[2]_i_84 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[2]_i_84_n_0 ));
  LUT5 #(
    .INIT(32'h0002BFFF)) 
    \rStoredData[2]_i_85 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[1]),
        .I2(s_axis_video_tdata[2]),
        .I3(s_axis_video_tdata[3]),
        .I4(s_axis_video_tdata[4]),
        .O(\rStoredData[2]_i_85_n_0 ));
  LUT6 #(
    .INIT(64'h24CCCCCC6CCCCCCD)) 
    \rStoredData[2]_i_86 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[1]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[3]),
        .I5(s_axis_video_tdata[0]),
        .O(\rStoredData[2]_i_86_n_0 ));
  LUT6 #(
    .INIT(64'h00FFCF334CFFFF00)) 
    \rStoredData[2]_i_87 
       (.I0(s_axis_video_tdata[0]),
        .I1(s_axis_video_tdata[5]),
        .I2(s_axis_video_tdata[1]),
        .I3(s_axis_video_tdata[4]),
        .I4(s_axis_video_tdata[3]),
        .I5(s_axis_video_tdata[2]),
        .O(\rStoredData[2]_i_87_n_0 ));
  LUT6 #(
    .INIT(64'h655D55D999AA88AA)) 
    \rStoredData[2]_i_88 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[2]_i_88_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0F04AF050F00F)) 
    \rStoredData[2]_i_89 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[0]),
        .I2(s_axis_video_tdata[4]),
        .I3(s_axis_video_tdata[3]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[1]),
        .O(\rStoredData[2]_i_89_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rStoredData[2]_i_9 
       (.I0(\rStoredData_reg[2]_i_21_n_0 ),
        .I1(\rStoredData_reg[2]_i_22_n_0 ),
        .I2(s_axis_video_tdata[7]),
        .I3(\rStoredData[2]_i_23_n_0 ),
        .I4(s_axis_video_tdata[8]),
        .I5(\rStoredData_reg[2]_i_24_n_0 ),
        .O(\rStoredData[2]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h9BB393B336262624)) 
    \rStoredData[2]_i_90 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[2]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[0]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[2]_i_90_n_0 ));
  LUT6 #(
    .INIT(64'hC4C6C4C223333333)) 
    \rStoredData[2]_i_91 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[2]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[0]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[2]_i_91_n_0 ));
  LUT6 #(
    .INIT(64'h9115115577667666)) 
    \rStoredData[2]_i_92 
       (.I0(s_axis_video_tdata[6]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[2]_i_92_n_0 ));
  LUT6 #(
    .INIT(64'h555F557EAAAAAAAA)) 
    \rStoredData[2]_i_93 
       (.I0(s_axis_video_tdata[6]),
        .I1(s_axis_video_tdata[0]),
        .I2(s_axis_video_tdata[2]),
        .I3(s_axis_video_tdata[3]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[4]),
        .O(\rStoredData[2]_i_93_n_0 ));
  LUT6 #(
    .INIT(64'h0F0F0F7FFFF0F0F0)) 
    \rStoredData[2]_i_94 
       (.I0(s_axis_video_tdata[0]),
        .I1(s_axis_video_tdata[1]),
        .I2(s_axis_video_tdata[6]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[3]),
        .I5(s_axis_video_tdata[4]),
        .O(\rStoredData[2]_i_94_n_0 ));
  LUT6 #(
    .INIT(64'hFFAAEA80AA00AA55)) 
    \rStoredData[2]_i_95 
       (.I0(s_axis_video_tdata[6]),
        .I1(s_axis_video_tdata[1]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[4]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[2]_i_95_n_0 ));
  LUT6 #(
    .INIT(64'hFB33333330CC04CC)) 
    \rStoredData[2]_i_96 
       (.I0(s_axis_video_tdata[0]),
        .I1(s_axis_video_tdata[6]),
        .I2(s_axis_video_tdata[1]),
        .I3(s_axis_video_tdata[3]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[4]),
        .O(\rStoredData[2]_i_96_n_0 ));
  LUT6 #(
    .INIT(64'h666666226666622B)) 
    \rStoredData[2]_i_97 
       (.I0(s_axis_video_tdata[6]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[1]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[3]),
        .I5(s_axis_video_tdata[0]),
        .O(\rStoredData[2]_i_97_n_0 ));
  LUT5 #(
    .INIT(32'h99955646)) 
    \rStoredData[2]_i_98 
       (.I0(s_axis_video_tdata[6]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[2]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[3]),
        .O(\rStoredData[2]_i_98_n_0 ));
  LUT6 #(
    .INIT(64'h555555556AAAAAAA)) 
    \rStoredData[2]_i_99 
       (.I0(s_axis_video_tdata[6]),
        .I1(s_axis_video_tdata[0]),
        .I2(s_axis_video_tdata[2]),
        .I3(s_axis_video_tdata[3]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[4]),
        .O(\rStoredData[2]_i_99_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \rStoredData[3]_i_1 
       (.I0(p_0_out[3]),
        .I1(\rStoredData_reg[3]_i_3_n_0 ),
        .I2(sGammaReg[0]),
        .I3(\rStoredData[3]_i_4_n_0 ),
        .I4(sGammaReg[2]),
        .O(p_0_in[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rStoredData[3]_i_10 
       (.I0(\rStoredData[3]_i_30_n_0 ),
        .I1(\rStoredData[3]_i_31_n_0 ),
        .I2(s_axis_video_tdata[8]),
        .I3(\rStoredData_reg[3]_i_32_n_0 ),
        .I4(s_axis_video_tdata[7]),
        .I5(\rStoredData_reg[3]_i_33_n_0 ),
        .O(\rStoredData[3]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hA0F0A0F0F0CFF0C0)) 
    \rStoredData[3]_i_11 
       (.I0(\rStoredData[3]_i_34_n_0 ),
        .I1(\rStoredData[3]_i_35_n_0 ),
        .I2(s_axis_video_tdata[6]),
        .I3(s_axis_video_tdata[4]),
        .I4(\rStoredData[3]_i_36_n_0 ),
        .I5(s_axis_video_tdata[5]),
        .O(\rStoredData[3]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hCFCCB3B3)) 
    \rStoredData[3]_i_12 
       (.I0(\rStoredData[3]_i_37_n_0 ),
        .I1(s_axis_video_tdata[6]),
        .I2(s_axis_video_tdata[4]),
        .I3(\rStoredData[5]_i_15__1_n_0 ),
        .I4(s_axis_video_tdata[5]),
        .O(\rStoredData[3]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFCBBFC88FF88FF88)) 
    \rStoredData[3]_i_15 
       (.I0(\rStoredData[7]_i_9__1_n_0 ),
        .I1(s_axis_video_tdata[7]),
        .I2(\rStoredData[3]_i_42_n_0 ),
        .I3(s_axis_video_tdata[6]),
        .I4(\rStoredData[3]_i_43__1_n_0 ),
        .I5(s_axis_video_tdata[5]),
        .O(\rStoredData[3]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFAFAFAF0FC000C0)) 
    \rStoredData[3]_i_16 
       (.I0(\rStoredData[6]_i_13__1_n_0 ),
        .I1(\rStoredData[3]_i_44__1_n_0 ),
        .I2(s_axis_video_tdata[6]),
        .I3(s_axis_video_tdata[4]),
        .I4(\rStoredData[6]_i_18__1_n_0 ),
        .I5(s_axis_video_tdata[5]),
        .O(\rStoredData[3]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h00AF00A0FFCFFFCF)) 
    \rStoredData[3]_i_17 
       (.I0(\rStoredData[3]_i_45__1_n_0 ),
        .I1(\rStoredData[6]_i_18__1_n_0 ),
        .I2(s_axis_video_tdata[6]),
        .I3(s_axis_video_tdata[4]),
        .I4(\rStoredData[5]_i_15__1_n_0 ),
        .I5(s_axis_video_tdata[5]),
        .O(\rStoredData[3]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hEFEAE5E5EFEA4040)) 
    \rStoredData[3]_i_18 
       (.I0(s_axis_video_tdata[6]),
        .I1(\rStoredData[3]_i_46_n_0 ),
        .I2(s_axis_video_tdata[9]),
        .I3(\rStoredData[5]_i_22__1_n_0 ),
        .I4(s_axis_video_tdata[5]),
        .I5(\rStoredData[3]_i_47__1_n_0 ),
        .O(\rStoredData[3]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rStoredData[3]_i_20 
       (.I0(\rStoredData[3]_i_50_n_0 ),
        .I1(\rStoredData[3]_i_51__1_n_0 ),
        .I2(s_axis_video_tdata[6]),
        .I3(\rStoredData[4]_i_14__1_n_0 ),
        .I4(s_axis_video_tdata[9]),
        .I5(\rStoredData[3]_i_52__1_n_0 ),
        .O(\rStoredData[3]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rStoredData[3]_i_24 
       (.I0(\rStoredData[3]_i_59_n_0 ),
        .I1(\rStoredData[3]_i_60_n_0 ),
        .I2(s_axis_video_tdata[8]),
        .I3(\rStoredData[5]_i_20_n_0 ),
        .I4(s_axis_video_tdata[6]),
        .I5(\rStoredData[3]_i_61_n_0 ),
        .O(\rStoredData[3]_i_24_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \rStoredData[3]_i_25 
       (.I0(\rStoredData[3]_i_62_n_0 ),
        .I1(s_axis_video_tdata[8]),
        .I2(\rStoredData[3]_i_63_n_0 ),
        .I3(s_axis_video_tdata[6]),
        .I4(\rStoredData[3]_i_64_n_0 ),
        .O(\rStoredData[3]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hB833B833CCFFCCCC)) 
    \rStoredData[3]_i_30 
       (.I0(\rStoredData[3]_i_36_n_0 ),
        .I1(s_axis_video_tdata[5]),
        .I2(\rStoredData[3]_i_37_n_0 ),
        .I3(s_axis_video_tdata[6]),
        .I4(\rStoredData[5]_i_35__1_n_0 ),
        .I5(s_axis_video_tdata[4]),
        .O(\rStoredData[3]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'h00FF00FF8BFF8B00)) 
    \rStoredData[3]_i_31 
       (.I0(\rStoredData[5]_i_36_n_0 ),
        .I1(s_axis_video_tdata[6]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[5]),
        .I4(\rStoredData[3]_i_73__1_n_0 ),
        .I5(s_axis_video_tdata[4]),
        .O(\rStoredData[3]_i_31_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \rStoredData[3]_i_34 
       (.I0(s_axis_video_tdata[3]),
        .I1(s_axis_video_tdata[2]),
        .I2(s_axis_video_tdata[1]),
        .O(\rStoredData[3]_i_34_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hFFF8)) 
    \rStoredData[3]_i_35 
       (.I0(s_axis_video_tdata[1]),
        .I1(s_axis_video_tdata[0]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[2]),
        .O(\rStoredData[3]_i_35_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h07FF)) 
    \rStoredData[3]_i_36 
       (.I0(s_axis_video_tdata[1]),
        .I1(s_axis_video_tdata[0]),
        .I2(s_axis_video_tdata[2]),
        .I3(s_axis_video_tdata[3]),
        .O(\rStoredData[3]_i_36_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hFFC8)) 
    \rStoredData[3]_i_37 
       (.I0(s_axis_video_tdata[0]),
        .I1(s_axis_video_tdata[2]),
        .I2(s_axis_video_tdata[1]),
        .I3(s_axis_video_tdata[3]),
        .O(\rStoredData[3]_i_37_n_0 ));
  LUT6 #(
    .INIT(64'h55555555520A420A)) 
    \rStoredData[3]_i_38 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[1]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[0]),
        .I5(s_axis_video_tdata[4]),
        .O(\rStoredData[3]_i_38_n_0 ));
  LUT6 #(
    .INIT(64'h9555555555555550)) 
    \rStoredData[3]_i_39 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[0]),
        .I2(s_axis_video_tdata[4]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[3]),
        .I5(s_axis_video_tdata[1]),
        .O(\rStoredData[3]_i_39_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \rStoredData[3]_i_4 
       (.I0(\rStoredData[3]_i_9_n_0 ),
        .I1(s_axis_video_tdata[9]),
        .I2(\rStoredData[3]_i_10_n_0 ),
        .I3(sGammaReg[1]),
        .I4(s_axis_video_tdata[5]),
        .O(\rStoredData[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hA222776623774558)) 
    \rStoredData[3]_i_40 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[3]),
        .I5(s_axis_video_tdata[2]),
        .O(\rStoredData[3]_i_40_n_0 ));
  LUT6 #(
    .INIT(64'h000A0A0ABFFFFFF5)) 
    \rStoredData[3]_i_41 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[0]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[4]),
        .O(\rStoredData[3]_i_41_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \rStoredData[3]_i_42 
       (.I0(s_axis_video_tdata[3]),
        .I1(s_axis_video_tdata[2]),
        .I2(s_axis_video_tdata[4]),
        .O(\rStoredData[3]_i_42_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hC8880000)) 
    \rStoredData[3]_i_43__1 
       (.I0(s_axis_video_tdata[2]),
        .I1(s_axis_video_tdata[3]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[4]),
        .O(\rStoredData[3]_i_43__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \rStoredData[3]_i_44__1 
       (.I0(s_axis_video_tdata[3]),
        .I1(s_axis_video_tdata[2]),
        .I2(s_axis_video_tdata[1]),
        .O(\rStoredData[3]_i_44__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h3F7F)) 
    \rStoredData[3]_i_45__1 
       (.I0(s_axis_video_tdata[0]),
        .I1(s_axis_video_tdata[3]),
        .I2(s_axis_video_tdata[2]),
        .I3(s_axis_video_tdata[1]),
        .O(\rStoredData[3]_i_45__1_n_0 ));
  LUT6 #(
    .INIT(64'h555F557FEAAAAAAA)) 
    \rStoredData[3]_i_46 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[0]),
        .I2(s_axis_video_tdata[2]),
        .I3(s_axis_video_tdata[3]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[4]),
        .O(\rStoredData[3]_i_46_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \rStoredData[3]_i_47__1 
       (.I0(s_axis_video_tdata[2]),
        .I1(s_axis_video_tdata[3]),
        .I2(s_axis_video_tdata[4]),
        .O(\rStoredData[3]_i_47__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rStoredData[3]_i_5 
       (.I0(\rStoredData[3]_i_11_n_0 ),
        .I1(\rStoredData[3]_i_12_n_0 ),
        .I2(s_axis_video_tdata[9]),
        .I3(\rStoredData_reg[3]_i_13_n_0 ),
        .I4(s_axis_video_tdata[7]),
        .I5(\rStoredData_reg[3]_i_14_n_0 ),
        .O(\rStoredData[3]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h333337FC)) 
    \rStoredData[3]_i_50 
       (.I0(s_axis_video_tdata[1]),
        .I1(s_axis_video_tdata[5]),
        .I2(s_axis_video_tdata[2]),
        .I3(s_axis_video_tdata[3]),
        .I4(s_axis_video_tdata[4]),
        .O(\rStoredData[3]_i_50_n_0 ));
  LUT6 #(
    .INIT(64'h7A6A6A6AAAAAAAAA)) 
    \rStoredData[3]_i_51__1 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[2]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[0]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[4]),
        .O(\rStoredData[3]_i_51__1_n_0 ));
  LUT6 #(
    .INIT(64'h0F70F0F0F0F0F0F0)) 
    \rStoredData[3]_i_52__1 
       (.I0(s_axis_video_tdata[0]),
        .I1(s_axis_video_tdata[1]),
        .I2(s_axis_video_tdata[5]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[3]),
        .I5(s_axis_video_tdata[4]),
        .O(\rStoredData[3]_i_52__1_n_0 ));
  LUT6 #(
    .INIT(64'hF5F5F55550505042)) 
    \rStoredData[3]_i_55 
       (.I0(s_axis_video_tdata[6]),
        .I1(s_axis_video_tdata[1]),
        .I2(s_axis_video_tdata[4]),
        .I3(s_axis_video_tdata[3]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[5]),
        .O(\rStoredData[3]_i_55_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAABB99B99D)) 
    \rStoredData[3]_i_56 
       (.I0(s_axis_video_tdata[6]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[1]),
        .I3(s_axis_video_tdata[3]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[5]),
        .O(\rStoredData[3]_i_56_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hFF80)) 
    \rStoredData[3]_i_59 
       (.I0(s_axis_video_tdata[2]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[5]),
        .O(\rStoredData[3]_i_59_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \rStoredData[3]_i_6 
       (.I0(\rStoredData[3]_i_15_n_0 ),
        .I1(s_axis_video_tdata[9]),
        .I2(\rStoredData[3]_i_16_n_0 ),
        .I3(s_axis_video_tdata[7]),
        .I4(\rStoredData[3]_i_17_n_0 ),
        .O(\rStoredData[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h01111111FFFFFFFF)) 
    \rStoredData[3]_i_60 
       (.I0(s_axis_video_tdata[4]),
        .I1(s_axis_video_tdata[3]),
        .I2(s_axis_video_tdata[2]),
        .I3(s_axis_video_tdata[0]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[5]),
        .O(\rStoredData[3]_i_60_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA880001115555)) 
    \rStoredData[3]_i_61 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[2]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[3]),
        .I5(s_axis_video_tdata[4]),
        .O(\rStoredData[3]_i_61_n_0 ));
  LUT6 #(
    .INIT(64'h333333BB33339CCC)) 
    \rStoredData[3]_i_62 
       (.I0(s_axis_video_tdata[6]),
        .I1(s_axis_video_tdata[5]),
        .I2(s_axis_video_tdata[1]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[4]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[3]_i_62_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h2BF5ABF4)) 
    \rStoredData[3]_i_63 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[2]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[4]),
        .I4(s_axis_video_tdata[1]),
        .O(\rStoredData[3]_i_63_n_0 ));
  LUT6 #(
    .INIT(64'h0000FAAA555FB5F0)) 
    \rStoredData[3]_i_64 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[0]),
        .I2(s_axis_video_tdata[2]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[4]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[3]_i_64_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAA80FFFFFFFF)) 
    \rStoredData[3]_i_65 
       (.I0(s_axis_video_tdata[4]),
        .I1(s_axis_video_tdata[1]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[3]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[6]),
        .O(\rStoredData[3]_i_65_n_0 ));
  LUT4 #(
    .INIT(16'hFF01)) 
    \rStoredData[3]_i_66 
       (.I0(s_axis_video_tdata[4]),
        .I1(s_axis_video_tdata[2]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[6]),
        .O(\rStoredData[3]_i_66_n_0 ));
  LUT6 #(
    .INIT(64'h504040400A0A0A0A)) 
    \rStoredData[3]_i_67 
       (.I0(s_axis_video_tdata[6]),
        .I1(s_axis_video_tdata[2]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[0]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[4]),
        .O(\rStoredData[3]_i_67_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA080FFFFFFFF)) 
    \rStoredData[3]_i_68 
       (.I0(s_axis_video_tdata[4]),
        .I1(s_axis_video_tdata[0]),
        .I2(s_axis_video_tdata[2]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[3]),
        .I5(s_axis_video_tdata[6]),
        .O(\rStoredData[3]_i_68_n_0 ));
  LUT5 #(
    .INIT(32'hBBBFFDFD)) 
    \rStoredData[3]_i_69 
       (.I0(s_axis_video_tdata[6]),
        .I1(s_axis_video_tdata[3]),
        .I2(s_axis_video_tdata[2]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[4]),
        .O(\rStoredData[3]_i_69_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rStoredData[3]_i_7 
       (.I0(\rStoredData[3]_i_18_n_0 ),
        .I1(\rStoredData_reg[3]_i_19_n_0 ),
        .I2(s_axis_video_tdata[7]),
        .I3(\rStoredData[3]_i_20_n_0 ),
        .I4(s_axis_video_tdata[8]),
        .I5(\rStoredData_reg[3]_i_21_n_0 ),
        .O(\rStoredData[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h1555555500000000)) 
    \rStoredData[3]_i_70 
       (.I0(s_axis_video_tdata[4]),
        .I1(s_axis_video_tdata[1]),
        .I2(s_axis_video_tdata[2]),
        .I3(s_axis_video_tdata[3]),
        .I4(s_axis_video_tdata[0]),
        .I5(s_axis_video_tdata[6]),
        .O(\rStoredData[3]_i_70_n_0 ));
  LUT6 #(
    .INIT(64'h0001555500000000)) 
    \rStoredData[3]_i_71 
       (.I0(s_axis_video_tdata[4]),
        .I1(s_axis_video_tdata[0]),
        .I2(s_axis_video_tdata[1]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[3]),
        .I5(s_axis_video_tdata[6]),
        .O(\rStoredData[3]_i_71_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFD55555554)) 
    \rStoredData[3]_i_72 
       (.I0(s_axis_video_tdata[6]),
        .I1(s_axis_video_tdata[0]),
        .I2(s_axis_video_tdata[2]),
        .I3(s_axis_video_tdata[3]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[4]),
        .O(\rStoredData[3]_i_72_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hF0E0)) 
    \rStoredData[3]_i_73__1 
       (.I0(s_axis_video_tdata[0]),
        .I1(s_axis_video_tdata[1]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[2]),
        .O(\rStoredData[3]_i_73__1_n_0 ));
  LUT5 #(
    .INIT(32'hFFF08000)) 
    \rStoredData[3]_i_74 
       (.I0(s_axis_video_tdata[1]),
        .I1(s_axis_video_tdata[2]),
        .I2(s_axis_video_tdata[6]),
        .I3(s_axis_video_tdata[3]),
        .I4(s_axis_video_tdata[4]),
        .O(\rStoredData[3]_i_74_n_0 ));
  LUT6 #(
    .INIT(64'h00010101777F7F7F)) 
    \rStoredData[3]_i_75 
       (.I0(s_axis_video_tdata[6]),
        .I1(s_axis_video_tdata[3]),
        .I2(s_axis_video_tdata[2]),
        .I3(s_axis_video_tdata[0]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[4]),
        .O(\rStoredData[3]_i_75_n_0 ));
  LUT6 #(
    .INIT(64'h5F0F4F0F0F2A0AAA)) 
    \rStoredData[3]_i_76 
       (.I0(s_axis_video_tdata[6]),
        .I1(s_axis_video_tdata[0]),
        .I2(s_axis_video_tdata[4]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[3]_i_76_n_0 ));
  LUT6 #(
    .INIT(64'hEA99BB99AB99BB99)) 
    \rStoredData[3]_i_77 
       (.I0(s_axis_video_tdata[6]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[3]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[1]),
        .O(\rStoredData[3]_i_77_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAB9B9B99D)) 
    \rStoredData[3]_i_78 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[3]),
        .I2(s_axis_video_tdata[2]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[0]),
        .I5(s_axis_video_tdata[4]),
        .O(\rStoredData[3]_i_78_n_0 ));
  LUT5 #(
    .INIT(32'hAAA81555)) 
    \rStoredData[3]_i_79 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[1]),
        .I2(s_axis_video_tdata[2]),
        .I3(s_axis_video_tdata[3]),
        .I4(s_axis_video_tdata[4]),
        .O(\rStoredData[3]_i_79_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rStoredData[3]_i_8 
       (.I0(\rStoredData_reg[3]_i_22_n_0 ),
        .I1(\rStoredData_reg[3]_i_23_n_0 ),
        .I2(s_axis_video_tdata[7]),
        .I3(\rStoredData[3]_i_24_n_0 ),
        .I4(s_axis_video_tdata[9]),
        .I5(\rStoredData[3]_i_25_n_0 ),
        .O(\rStoredData[3]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h62AAAAAA2AAAAAAB)) 
    \rStoredData[3]_i_80 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[1]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[3]),
        .I5(s_axis_video_tdata[0]),
        .O(\rStoredData[3]_i_80_n_0 ));
  LUT6 #(
    .INIT(64'hC0C3830333333333)) 
    \rStoredData[3]_i_81 
       (.I0(s_axis_video_tdata[0]),
        .I1(s_axis_video_tdata[5]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[4]),
        .O(\rStoredData[3]_i_81_n_0 ));
  LUT6 #(
    .INIT(64'hFD55F555400A000A)) 
    \rStoredData[3]_i_82 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[0]),
        .I2(s_axis_video_tdata[2]),
        .I3(s_axis_video_tdata[3]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[4]),
        .O(\rStoredData[3]_i_82_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAAAA1)) 
    \rStoredData[3]_i_83 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[1]),
        .I2(s_axis_video_tdata[2]),
        .I3(s_axis_video_tdata[3]),
        .I4(s_axis_video_tdata[4]),
        .O(\rStoredData[3]_i_83_n_0 ));
  LUT5 #(
    .INIT(32'hCCCFB333)) 
    \rStoredData[3]_i_84 
       (.I0(s_axis_video_tdata[1]),
        .I1(s_axis_video_tdata[5]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[4]),
        .O(\rStoredData[3]_i_84_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA89999911)) 
    \rStoredData[3]_i_85 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[3]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[4]),
        .O(\rStoredData[3]_i_85_n_0 ));
  LUT6 #(
    .INIT(64'h33334CCC3000CCCC)) 
    \rStoredData[3]_i_86 
       (.I0(s_axis_video_tdata[0]),
        .I1(s_axis_video_tdata[5]),
        .I2(s_axis_video_tdata[1]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[4]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[3]_i_86_n_0 ));
  LUT6 #(
    .INIT(64'h3333333333304CCC)) 
    \rStoredData[3]_i_87 
       (.I0(s_axis_video_tdata[0]),
        .I1(s_axis_video_tdata[5]),
        .I2(s_axis_video_tdata[2]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[3]),
        .I5(s_axis_video_tdata[4]),
        .O(\rStoredData[3]_i_87_n_0 ));
  LUT6 #(
    .INIT(64'h5F5FAAAA5F5EAAAA)) 
    \rStoredData[3]_i_88 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[2]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[4]),
        .I5(s_axis_video_tdata[0]),
        .O(\rStoredData[3]_i_88_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \rStoredData[3]_i_89 
       (.I0(s_axis_video_tdata[2]),
        .I1(s_axis_video_tdata[1]),
        .I2(s_axis_video_tdata[4]),
        .I3(s_axis_video_tdata[0]),
        .I4(s_axis_video_tdata[3]),
        .I5(s_axis_video_tdata[5]),
        .O(\rStoredData[3]_i_89_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rStoredData[3]_i_9 
       (.I0(\rStoredData_reg[3]_i_26_n_0 ),
        .I1(\rStoredData_reg[3]_i_27_n_0 ),
        .I2(s_axis_video_tdata[8]),
        .I3(\rStoredData_reg[3]_i_28_n_0 ),
        .I4(s_axis_video_tdata[7]),
        .I5(\rStoredData_reg[3]_i_29_n_0 ),
        .O(\rStoredData[3]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8B8FF00)) 
    \rStoredData[4]_i_1 
       (.I0(\rStoredData_reg[4]_i_2_n_0 ),
        .I1(s_axis_video_tdata[8]),
        .I2(\rStoredData_reg[4]_i_3_n_0 ),
        .I3(\rStoredData[4]_i_4_n_0 ),
        .I4(sGammaReg[2]),
        .O(p_0_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \rStoredData[4]_i_12__1 
       (.I0(s_axis_video_tdata[4]),
        .I1(s_axis_video_tdata[2]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[5]),
        .O(\rStoredData[4]_i_12__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00003F7F)) 
    \rStoredData[4]_i_13__1 
       (.I0(s_axis_video_tdata[1]),
        .I1(s_axis_video_tdata[2]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[0]),
        .I4(s_axis_video_tdata[4]),
        .O(\rStoredData[4]_i_13__1_n_0 ));
  LUT6 #(
    .INIT(64'h000000007FFFFFFF)) 
    \rStoredData[4]_i_14__1 
       (.I0(s_axis_video_tdata[4]),
        .I1(s_axis_video_tdata[1]),
        .I2(s_axis_video_tdata[2]),
        .I3(s_axis_video_tdata[3]),
        .I4(s_axis_video_tdata[0]),
        .I5(s_axis_video_tdata[5]),
        .O(\rStoredData[4]_i_14__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hFFEA)) 
    \rStoredData[4]_i_15 
       (.I0(s_axis_video_tdata[3]),
        .I1(s_axis_video_tdata[1]),
        .I2(s_axis_video_tdata[2]),
        .I3(s_axis_video_tdata[4]),
        .O(\rStoredData[4]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hFFFFC888)) 
    \rStoredData[4]_i_17__1 
       (.I0(s_axis_video_tdata[2]),
        .I1(s_axis_video_tdata[3]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[4]),
        .O(\rStoredData[4]_i_17__1_n_0 ));
  LUT6 #(
    .INIT(64'h00000001FFFFFFFF)) 
    \rStoredData[4]_i_18 
       (.I0(s_axis_video_tdata[4]),
        .I1(s_axis_video_tdata[1]),
        .I2(s_axis_video_tdata[2]),
        .I3(s_axis_video_tdata[3]),
        .I4(s_axis_video_tdata[0]),
        .I5(s_axis_video_tdata[5]),
        .O(\rStoredData[4]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h666663733333322A)) 
    \rStoredData[4]_i_25 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[1]),
        .I3(s_axis_video_tdata[0]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[4]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h555F55FFEAAAAAAA)) 
    \rStoredData[4]_i_26 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[0]),
        .I2(s_axis_video_tdata[2]),
        .I3(s_axis_video_tdata[3]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[4]),
        .O(\rStoredData[4]_i_26_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \rStoredData[4]_i_27 
       (.I0(\rStoredData[4]_i_39_n_0 ),
        .I1(s_axis_video_tdata[8]),
        .I2(\rStoredData[4]_i_40_n_0 ),
        .I3(s_axis_video_tdata[6]),
        .I4(\rStoredData[4]_i_41_n_0 ),
        .O(\rStoredData[4]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h0F00DFDF0F00D0D0)) 
    \rStoredData[4]_i_28 
       (.I0(s_axis_video_tdata[5]),
        .I1(\rStoredData[4]_i_42_n_0 ),
        .I2(s_axis_video_tdata[8]),
        .I3(\rStoredData[5]_i_20_n_0 ),
        .I4(s_axis_video_tdata[6]),
        .I5(\rStoredData[4]_i_43_n_0 ),
        .O(\rStoredData[4]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h3077304430FF30FF)) 
    \rStoredData[4]_i_29 
       (.I0(\rStoredData[5]_i_17_n_0 ),
        .I1(s_axis_video_tdata[8]),
        .I2(\rStoredData[5]_i_19_n_0 ),
        .I3(s_axis_video_tdata[6]),
        .I4(\rStoredData[4]_i_44_n_0 ),
        .I5(s_axis_video_tdata[5]),
        .O(\rStoredData[4]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFC88888888)) 
    \rStoredData[4]_i_30 
       (.I0(\rStoredData[4]_i_45_n_0 ),
        .I1(s_axis_video_tdata[8]),
        .I2(s_axis_video_tdata[5]),
        .I3(\rStoredData[4]_i_46_n_0 ),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[6]),
        .O(\rStoredData[4]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \rStoredData[4]_i_31 
       (.I0(\rStoredData[4]_i_47_n_0 ),
        .I1(s_axis_video_tdata[9]),
        .I2(\rStoredData[4]_i_48_n_0 ),
        .I3(s_axis_video_tdata[5]),
        .I4(s_axis_video_tdata[6]),
        .I5(\rStoredData[4]_i_49_n_0 ),
        .O(\rStoredData[4]_i_31_n_0 ));
  LUT6 #(
    .INIT(64'hB8BBB888B8BBB8BB)) 
    \rStoredData[4]_i_32 
       (.I0(\rStoredData[4]_i_50_n_0 ),
        .I1(s_axis_video_tdata[6]),
        .I2(\rStoredData[4]_i_51__1_n_0 ),
        .I3(s_axis_video_tdata[9]),
        .I4(\rStoredData[4]_i_52__1_n_0 ),
        .I5(s_axis_video_tdata[5]),
        .O(\rStoredData[4]_i_32_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rStoredData[4]_i_33 
       (.I0(\rStoredData[4]_i_53_n_0 ),
        .I1(\rStoredData[4]_i_54_n_0 ),
        .I2(s_axis_video_tdata[6]),
        .I3(\rStoredData[4]_i_55_n_0 ),
        .I4(s_axis_video_tdata[9]),
        .I5(\rStoredData[4]_i_56_n_0 ),
        .O(\rStoredData[4]_i_33_n_0 ));
  LUT6 #(
    .INIT(64'hE5A5E0A5A5A5A5A5)) 
    \rStoredData[4]_i_34 
       (.I0(s_axis_video_tdata[6]),
        .I1(\rStoredData[3]_i_37_n_0 ),
        .I2(s_axis_video_tdata[9]),
        .I3(s_axis_video_tdata[4]),
        .I4(\rStoredData[3]_i_34_n_0 ),
        .I5(s_axis_video_tdata[5]),
        .O(\rStoredData[4]_i_34_n_0 ));
  LUT6 #(
    .INIT(64'hBBB8FF33BBB8CC00)) 
    \rStoredData[4]_i_35 
       (.I0(\rStoredData[4]_i_57_n_0 ),
        .I1(s_axis_video_tdata[7]),
        .I2(\rStoredData[4]_i_13__1_n_0 ),
        .I3(s_axis_video_tdata[6]),
        .I4(s_axis_video_tdata[5]),
        .I5(\rStoredData[4]_i_58_n_0 ),
        .O(\rStoredData[4]_i_35_n_0 ));
  LUT6 #(
    .INIT(64'hBFC0FFFFBFC00000)) 
    \rStoredData[4]_i_36 
       (.I0(\rStoredData[3]_i_36_n_0 ),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[5]),
        .I3(s_axis_video_tdata[6]),
        .I4(s_axis_video_tdata[7]),
        .I5(\rStoredData[4]_i_59_n_0 ),
        .O(\rStoredData[4]_i_36_n_0 ));
  LUT6 #(
    .INIT(64'hAFCFAFC000C000C0)) 
    \rStoredData[4]_i_37 
       (.I0(\rStoredData[4]_i_60__1_n_0 ),
        .I1(\rStoredData[5]_i_27_n_0 ),
        .I2(s_axis_video_tdata[7]),
        .I3(s_axis_video_tdata[5]),
        .I4(\rStoredData[4]_i_61__1_n_0 ),
        .I5(s_axis_video_tdata[6]),
        .O(\rStoredData[4]_i_37_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCCCCFF3F3F3B3)) 
    \rStoredData[4]_i_38 
       (.I0(s_axis_video_tdata[2]),
        .I1(s_axis_video_tdata[7]),
        .I2(s_axis_video_tdata[5]),
        .I3(s_axis_video_tdata[4]),
        .I4(s_axis_video_tdata[3]),
        .I5(s_axis_video_tdata[6]),
        .O(\rStoredData[4]_i_38_n_0 ));
  LUT6 #(
    .INIT(64'hA889A98955555555)) 
    \rStoredData[4]_i_39 
       (.I0(s_axis_video_tdata[6]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[5]),
        .O(\rStoredData[4]_i_39_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rStoredData[4]_i_4 
       (.I0(\rStoredData_reg[4]_i_9_n_0 ),
        .I1(\rStoredData_reg[4]_i_10_n_0 ),
        .I2(sGammaReg[0]),
        .I3(\rStoredData_reg[4]_i_11_n_0 ),
        .I4(sGammaReg[1]),
        .I5(s_axis_video_tdata[6]),
        .O(\rStoredData[4]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h80033333)) 
    \rStoredData[4]_i_40 
       (.I0(s_axis_video_tdata[1]),
        .I1(s_axis_video_tdata[5]),
        .I2(s_axis_video_tdata[2]),
        .I3(s_axis_video_tdata[3]),
        .I4(s_axis_video_tdata[4]),
        .O(\rStoredData[4]_i_40_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAFFF555554000)) 
    \rStoredData[4]_i_41 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[0]),
        .I2(s_axis_video_tdata[1]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[3]),
        .I5(s_axis_video_tdata[4]),
        .O(\rStoredData[4]_i_41_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h0000007F)) 
    \rStoredData[4]_i_42 
       (.I0(s_axis_video_tdata[1]),
        .I1(s_axis_video_tdata[0]),
        .I2(s_axis_video_tdata[2]),
        .I3(s_axis_video_tdata[3]),
        .I4(s_axis_video_tdata[4]),
        .O(\rStoredData[4]_i_42_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEEEEEAAA)) 
    \rStoredData[4]_i_43 
       (.I0(s_axis_video_tdata[4]),
        .I1(s_axis_video_tdata[3]),
        .I2(s_axis_video_tdata[1]),
        .I3(s_axis_video_tdata[0]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[5]),
        .O(\rStoredData[4]_i_43_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00007FFF)) 
    \rStoredData[4]_i_44 
       (.I0(s_axis_video_tdata[0]),
        .I1(s_axis_video_tdata[1]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[4]),
        .O(\rStoredData[4]_i_44_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFFFFCCC8)) 
    \rStoredData[4]_i_45 
       (.I0(s_axis_video_tdata[1]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[5]),
        .O(\rStoredData[4]_i_45_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \rStoredData[4]_i_46 
       (.I0(s_axis_video_tdata[1]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[3]),
        .O(\rStoredData[4]_i_46_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h00001555)) 
    \rStoredData[4]_i_47 
       (.I0(s_axis_video_tdata[3]),
        .I1(s_axis_video_tdata[0]),
        .I2(s_axis_video_tdata[1]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[4]),
        .O(\rStoredData[4]_i_47_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h1F)) 
    \rStoredData[4]_i_48 
       (.I0(s_axis_video_tdata[3]),
        .I1(s_axis_video_tdata[2]),
        .I2(s_axis_video_tdata[4]),
        .O(\rStoredData[4]_i_48_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFCCCCCCCC8)) 
    \rStoredData[4]_i_49 
       (.I0(s_axis_video_tdata[1]),
        .I1(s_axis_video_tdata[9]),
        .I2(s_axis_video_tdata[4]),
        .I3(s_axis_video_tdata[3]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[5]),
        .O(\rStoredData[4]_i_49_n_0 ));
  LUT6 #(
    .INIT(64'hB8BB3333B8BB0000)) 
    \rStoredData[4]_i_5 
       (.I0(\rStoredData[4]_i_12__1_n_0 ),
        .I1(s_axis_video_tdata[7]),
        .I2(\rStoredData[4]_i_13__1_n_0 ),
        .I3(s_axis_video_tdata[5]),
        .I4(s_axis_video_tdata[6]),
        .I5(\rStoredData[6]_i_5_n_0 ),
        .O(\rStoredData[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h300C040CCCCCCCCC)) 
    \rStoredData[4]_i_50 
       (.I0(s_axis_video_tdata[1]),
        .I1(s_axis_video_tdata[9]),
        .I2(s_axis_video_tdata[4]),
        .I3(s_axis_video_tdata[3]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[5]),
        .O(\rStoredData[4]_i_50_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF80000000)) 
    \rStoredData[4]_i_51__1 
       (.I0(s_axis_video_tdata[4]),
        .I1(s_axis_video_tdata[1]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[0]),
        .I5(s_axis_video_tdata[5]),
        .O(\rStoredData[4]_i_51__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h5777FFFF)) 
    \rStoredData[4]_i_52__1 
       (.I0(s_axis_video_tdata[3]),
        .I1(s_axis_video_tdata[2]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[4]),
        .O(\rStoredData[4]_i_52__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h0000557F)) 
    \rStoredData[4]_i_53 
       (.I0(s_axis_video_tdata[4]),
        .I1(s_axis_video_tdata[2]),
        .I2(s_axis_video_tdata[1]),
        .I3(s_axis_video_tdata[3]),
        .I4(s_axis_video_tdata[5]),
        .O(\rStoredData[4]_i_53_n_0 ));
  LUT6 #(
    .INIT(64'hA000800000000001)) 
    \rStoredData[4]_i_54 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[0]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[4]),
        .O(\rStoredData[4]_i_54_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hFFFFEAAA)) 
    \rStoredData[4]_i_55 
       (.I0(s_axis_video_tdata[4]),
        .I1(s_axis_video_tdata[2]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[5]),
        .O(\rStoredData[4]_i_55_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFAAFEAA)) 
    \rStoredData[4]_i_56 
       (.I0(s_axis_video_tdata[4]),
        .I1(s_axis_video_tdata[0]),
        .I2(s_axis_video_tdata[1]),
        .I3(s_axis_video_tdata[3]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[5]),
        .O(\rStoredData[4]_i_56_n_0 ));
  LUT6 #(
    .INIT(64'h555454540A2A2A2A)) 
    \rStoredData[4]_i_57 
       (.I0(s_axis_video_tdata[6]),
        .I1(s_axis_video_tdata[2]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[0]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[4]),
        .O(\rStoredData[4]_i_57_n_0 ));
  LUT6 #(
    .INIT(64'hFEEEFFFF00000000)) 
    \rStoredData[4]_i_58 
       (.I0(s_axis_video_tdata[2]),
        .I1(s_axis_video_tdata[3]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[6]),
        .I5(s_axis_video_tdata[4]),
        .O(\rStoredData[4]_i_58_n_0 ));
  LUT6 #(
    .INIT(64'h001FFFFFFFF00000)) 
    \rStoredData[4]_i_59 
       (.I0(s_axis_video_tdata[2]),
        .I1(s_axis_video_tdata[1]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[4]),
        .I4(s_axis_video_tdata[5]),
        .I5(s_axis_video_tdata[6]),
        .O(\rStoredData[4]_i_59_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF80000000)) 
    \rStoredData[4]_i_6 
       (.I0(s_axis_video_tdata[6]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[5]),
        .I5(s_axis_video_tdata[7]),
        .O(\rStoredData[4]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hFFFF8000)) 
    \rStoredData[4]_i_60__1 
       (.I0(s_axis_video_tdata[0]),
        .I1(s_axis_video_tdata[2]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[4]),
        .O(\rStoredData[4]_i_60__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hFFFFCCC8)) 
    \rStoredData[4]_i_61__1 
       (.I0(s_axis_video_tdata[2]),
        .I1(s_axis_video_tdata[3]),
        .I2(s_axis_video_tdata[1]),
        .I3(s_axis_video_tdata[0]),
        .I4(s_axis_video_tdata[4]),
        .O(\rStoredData[4]_i_61__1_n_0 ));
  LUT6 #(
    .INIT(64'hB888FFFFB8880000)) 
    \rStoredData[4]_i_7 
       (.I0(\rStoredData[4]_i_14__1_n_0 ),
        .I1(s_axis_video_tdata[6]),
        .I2(\rStoredData[4]_i_15_n_0 ),
        .I3(s_axis_video_tdata[5]),
        .I4(s_axis_video_tdata[7]),
        .I5(\rStoredData_reg[4]_i_16_n_0 ),
        .O(\rStoredData[4]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAF00AF00FCFFFC00)) 
    \rStoredData[4]_i_8 
       (.I0(\rStoredData[5]_i_22__1_n_0 ),
        .I1(\rStoredData[4]_i_17__1_n_0 ),
        .I2(s_axis_video_tdata[5]),
        .I3(s_axis_video_tdata[7]),
        .I4(\rStoredData[4]_i_18_n_0 ),
        .I5(s_axis_video_tdata[6]),
        .O(\rStoredData[4]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \rStoredData[5]_i_1 
       (.I0(p_0_out[5]),
        .I1(\rStoredData[5]_i_3_n_0 ),
        .I2(sGammaReg[0]),
        .I3(\rStoredData[5]_i_4_n_0 ),
        .I4(sGammaReg[2]),
        .O(p_0_in[5]));
  LUT6 #(
    .INIT(64'hFF51FFFFFF510000)) 
    \rStoredData[5]_i_10 
       (.I0(s_axis_video_tdata[6]),
        .I1(s_axis_video_tdata[5]),
        .I2(\rStoredData[5]_i_22__1_n_0 ),
        .I3(s_axis_video_tdata[9]),
        .I4(s_axis_video_tdata[8]),
        .I5(\rStoredData[5]_i_23_n_0 ),
        .O(\rStoredData[5]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFF0F0AF8FAF8F)) 
    \rStoredData[5]_i_12 
       (.I0(s_axis_video_tdata[6]),
        .I1(\rStoredData[5]_i_26_n_0 ),
        .I2(s_axis_video_tdata[8]),
        .I3(s_axis_video_tdata[5]),
        .I4(\rStoredData[5]_i_27_n_0 ),
        .I5(s_axis_video_tdata[7]),
        .O(\rStoredData[5]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \rStoredData[5]_i_14__1 
       (.I0(s_axis_video_tdata[2]),
        .I1(s_axis_video_tdata[3]),
        .I2(s_axis_video_tdata[1]),
        .O(\rStoredData[5]_i_14__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \rStoredData[5]_i_15__1 
       (.I0(s_axis_video_tdata[1]),
        .I1(s_axis_video_tdata[2]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[0]),
        .O(\rStoredData[5]_i_15__1_n_0 ));
  LUT6 #(
    .INIT(64'hB833B83333333300)) 
    \rStoredData[5]_i_16 
       (.I0(\rStoredData[6]_i_18__1_n_0 ),
        .I1(s_axis_video_tdata[6]),
        .I2(\rStoredData[5]_i_15__1_n_0 ),
        .I3(s_axis_video_tdata[5]),
        .I4(\rStoredData[5]_i_30__1_n_0 ),
        .I5(s_axis_video_tdata[4]),
        .O(\rStoredData[5]_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rStoredData[5]_i_17 
       (.I0(s_axis_video_tdata[4]),
        .I1(s_axis_video_tdata[3]),
        .O(\rStoredData[5]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hEAAAAAAA00000000)) 
    \rStoredData[5]_i_18 
       (.I0(s_axis_video_tdata[4]),
        .I1(s_axis_video_tdata[2]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[0]),
        .I5(s_axis_video_tdata[5]),
        .O(\rStoredData[5]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hFEEEEEEE00000000)) 
    \rStoredData[5]_i_19 
       (.I0(s_axis_video_tdata[3]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[2]),
        .I3(s_axis_video_tdata[0]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[5]),
        .O(\rStoredData[5]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hFFF0EFEFFFF0E0E0)) 
    \rStoredData[5]_i_2 
       (.I0(s_axis_video_tdata[7]),
        .I1(\rStoredData[5]_i_5_n_0 ),
        .I2(s_axis_video_tdata[8]),
        .I3(\rStoredData[5]_i_6_n_0 ),
        .I4(s_axis_video_tdata[9]),
        .I5(\rStoredData[5]_i_7_n_0 ),
        .O(p_0_out[5]));
  LUT6 #(
    .INIT(64'h00000111FFFFFFFF)) 
    \rStoredData[5]_i_20 
       (.I0(s_axis_video_tdata[2]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[1]),
        .I3(s_axis_video_tdata[0]),
        .I4(s_axis_video_tdata[3]),
        .I5(s_axis_video_tdata[5]),
        .O(\rStoredData[5]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h88BB88BBB8BBB888)) 
    \rStoredData[5]_i_21 
       (.I0(\rStoredData[6]_i_15_n_0 ),
        .I1(s_axis_video_tdata[8]),
        .I2(\rStoredData[5]_i_31_n_0 ),
        .I3(s_axis_video_tdata[6]),
        .I4(\rStoredData[5]_i_17_n_0 ),
        .I5(s_axis_video_tdata[5]),
        .O(\rStoredData[5]_i_21_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \rStoredData[5]_i_22__1 
       (.I0(s_axis_video_tdata[1]),
        .I1(s_axis_video_tdata[2]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[4]),
        .O(\rStoredData[5]_i_22__1_n_0 ));
  LUT6 #(
    .INIT(64'h55040504FFFFFFFF)) 
    \rStoredData[5]_i_23 
       (.I0(s_axis_video_tdata[5]),
        .I1(\rStoredData[5]_i_15__1_n_0 ),
        .I2(s_axis_video_tdata[4]),
        .I3(s_axis_video_tdata[9]),
        .I4(\rStoredData[5]_i_32__1_n_0 ),
        .I5(s_axis_video_tdata[6]),
        .O(\rStoredData[5]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hFFEAFAEA00000000)) 
    \rStoredData[5]_i_24 
       (.I0(s_axis_video_tdata[5]),
        .I1(\rStoredData[5]_i_33__1_n_0 ),
        .I2(s_axis_video_tdata[4]),
        .I3(s_axis_video_tdata[9]),
        .I4(\rStoredData[5]_i_34__1_n_0 ),
        .I5(s_axis_video_tdata[6]),
        .O(\rStoredData[5]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hC0C08080FCCCCCCC)) 
    \rStoredData[5]_i_25 
       (.I0(\rStoredData[7]_i_10__1_n_0 ),
        .I1(s_axis_video_tdata[6]),
        .I2(s_axis_video_tdata[5]),
        .I3(\rStoredData[5]_i_30__1_n_0 ),
        .I4(s_axis_video_tdata[4]),
        .I5(s_axis_video_tdata[9]),
        .O(\rStoredData[5]_i_25_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \rStoredData[5]_i_26 
       (.I0(s_axis_video_tdata[3]),
        .I1(s_axis_video_tdata[4]),
        .O(\rStoredData[5]_i_26_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h000057FF)) 
    \rStoredData[5]_i_27 
       (.I0(s_axis_video_tdata[4]),
        .I1(s_axis_video_tdata[1]),
        .I2(s_axis_video_tdata[2]),
        .I3(s_axis_video_tdata[3]),
        .I4(s_axis_video_tdata[6]),
        .O(\rStoredData[5]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hFBFB333333300000)) 
    \rStoredData[5]_i_28 
       (.I0(\rStoredData[5]_i_30__1_n_0 ),
        .I1(s_axis_video_tdata[7]),
        .I2(s_axis_video_tdata[4]),
        .I3(\rStoredData[5]_i_35__1_n_0 ),
        .I4(s_axis_video_tdata[5]),
        .I5(s_axis_video_tdata[6]),
        .O(\rStoredData[5]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h8383330333333333)) 
    \rStoredData[5]_i_29 
       (.I0(\rStoredData[5]_i_30__1_n_0 ),
        .I1(s_axis_video_tdata[7]),
        .I2(s_axis_video_tdata[6]),
        .I3(\rStoredData[5]_i_36_n_0 ),
        .I4(s_axis_video_tdata[4]),
        .I5(s_axis_video_tdata[5]),
        .O(\rStoredData[5]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rStoredData[5]_i_3 
       (.I0(\rStoredData[5]_i_8_n_0 ),
        .I1(\rStoredData[5]_i_9_n_0 ),
        .I2(sGammaReg[1]),
        .I3(\rStoredData[5]_i_10_n_0 ),
        .I4(s_axis_video_tdata[7]),
        .I5(\rStoredData_reg[5]_i_11_n_0 ),
        .O(\rStoredData[5]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hF080)) 
    \rStoredData[5]_i_30__1 
       (.I0(s_axis_video_tdata[1]),
        .I1(s_axis_video_tdata[0]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[2]),
        .O(\rStoredData[5]_i_30__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h1F)) 
    \rStoredData[5]_i_31 
       (.I0(s_axis_video_tdata[2]),
        .I1(s_axis_video_tdata[3]),
        .I2(s_axis_video_tdata[4]),
        .O(\rStoredData[5]_i_31_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h07)) 
    \rStoredData[5]_i_32__1 
       (.I0(s_axis_video_tdata[2]),
        .I1(s_axis_video_tdata[1]),
        .I2(s_axis_video_tdata[3]),
        .O(\rStoredData[5]_i_32__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \rStoredData[5]_i_33__1 
       (.I0(s_axis_video_tdata[3]),
        .I1(s_axis_video_tdata[2]),
        .O(\rStoredData[5]_i_33__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hFF80)) 
    \rStoredData[5]_i_34__1 
       (.I0(s_axis_video_tdata[2]),
        .I1(s_axis_video_tdata[1]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[3]),
        .O(\rStoredData[5]_i_34__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hC080)) 
    \rStoredData[5]_i_35__1 
       (.I0(s_axis_video_tdata[0]),
        .I1(s_axis_video_tdata[2]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[1]),
        .O(\rStoredData[5]_i_35__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h1F)) 
    \rStoredData[5]_i_36 
       (.I0(s_axis_video_tdata[1]),
        .I1(s_axis_video_tdata[2]),
        .I2(s_axis_video_tdata[3]),
        .O(\rStoredData[5]_i_36_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \rStoredData[5]_i_4 
       (.I0(\rStoredData[5]_i_12_n_0 ),
        .I1(s_axis_video_tdata[9]),
        .I2(\rStoredData_reg[5]_i_13_n_0 ),
        .I3(sGammaReg[1]),
        .I4(s_axis_video_tdata[7]),
        .O(\rStoredData[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA08000000000)) 
    \rStoredData[5]_i_5 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[1]),
        .I2(\rStoredData[7]_i_4__1_n_0 ),
        .I3(s_axis_video_tdata[0]),
        .I4(s_axis_video_tdata[4]),
        .I5(s_axis_video_tdata[6]),
        .O(\rStoredData[5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h8080000003033303)) 
    \rStoredData[5]_i_6 
       (.I0(\rStoredData[5]_i_14__1_n_0 ),
        .I1(s_axis_video_tdata[7]),
        .I2(s_axis_video_tdata[5]),
        .I3(\rStoredData[5]_i_15__1_n_0 ),
        .I4(s_axis_video_tdata[4]),
        .I5(s_axis_video_tdata[6]),
        .O(\rStoredData[5]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h45FFFFFF45FF0000)) 
    \rStoredData[5]_i_7 
       (.I0(s_axis_video_tdata[5]),
        .I1(\rStoredData[6]_i_12__1_n_0 ),
        .I2(s_axis_video_tdata[4]),
        .I3(s_axis_video_tdata[6]),
        .I4(s_axis_video_tdata[7]),
        .I5(\rStoredData[5]_i_16_n_0 ),
        .O(\rStoredData[5]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFF55FF55EA55EA00)) 
    \rStoredData[5]_i_8 
       (.I0(s_axis_video_tdata[9]),
        .I1(s_axis_video_tdata[5]),
        .I2(\rStoredData[5]_i_17_n_0 ),
        .I3(s_axis_video_tdata[8]),
        .I4(\rStoredData[5]_i_18_n_0 ),
        .I5(s_axis_video_tdata[6]),
        .O(\rStoredData[5]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFCBBFFFFFCBB0000)) 
    \rStoredData[5]_i_9 
       (.I0(\rStoredData[5]_i_19_n_0 ),
        .I1(s_axis_video_tdata[8]),
        .I2(\rStoredData[5]_i_20_n_0 ),
        .I3(s_axis_video_tdata[6]),
        .I4(s_axis_video_tdata[9]),
        .I5(\rStoredData[5]_i_21_n_0 ),
        .O(\rStoredData[5]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \rStoredData[6]_i_1 
       (.I0(p_0_out[6]),
        .I1(\rStoredData[6]_i_3__1_n_0 ),
        .I2(sGammaReg[0]),
        .I3(\rStoredData[6]_i_4_n_0 ),
        .I4(sGammaReg[2]),
        .O(p_0_in[6]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFAEAAAAA)) 
    \rStoredData[6]_i_10 
       (.I0(s_axis_video_tdata[6]),
        .I1(s_axis_video_tdata[2]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[4]),
        .I5(s_axis_video_tdata[5]),
        .O(\rStoredData[6]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h5555777FFFFFFFFF)) 
    \rStoredData[6]_i_11 
       (.I0(s_axis_video_tdata[6]),
        .I1(s_axis_video_tdata[3]),
        .I2(s_axis_video_tdata[2]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[4]),
        .I5(s_axis_video_tdata[5]),
        .O(\rStoredData[6]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \rStoredData[6]_i_12__1 
       (.I0(s_axis_video_tdata[1]),
        .I1(s_axis_video_tdata[2]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[0]),
        .O(\rStoredData[6]_i_12__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \rStoredData[6]_i_13__1 
       (.I0(s_axis_video_tdata[0]),
        .I1(s_axis_video_tdata[2]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[4]),
        .O(\rStoredData[6]_i_13__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAA80000)) 
    \rStoredData[6]_i_14 
       (.I0(s_axis_video_tdata[6]),
        .I1(s_axis_video_tdata[2]),
        .I2(\rStoredData[6]_i_19_n_0 ),
        .I3(s_axis_video_tdata[3]),
        .I4(s_axis_video_tdata[5]),
        .I5(s_axis_video_tdata[8]),
        .O(\rStoredData[6]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h000000005555557F)) 
    \rStoredData[6]_i_15 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[1]),
        .I2(s_axis_video_tdata[2]),
        .I3(s_axis_video_tdata[3]),
        .I4(s_axis_video_tdata[4]),
        .I5(s_axis_video_tdata[6]),
        .O(\rStoredData[6]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hFAEA0000)) 
    \rStoredData[6]_i_16 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[2]),
        .I2(s_axis_video_tdata[4]),
        .I3(s_axis_video_tdata[3]),
        .I4(s_axis_video_tdata[6]),
        .O(\rStoredData[6]_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \rStoredData[6]_i_17__1 
       (.I0(s_axis_video_tdata[1]),
        .I1(s_axis_video_tdata[3]),
        .I2(s_axis_video_tdata[2]),
        .I3(s_axis_video_tdata[0]),
        .O(\rStoredData[6]_i_17__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \rStoredData[6]_i_18__1 
       (.I0(s_axis_video_tdata[2]),
        .I1(s_axis_video_tdata[1]),
        .I2(s_axis_video_tdata[3]),
        .O(\rStoredData[6]_i_18__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \rStoredData[6]_i_19 
       (.I0(s_axis_video_tdata[0]),
        .I1(s_axis_video_tdata[1]),
        .I2(s_axis_video_tdata[4]),
        .O(\rStoredData[6]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hFFFE5555FFFE0000)) 
    \rStoredData[6]_i_2 
       (.I0(s_axis_video_tdata[8]),
        .I1(s_axis_video_tdata[6]),
        .I2(\rStoredData[6]_i_5_n_0 ),
        .I3(s_axis_video_tdata[7]),
        .I4(s_axis_video_tdata[9]),
        .I5(\rStoredData[6]_i_6_n_0 ),
        .O(p_0_out[6]));
  LUT6 #(
    .INIT(64'hB8B8BBBBBB888888)) 
    \rStoredData[6]_i_3__1 
       (.I0(\rStoredData[6]_i_7_n_0 ),
        .I1(sGammaReg[1]),
        .I2(\rStoredData[6]_i_8_n_0 ),
        .I3(\rStoredData[6]_i_9_n_0 ),
        .I4(s_axis_video_tdata[7]),
        .I5(s_axis_video_tdata[8]),
        .O(\rStoredData[6]_i_3__1_n_0 ));
  LUT6 #(
    .INIT(64'hCCFCFFFFBB000000)) 
    \rStoredData[6]_i_4 
       (.I0(\rStoredData[6]_i_10_n_0 ),
        .I1(s_axis_video_tdata[9]),
        .I2(\rStoredData[6]_i_11_n_0 ),
        .I3(s_axis_video_tdata[7]),
        .I4(sGammaReg[1]),
        .I5(s_axis_video_tdata[8]),
        .O(\rStoredData[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \rStoredData[6]_i_5 
       (.I0(s_axis_video_tdata[4]),
        .I1(s_axis_video_tdata[1]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[0]),
        .I5(s_axis_video_tdata[5]),
        .O(\rStoredData[6]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0FBF0FBFFFF0F0F0)) 
    \rStoredData[6]_i_6 
       (.I0(\rStoredData[6]_i_12__1_n_0 ),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[7]),
        .I3(s_axis_video_tdata[5]),
        .I4(\rStoredData[6]_i_13__1_n_0 ),
        .I5(s_axis_video_tdata[6]),
        .O(\rStoredData[6]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hE5E0EFEFE5E0EAEA)) 
    \rStoredData[6]_i_7 
       (.I0(s_axis_video_tdata[7]),
        .I1(\rStoredData[6]_i_14_n_0 ),
        .I2(s_axis_video_tdata[9]),
        .I3(\rStoredData[6]_i_15_n_0 ),
        .I4(s_axis_video_tdata[8]),
        .I5(\rStoredData[6]_i_16_n_0 ),
        .O(\rStoredData[6]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF15555555)) 
    \rStoredData[6]_i_8 
       (.I0(s_axis_video_tdata[6]),
        .I1(s_axis_video_tdata[5]),
        .I2(s_axis_video_tdata[1]),
        .I3(\rStoredData[7]_i_4__1_n_0 ),
        .I4(s_axis_video_tdata[4]),
        .I5(s_axis_video_tdata[9]),
        .O(\rStoredData[6]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFAFEAAFE00000000)) 
    \rStoredData[6]_i_9 
       (.I0(s_axis_video_tdata[5]),
        .I1(\rStoredData[6]_i_17__1_n_0 ),
        .I2(s_axis_video_tdata[4]),
        .I3(s_axis_video_tdata[9]),
        .I4(\rStoredData[6]_i_18__1_n_0 ),
        .I5(s_axis_video_tdata[6]),
        .O(\rStoredData[6]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hC8)) 
    \rStoredData[7]_i_10__1 
       (.I0(s_axis_video_tdata[1]),
        .I1(s_axis_video_tdata[3]),
        .I2(s_axis_video_tdata[2]),
        .O(\rStoredData[7]_i_10__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFEAFFEAFFFF0000)) 
    \rStoredData[7]_i_1__0 
       (.I0(s_axis_video_tdata[9]),
        .I1(\rStoredData[7]_i_2_n_0 ),
        .I2(s_axis_video_tdata[7]),
        .I3(s_axis_video_tdata[8]),
        .I4(\rStoredData[7]_i_3__0_n_0 ),
        .I5(sGammaReg[2]),
        .O(p_0_in[7]));
  LUT6 #(
    .INIT(64'hEAAAAAAA00000000)) 
    \rStoredData[7]_i_2 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[0]),
        .I2(\rStoredData[7]_i_4__1_n_0 ),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[4]),
        .I5(s_axis_video_tdata[6]),
        .O(\rStoredData[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFAFCFCFAFA0C0C0)) 
    \rStoredData[7]_i_3__0 
       (.I0(\rStoredData[7]_i_5_n_0 ),
        .I1(\rStoredData[7]_i_6_n_0 ),
        .I2(sGammaReg[0]),
        .I3(\rStoredData[7]_i_7_n_0 ),
        .I4(sGammaReg[1]),
        .I5(s_axis_video_tdata[9]),
        .O(\rStoredData[7]_i_3__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rStoredData[7]_i_4__1 
       (.I0(s_axis_video_tdata[3]),
        .I1(s_axis_video_tdata[2]),
        .O(\rStoredData[7]_i_4__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFCCCCC888)) 
    \rStoredData[7]_i_5 
       (.I0(s_axis_video_tdata[7]),
        .I1(s_axis_video_tdata[8]),
        .I2(s_axis_video_tdata[5]),
        .I3(\rStoredData[7]_i_8_n_0 ),
        .I4(s_axis_video_tdata[6]),
        .I5(s_axis_video_tdata[9]),
        .O(\rStoredData[7]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFE000)) 
    \rStoredData[7]_i_6 
       (.I0(\rStoredData[7]_i_9__1_n_0 ),
        .I1(s_axis_video_tdata[6]),
        .I2(s_axis_video_tdata[8]),
        .I3(s_axis_video_tdata[7]),
        .I4(s_axis_video_tdata[9]),
        .O(\rStoredData[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hEEEAAAAA00000000)) 
    \rStoredData[7]_i_7 
       (.I0(s_axis_video_tdata[7]),
        .I1(s_axis_video_tdata[6]),
        .I2(\rStoredData[7]_i_10__1_n_0 ),
        .I3(s_axis_video_tdata[4]),
        .I4(s_axis_video_tdata[5]),
        .I5(s_axis_video_tdata[8]),
        .O(\rStoredData[7]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hFFF8)) 
    \rStoredData[7]_i_8 
       (.I0(s_axis_video_tdata[1]),
        .I1(s_axis_video_tdata[2]),
        .I2(s_axis_video_tdata[4]),
        .I3(s_axis_video_tdata[3]),
        .O(\rStoredData[7]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \rStoredData[7]_i_9__1 
       (.I0(s_axis_video_tdata[4]),
        .I1(s_axis_video_tdata[2]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[5]),
        .O(\rStoredData[7]_i_9__1_n_0 ));
  FDRE \rStoredData_reg[0] 
       (.C(StreamClk),
        .CE(E),
        .D(p_0_in[0]),
        .Q(m_axis_video_tdata[0]),
        .R(1'b0));
  MUXF7 \rStoredData_reg[0]_i_11 
       (.I0(\rStoredData[0]_i_31_n_0 ),
        .I1(\rStoredData[0]_i_32_n_0 ),
        .O(\rStoredData_reg[0]_i_11_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF7 \rStoredData_reg[0]_i_12 
       (.I0(\rStoredData[0]_i_33_n_0 ),
        .I1(\rStoredData[0]_i_34_n_0 ),
        .O(\rStoredData_reg[0]_i_12_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF7 \rStoredData_reg[0]_i_13 
       (.I0(\rStoredData[0]_i_35_n_0 ),
        .I1(\rStoredData[0]_i_36_n_0 ),
        .O(\rStoredData_reg[0]_i_13_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF7 \rStoredData_reg[0]_i_14 
       (.I0(\rStoredData[0]_i_37_n_0 ),
        .I1(\rStoredData[0]_i_38_n_0 ),
        .O(\rStoredData_reg[0]_i_14_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF7 \rStoredData_reg[0]_i_15 
       (.I0(\rStoredData[0]_i_39_n_0 ),
        .I1(\rStoredData[0]_i_40_n_0 ),
        .O(\rStoredData_reg[0]_i_15_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF7 \rStoredData_reg[0]_i_16 
       (.I0(\rStoredData[0]_i_41_n_0 ),
        .I1(\rStoredData[0]_i_42_n_0 ),
        .O(\rStoredData_reg[0]_i_16_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF7 \rStoredData_reg[0]_i_17 
       (.I0(\rStoredData[0]_i_43_n_0 ),
        .I1(\rStoredData[0]_i_44_n_0 ),
        .O(\rStoredData_reg[0]_i_17_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF7 \rStoredData_reg[0]_i_18 
       (.I0(\rStoredData[0]_i_45_n_0 ),
        .I1(\rStoredData[0]_i_46_n_0 ),
        .O(\rStoredData_reg[0]_i_18_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF8 \rStoredData_reg[0]_i_19 
       (.I0(\rStoredData_reg[0]_i_47_n_0 ),
        .I1(\rStoredData_reg[0]_i_48_n_0 ),
        .O(\rStoredData_reg[0]_i_19_n_0 ),
        .S(s_axis_video_tdata[8]));
  MUXF8 \rStoredData_reg[0]_i_20 
       (.I0(\rStoredData_reg[0]_i_49_n_0 ),
        .I1(\rStoredData_reg[0]_i_50_n_0 ),
        .O(\rStoredData_reg[0]_i_20_n_0 ),
        .S(s_axis_video_tdata[8]));
  MUXF8 \rStoredData_reg[0]_i_21 
       (.I0(\rStoredData_reg[0]_i_51_n_0 ),
        .I1(\rStoredData_reg[0]_i_52_n_0 ),
        .O(\rStoredData_reg[0]_i_21_n_0 ),
        .S(s_axis_video_tdata[8]));
  MUXF8 \rStoredData_reg[0]_i_22 
       (.I0(\rStoredData_reg[0]_i_53_n_0 ),
        .I1(\rStoredData_reg[0]_i_54_n_0 ),
        .O(\rStoredData_reg[0]_i_22_n_0 ),
        .S(s_axis_video_tdata[8]));
  MUXF8 \rStoredData_reg[0]_i_23 
       (.I0(\rStoredData_reg[0]_i_55_n_0 ),
        .I1(\rStoredData_reg[0]_i_56_n_0 ),
        .O(\rStoredData_reg[0]_i_23_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF8 \rStoredData_reg[0]_i_24 
       (.I0(\rStoredData_reg[0]_i_57_n_0 ),
        .I1(\rStoredData_reg[0]_i_58_n_0 ),
        .O(\rStoredData_reg[0]_i_24_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF8 \rStoredData_reg[0]_i_25 
       (.I0(\rStoredData_reg[0]_i_59_n_0 ),
        .I1(\rStoredData_reg[0]_i_60_n_0 ),
        .O(\rStoredData_reg[0]_i_25_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF8 \rStoredData_reg[0]_i_26 
       (.I0(\rStoredData_reg[0]_i_61_n_0 ),
        .I1(\rStoredData_reg[0]_i_62_n_0 ),
        .O(\rStoredData_reg[0]_i_26_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF8 \rStoredData_reg[0]_i_27 
       (.I0(\rStoredData_reg[0]_i_63_n_0 ),
        .I1(\rStoredData_reg[0]_i_64_n_0 ),
        .O(\rStoredData_reg[0]_i_27_n_0 ),
        .S(s_axis_video_tdata[7]));
  MUXF8 \rStoredData_reg[0]_i_28 
       (.I0(\rStoredData_reg[0]_i_65_n_0 ),
        .I1(\rStoredData_reg[0]_i_66_n_0 ),
        .O(\rStoredData_reg[0]_i_28_n_0 ),
        .S(s_axis_video_tdata[7]));
  MUXF8 \rStoredData_reg[0]_i_29 
       (.I0(\rStoredData_reg[0]_i_67_n_0 ),
        .I1(\rStoredData_reg[0]_i_68_n_0 ),
        .O(\rStoredData_reg[0]_i_29_n_0 ),
        .S(s_axis_video_tdata[7]));
  MUXF8 \rStoredData_reg[0]_i_30 
       (.I0(\rStoredData_reg[0]_i_69_n_0 ),
        .I1(\rStoredData_reg[0]_i_70_n_0 ),
        .O(\rStoredData_reg[0]_i_30_n_0 ),
        .S(s_axis_video_tdata[7]));
  MUXF8 \rStoredData_reg[0]_i_4 
       (.I0(\rStoredData_reg[0]_i_11_n_0 ),
        .I1(\rStoredData_reg[0]_i_12_n_0 ),
        .O(\rStoredData_reg[0]_i_4_n_0 ),
        .S(s_axis_video_tdata[7]));
  MUXF7 \rStoredData_reg[0]_i_47 
       (.I0(\rStoredData[0]_i_71_n_0 ),
        .I1(\rStoredData[0]_i_72_n_0 ),
        .O(\rStoredData_reg[0]_i_47_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF7 \rStoredData_reg[0]_i_48 
       (.I0(\rStoredData[0]_i_73_n_0 ),
        .I1(\rStoredData[0]_i_74_n_0 ),
        .O(\rStoredData_reg[0]_i_48_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF7 \rStoredData_reg[0]_i_49 
       (.I0(\rStoredData[0]_i_75_n_0 ),
        .I1(\rStoredData[0]_i_76_n_0 ),
        .O(\rStoredData_reg[0]_i_49_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF8 \rStoredData_reg[0]_i_5 
       (.I0(\rStoredData_reg[0]_i_13_n_0 ),
        .I1(\rStoredData_reg[0]_i_14_n_0 ),
        .O(\rStoredData_reg[0]_i_5_n_0 ),
        .S(s_axis_video_tdata[7]));
  MUXF7 \rStoredData_reg[0]_i_50 
       (.I0(\rStoredData[0]_i_77_n_0 ),
        .I1(\rStoredData[0]_i_78_n_0 ),
        .O(\rStoredData_reg[0]_i_50_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF7 \rStoredData_reg[0]_i_51 
       (.I0(\rStoredData[0]_i_79_n_0 ),
        .I1(\rStoredData[0]_i_80_n_0 ),
        .O(\rStoredData_reg[0]_i_51_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF7 \rStoredData_reg[0]_i_52 
       (.I0(\rStoredData[0]_i_81_n_0 ),
        .I1(\rStoredData[0]_i_82_n_0 ),
        .O(\rStoredData_reg[0]_i_52_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF7 \rStoredData_reg[0]_i_53 
       (.I0(\rStoredData[0]_i_83_n_0 ),
        .I1(\rStoredData[0]_i_84_n_0 ),
        .O(\rStoredData_reg[0]_i_53_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF7 \rStoredData_reg[0]_i_54 
       (.I0(\rStoredData[0]_i_85_n_0 ),
        .I1(\rStoredData[0]_i_86_n_0 ),
        .O(\rStoredData_reg[0]_i_54_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF7 \rStoredData_reg[0]_i_55 
       (.I0(\rStoredData[0]_i_87_n_0 ),
        .I1(\rStoredData[0]_i_88_n_0 ),
        .O(\rStoredData_reg[0]_i_55_n_0 ),
        .S(s_axis_video_tdata[9]));
  MUXF7 \rStoredData_reg[0]_i_56 
       (.I0(\rStoredData[0]_i_89_n_0 ),
        .I1(\rStoredData[0]_i_90_n_0 ),
        .O(\rStoredData_reg[0]_i_56_n_0 ),
        .S(s_axis_video_tdata[9]));
  MUXF7 \rStoredData_reg[0]_i_57 
       (.I0(\rStoredData[0]_i_91_n_0 ),
        .I1(\rStoredData[0]_i_92_n_0 ),
        .O(\rStoredData_reg[0]_i_57_n_0 ),
        .S(s_axis_video_tdata[9]));
  MUXF7 \rStoredData_reg[0]_i_58 
       (.I0(\rStoredData[0]_i_93_n_0 ),
        .I1(\rStoredData[0]_i_94_n_0 ),
        .O(\rStoredData_reg[0]_i_58_n_0 ),
        .S(s_axis_video_tdata[9]));
  MUXF7 \rStoredData_reg[0]_i_59 
       (.I0(\rStoredData[0]_i_95_n_0 ),
        .I1(\rStoredData[0]_i_96_n_0 ),
        .O(\rStoredData_reg[0]_i_59_n_0 ),
        .S(s_axis_video_tdata[9]));
  MUXF8 \rStoredData_reg[0]_i_6 
       (.I0(\rStoredData_reg[0]_i_15_n_0 ),
        .I1(\rStoredData_reg[0]_i_16_n_0 ),
        .O(\rStoredData_reg[0]_i_6_n_0 ),
        .S(s_axis_video_tdata[7]));
  MUXF7 \rStoredData_reg[0]_i_60 
       (.I0(\rStoredData[0]_i_97_n_0 ),
        .I1(\rStoredData[0]_i_98_n_0 ),
        .O(\rStoredData_reg[0]_i_60_n_0 ),
        .S(s_axis_video_tdata[9]));
  MUXF7 \rStoredData_reg[0]_i_61 
       (.I0(\rStoredData[0]_i_99_n_0 ),
        .I1(\rStoredData[0]_i_100_n_0 ),
        .O(\rStoredData_reg[0]_i_61_n_0 ),
        .S(s_axis_video_tdata[9]));
  MUXF7 \rStoredData_reg[0]_i_62 
       (.I0(\rStoredData[0]_i_101_n_0 ),
        .I1(\rStoredData[0]_i_102_n_0 ),
        .O(\rStoredData_reg[0]_i_62_n_0 ),
        .S(s_axis_video_tdata[9]));
  MUXF7 \rStoredData_reg[0]_i_63 
       (.I0(\rStoredData[0]_i_103_n_0 ),
        .I1(\rStoredData[0]_i_104_n_0 ),
        .O(\rStoredData_reg[0]_i_63_n_0 ),
        .S(s_axis_video_tdata[5]));
  MUXF7 \rStoredData_reg[0]_i_64 
       (.I0(\rStoredData[0]_i_105_n_0 ),
        .I1(\rStoredData[0]_i_106_n_0 ),
        .O(\rStoredData_reg[0]_i_64_n_0 ),
        .S(s_axis_video_tdata[5]));
  MUXF7 \rStoredData_reg[0]_i_65 
       (.I0(\rStoredData[0]_i_107_n_0 ),
        .I1(\rStoredData[0]_i_108_n_0 ),
        .O(\rStoredData_reg[0]_i_65_n_0 ),
        .S(s_axis_video_tdata[5]));
  MUXF7 \rStoredData_reg[0]_i_66 
       (.I0(\rStoredData[0]_i_109_n_0 ),
        .I1(\rStoredData[0]_i_110_n_0 ),
        .O(\rStoredData_reg[0]_i_66_n_0 ),
        .S(s_axis_video_tdata[5]));
  MUXF7 \rStoredData_reg[0]_i_67 
       (.I0(\rStoredData[0]_i_111_n_0 ),
        .I1(\rStoredData[0]_i_112_n_0 ),
        .O(\rStoredData_reg[0]_i_67_n_0 ),
        .S(s_axis_video_tdata[5]));
  MUXF7 \rStoredData_reg[0]_i_68 
       (.I0(\rStoredData[0]_i_113_n_0 ),
        .I1(\rStoredData[0]_i_114_n_0 ),
        .O(\rStoredData_reg[0]_i_68_n_0 ),
        .S(s_axis_video_tdata[5]));
  MUXF7 \rStoredData_reg[0]_i_69 
       (.I0(\rStoredData[0]_i_115_n_0 ),
        .I1(\rStoredData[0]_i_116_n_0 ),
        .O(\rStoredData_reg[0]_i_69_n_0 ),
        .S(s_axis_video_tdata[5]));
  MUXF8 \rStoredData_reg[0]_i_7 
       (.I0(\rStoredData_reg[0]_i_17_n_0 ),
        .I1(\rStoredData_reg[0]_i_18_n_0 ),
        .O(\rStoredData_reg[0]_i_7_n_0 ),
        .S(s_axis_video_tdata[7]));
  MUXF7 \rStoredData_reg[0]_i_70 
       (.I0(\rStoredData[0]_i_117_n_0 ),
        .I1(\rStoredData[0]_i_118_n_0 ),
        .O(\rStoredData_reg[0]_i_70_n_0 ),
        .S(s_axis_video_tdata[5]));
  FDRE \rStoredData_reg[1] 
       (.C(StreamClk),
        .CE(E),
        .D(p_0_in[1]),
        .Q(m_axis_video_tdata[1]),
        .R(1'b0));
  MUXF7 \rStoredData_reg[1]_i_15 
       (.I0(\rStoredData[1]_i_33_n_0 ),
        .I1(\rStoredData[1]_i_34_n_0 ),
        .O(\rStoredData_reg[1]_i_15_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF7 \rStoredData_reg[1]_i_16 
       (.I0(\rStoredData[1]_i_35_n_0 ),
        .I1(\rStoredData[1]_i_36_n_0 ),
        .O(\rStoredData_reg[1]_i_16_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF7 \rStoredData_reg[1]_i_17 
       (.I0(\rStoredData[1]_i_37_n_0 ),
        .I1(\rStoredData[1]_i_38_n_0 ),
        .O(\rStoredData_reg[1]_i_17_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF7 \rStoredData_reg[1]_i_18 
       (.I0(\rStoredData[1]_i_39_n_0 ),
        .I1(\rStoredData[1]_i_40_n_0 ),
        .O(\rStoredData_reg[1]_i_18_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF7 \rStoredData_reg[1]_i_19 
       (.I0(\rStoredData[1]_i_41_n_0 ),
        .I1(\rStoredData[1]_i_42_n_0 ),
        .O(\rStoredData_reg[1]_i_19_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF7 \rStoredData_reg[1]_i_20 
       (.I0(\rStoredData[1]_i_43_n_0 ),
        .I1(\rStoredData[1]_i_44_n_0 ),
        .O(\rStoredData_reg[1]_i_20_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF8 \rStoredData_reg[1]_i_21 
       (.I0(\rStoredData_reg[1]_i_45_n_0 ),
        .I1(\rStoredData_reg[1]_i_46_n_0 ),
        .O(\rStoredData_reg[1]_i_21_n_0 ),
        .S(s_axis_video_tdata[8]));
  MUXF8 \rStoredData_reg[1]_i_22 
       (.I0(\rStoredData_reg[1]_i_47_n_0 ),
        .I1(\rStoredData_reg[1]_i_48_n_0 ),
        .O(\rStoredData_reg[1]_i_22_n_0 ),
        .S(s_axis_video_tdata[8]));
  MUXF8 \rStoredData_reg[1]_i_23 
       (.I0(\rStoredData_reg[1]_i_49_n_0 ),
        .I1(\rStoredData_reg[1]_i_50_n_0 ),
        .O(\rStoredData_reg[1]_i_23_n_0 ),
        .S(s_axis_video_tdata[8]));
  MUXF8 \rStoredData_reg[1]_i_24 
       (.I0(\rStoredData_reg[1]_i_51_n_0 ),
        .I1(\rStoredData_reg[1]_i_52_n_0 ),
        .O(\rStoredData_reg[1]_i_24_n_0 ),
        .S(s_axis_video_tdata[8]));
  MUXF8 \rStoredData_reg[1]_i_25 
       (.I0(\rStoredData_reg[1]_i_53_n_0 ),
        .I1(\rStoredData_reg[1]_i_54_n_0 ),
        .O(\rStoredData_reg[1]_i_25_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF8 \rStoredData_reg[1]_i_26 
       (.I0(\rStoredData_reg[1]_i_55_n_0 ),
        .I1(\rStoredData_reg[1]_i_56_n_0 ),
        .O(\rStoredData_reg[1]_i_26_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF8 \rStoredData_reg[1]_i_27 
       (.I0(\rStoredData_reg[1]_i_57_n_0 ),
        .I1(\rStoredData_reg[1]_i_58_n_0 ),
        .O(\rStoredData_reg[1]_i_27_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF8 \rStoredData_reg[1]_i_28 
       (.I0(\rStoredData_reg[1]_i_59_n_0 ),
        .I1(\rStoredData_reg[1]_i_60_n_0 ),
        .O(\rStoredData_reg[1]_i_28_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF8 \rStoredData_reg[1]_i_29 
       (.I0(\rStoredData_reg[1]_i_61_n_0 ),
        .I1(\rStoredData_reg[1]_i_62_n_0 ),
        .O(\rStoredData_reg[1]_i_29_n_0 ),
        .S(s_axis_video_tdata[7]));
  MUXF8 \rStoredData_reg[1]_i_30 
       (.I0(\rStoredData_reg[1]_i_63_n_0 ),
        .I1(\rStoredData_reg[1]_i_64_n_0 ),
        .O(\rStoredData_reg[1]_i_30_n_0 ),
        .S(s_axis_video_tdata[7]));
  MUXF8 \rStoredData_reg[1]_i_31 
       (.I0(\rStoredData_reg[1]_i_65_n_0 ),
        .I1(\rStoredData_reg[1]_i_66_n_0 ),
        .O(\rStoredData_reg[1]_i_31_n_0 ),
        .S(s_axis_video_tdata[7]));
  MUXF8 \rStoredData_reg[1]_i_32 
       (.I0(\rStoredData_reg[1]_i_67_n_0 ),
        .I1(\rStoredData_reg[1]_i_68_n_0 ),
        .O(\rStoredData_reg[1]_i_32_n_0 ),
        .S(s_axis_video_tdata[7]));
  MUXF7 \rStoredData_reg[1]_i_45 
       (.I0(\rStoredData[1]_i_69_n_0 ),
        .I1(\rStoredData[1]_i_70_n_0 ),
        .O(\rStoredData_reg[1]_i_45_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF7 \rStoredData_reg[1]_i_46 
       (.I0(\rStoredData[1]_i_71_n_0 ),
        .I1(\rStoredData[1]_i_72_n_0 ),
        .O(\rStoredData_reg[1]_i_46_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF7 \rStoredData_reg[1]_i_47 
       (.I0(\rStoredData[1]_i_73_n_0 ),
        .I1(\rStoredData[1]_i_74_n_0 ),
        .O(\rStoredData_reg[1]_i_47_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF7 \rStoredData_reg[1]_i_48 
       (.I0(\rStoredData[1]_i_75_n_0 ),
        .I1(\rStoredData[1]_i_76_n_0 ),
        .O(\rStoredData_reg[1]_i_48_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF7 \rStoredData_reg[1]_i_49 
       (.I0(\rStoredData[1]_i_77_n_0 ),
        .I1(\rStoredData[1]_i_78_n_0 ),
        .O(\rStoredData_reg[1]_i_49_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF8 \rStoredData_reg[1]_i_5 
       (.I0(\rStoredData_reg[1]_i_15_n_0 ),
        .I1(\rStoredData_reg[1]_i_16_n_0 ),
        .O(\rStoredData_reg[1]_i_5_n_0 ),
        .S(s_axis_video_tdata[7]));
  MUXF7 \rStoredData_reg[1]_i_50 
       (.I0(\rStoredData[1]_i_79_n_0 ),
        .I1(\rStoredData[1]_i_80_n_0 ),
        .O(\rStoredData_reg[1]_i_50_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF7 \rStoredData_reg[1]_i_51 
       (.I0(\rStoredData[1]_i_81_n_0 ),
        .I1(\rStoredData[1]_i_82_n_0 ),
        .O(\rStoredData_reg[1]_i_51_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF7 \rStoredData_reg[1]_i_52 
       (.I0(\rStoredData[1]_i_83_n_0 ),
        .I1(\rStoredData[1]_i_84_n_0 ),
        .O(\rStoredData_reg[1]_i_52_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF7 \rStoredData_reg[1]_i_53 
       (.I0(\rStoredData[1]_i_85_n_0 ),
        .I1(\rStoredData[1]_i_86_n_0 ),
        .O(\rStoredData_reg[1]_i_53_n_0 ),
        .S(s_axis_video_tdata[9]));
  MUXF7 \rStoredData_reg[1]_i_54 
       (.I0(\rStoredData[1]_i_87_n_0 ),
        .I1(\rStoredData[1]_i_88_n_0 ),
        .O(\rStoredData_reg[1]_i_54_n_0 ),
        .S(s_axis_video_tdata[9]));
  MUXF7 \rStoredData_reg[1]_i_55 
       (.I0(\rStoredData[1]_i_89_n_0 ),
        .I1(\rStoredData[1]_i_90_n_0 ),
        .O(\rStoredData_reg[1]_i_55_n_0 ),
        .S(s_axis_video_tdata[9]));
  MUXF7 \rStoredData_reg[1]_i_56 
       (.I0(\rStoredData[1]_i_91_n_0 ),
        .I1(\rStoredData[1]_i_92_n_0 ),
        .O(\rStoredData_reg[1]_i_56_n_0 ),
        .S(s_axis_video_tdata[9]));
  MUXF7 \rStoredData_reg[1]_i_57 
       (.I0(\rStoredData[1]_i_93_n_0 ),
        .I1(\rStoredData[1]_i_94_n_0 ),
        .O(\rStoredData_reg[1]_i_57_n_0 ),
        .S(s_axis_video_tdata[9]));
  MUXF7 \rStoredData_reg[1]_i_58 
       (.I0(\rStoredData[1]_i_95_n_0 ),
        .I1(\rStoredData[1]_i_96_n_0 ),
        .O(\rStoredData_reg[1]_i_58_n_0 ),
        .S(s_axis_video_tdata[9]));
  MUXF7 \rStoredData_reg[1]_i_59 
       (.I0(\rStoredData[1]_i_97_n_0 ),
        .I1(\rStoredData[1]_i_98_n_0 ),
        .O(\rStoredData_reg[1]_i_59_n_0 ),
        .S(s_axis_video_tdata[9]));
  MUXF8 \rStoredData_reg[1]_i_6 
       (.I0(\rStoredData_reg[1]_i_17_n_0 ),
        .I1(\rStoredData_reg[1]_i_18_n_0 ),
        .O(\rStoredData_reg[1]_i_6_n_0 ),
        .S(s_axis_video_tdata[7]));
  MUXF7 \rStoredData_reg[1]_i_60 
       (.I0(\rStoredData[1]_i_99_n_0 ),
        .I1(\rStoredData[1]_i_100_n_0 ),
        .O(\rStoredData_reg[1]_i_60_n_0 ),
        .S(s_axis_video_tdata[9]));
  MUXF7 \rStoredData_reg[1]_i_61 
       (.I0(\rStoredData[1]_i_101_n_0 ),
        .I1(\rStoredData[1]_i_102_n_0 ),
        .O(\rStoredData_reg[1]_i_61_n_0 ),
        .S(s_axis_video_tdata[5]));
  MUXF7 \rStoredData_reg[1]_i_62 
       (.I0(\rStoredData[1]_i_103_n_0 ),
        .I1(\rStoredData[1]_i_104_n_0 ),
        .O(\rStoredData_reg[1]_i_62_n_0 ),
        .S(s_axis_video_tdata[5]));
  MUXF7 \rStoredData_reg[1]_i_63 
       (.I0(\rStoredData[1]_i_105_n_0 ),
        .I1(\rStoredData[1]_i_106_n_0 ),
        .O(\rStoredData_reg[1]_i_63_n_0 ),
        .S(s_axis_video_tdata[5]));
  MUXF7 \rStoredData_reg[1]_i_64 
       (.I0(\rStoredData[1]_i_107_n_0 ),
        .I1(\rStoredData[1]_i_108_n_0 ),
        .O(\rStoredData_reg[1]_i_64_n_0 ),
        .S(s_axis_video_tdata[5]));
  MUXF7 \rStoredData_reg[1]_i_65 
       (.I0(\rStoredData[1]_i_109_n_0 ),
        .I1(\rStoredData[1]_i_110_n_0 ),
        .O(\rStoredData_reg[1]_i_65_n_0 ),
        .S(s_axis_video_tdata[5]));
  MUXF7 \rStoredData_reg[1]_i_66 
       (.I0(\rStoredData[1]_i_111_n_0 ),
        .I1(\rStoredData[1]_i_112_n_0 ),
        .O(\rStoredData_reg[1]_i_66_n_0 ),
        .S(s_axis_video_tdata[5]));
  MUXF7 \rStoredData_reg[1]_i_67 
       (.I0(\rStoredData[1]_i_113_n_0 ),
        .I1(\rStoredData[1]_i_114_n_0 ),
        .O(\rStoredData_reg[1]_i_67_n_0 ),
        .S(s_axis_video_tdata[5]));
  MUXF7 \rStoredData_reg[1]_i_68 
       (.I0(\rStoredData[1]_i_115_n_0 ),
        .I1(\rStoredData[1]_i_116_n_0 ),
        .O(\rStoredData_reg[1]_i_68_n_0 ),
        .S(s_axis_video_tdata[5]));
  MUXF8 \rStoredData_reg[1]_i_7 
       (.I0(\rStoredData_reg[1]_i_19_n_0 ),
        .I1(\rStoredData_reg[1]_i_20_n_0 ),
        .O(\rStoredData_reg[1]_i_7_n_0 ),
        .S(s_axis_video_tdata[7]));
  FDRE \rStoredData_reg[2] 
       (.C(StreamClk),
        .CE(E),
        .D(p_0_in[2]),
        .Q(m_axis_video_tdata[2]),
        .R(1'b0));
  MUXF7 \rStoredData_reg[2]_i_13 
       (.I0(\rStoredData[2]_i_29_n_0 ),
        .I1(\rStoredData[2]_i_30_n_0 ),
        .O(\rStoredData_reg[2]_i_13_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF7 \rStoredData_reg[2]_i_14 
       (.I0(\rStoredData[2]_i_31_n_0 ),
        .I1(\rStoredData[2]_i_32_n_0 ),
        .O(\rStoredData_reg[2]_i_14_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF7 \rStoredData_reg[2]_i_15 
       (.I0(\rStoredData[2]_i_33_n_0 ),
        .I1(\rStoredData[2]_i_34_n_0 ),
        .O(\rStoredData_reg[2]_i_15_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF7 \rStoredData_reg[2]_i_16 
       (.I0(\rStoredData[2]_i_35_n_0 ),
        .I1(\rStoredData[2]_i_36_n_0 ),
        .O(\rStoredData_reg[2]_i_16_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF7 \rStoredData_reg[2]_i_17 
       (.I0(\rStoredData[2]_i_37_n_0 ),
        .I1(\rStoredData[2]_i_38_n_0 ),
        .O(\rStoredData_reg[2]_i_17_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF7 \rStoredData_reg[2]_i_18 
       (.I0(\rStoredData[2]_i_39_n_0 ),
        .I1(\rStoredData[2]_i_40_n_0 ),
        .O(\rStoredData_reg[2]_i_18_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF8 \rStoredData_reg[2]_i_21 
       (.I0(\rStoredData_reg[2]_i_49_n_0 ),
        .I1(\rStoredData_reg[2]_i_50_n_0 ),
        .O(\rStoredData_reg[2]_i_21_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF8 \rStoredData_reg[2]_i_22 
       (.I0(\rStoredData_reg[2]_i_51_n_0 ),
        .I1(\rStoredData_reg[2]_i_52_n_0 ),
        .O(\rStoredData_reg[2]_i_22_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF8 \rStoredData_reg[2]_i_24 
       (.I0(\rStoredData_reg[2]_i_56_n_0 ),
        .I1(\rStoredData_reg[2]_i_57_n_0 ),
        .O(\rStoredData_reg[2]_i_24_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF8 \rStoredData_reg[2]_i_25 
       (.I0(\rStoredData_reg[2]_i_58_n_0 ),
        .I1(\rStoredData_reg[2]_i_59_n_0 ),
        .O(\rStoredData_reg[2]_i_25_n_0 ),
        .S(s_axis_video_tdata[7]));
  MUXF8 \rStoredData_reg[2]_i_26 
       (.I0(\rStoredData_reg[2]_i_60_n_0 ),
        .I1(\rStoredData_reg[2]_i_61_n_0 ),
        .O(\rStoredData_reg[2]_i_26_n_0 ),
        .S(s_axis_video_tdata[7]));
  MUXF8 \rStoredData_reg[2]_i_27 
       (.I0(\rStoredData_reg[2]_i_62_n_0 ),
        .I1(\rStoredData_reg[2]_i_63_n_0 ),
        .O(\rStoredData_reg[2]_i_27_n_0 ),
        .S(s_axis_video_tdata[7]));
  MUXF8 \rStoredData_reg[2]_i_28 
       (.I0(\rStoredData_reg[2]_i_64_n_0 ),
        .I1(\rStoredData_reg[2]_i_65_n_0 ),
        .O(\rStoredData_reg[2]_i_28_n_0 ),
        .S(s_axis_video_tdata[7]));
  MUXF7 \rStoredData_reg[2]_i_4 
       (.I0(\rStoredData[2]_i_11_n_0 ),
        .I1(\rStoredData[2]_i_12_n_0 ),
        .O(\rStoredData_reg[2]_i_4_n_0 ),
        .S(s_axis_video_tdata[7]));
  MUXF7 \rStoredData_reg[2]_i_41 
       (.I0(\rStoredData[2]_i_66_n_0 ),
        .I1(\rStoredData[2]_i_67_n_0 ),
        .O(\rStoredData_reg[2]_i_41_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF7 \rStoredData_reg[2]_i_42 
       (.I0(\rStoredData[2]_i_68_n_0 ),
        .I1(\rStoredData[2]_i_69_n_0 ),
        .O(\rStoredData_reg[2]_i_42_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF7 \rStoredData_reg[2]_i_43 
       (.I0(\rStoredData[2]_i_70_n_0 ),
        .I1(\rStoredData[2]_i_71_n_0 ),
        .O(\rStoredData_reg[2]_i_43_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF7 \rStoredData_reg[2]_i_44 
       (.I0(\rStoredData[2]_i_72_n_0 ),
        .I1(\rStoredData[2]_i_73_n_0 ),
        .O(\rStoredData_reg[2]_i_44_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF7 \rStoredData_reg[2]_i_46 
       (.I0(\rStoredData[2]_i_74_n_0 ),
        .I1(\rStoredData[2]_i_75_n_0 ),
        .O(\rStoredData_reg[2]_i_46_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF7 \rStoredData_reg[2]_i_47 
       (.I0(\rStoredData[2]_i_76_n_0 ),
        .I1(\rStoredData[2]_i_77_n_0 ),
        .O(\rStoredData_reg[2]_i_47_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF7 \rStoredData_reg[2]_i_48 
       (.I0(\rStoredData[2]_i_78_n_0 ),
        .I1(\rStoredData[2]_i_79_n_0 ),
        .O(\rStoredData_reg[2]_i_48_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF7 \rStoredData_reg[2]_i_49 
       (.I0(\rStoredData[2]_i_80_n_0 ),
        .I1(\rStoredData[2]_i_81_n_0 ),
        .O(\rStoredData_reg[2]_i_49_n_0 ),
        .S(s_axis_video_tdata[9]));
  MUXF8 \rStoredData_reg[2]_i_5 
       (.I0(\rStoredData_reg[2]_i_13_n_0 ),
        .I1(\rStoredData_reg[2]_i_14_n_0 ),
        .O(\rStoredData_reg[2]_i_5_n_0 ),
        .S(s_axis_video_tdata[7]));
  MUXF7 \rStoredData_reg[2]_i_50 
       (.I0(\rStoredData[2]_i_82_n_0 ),
        .I1(\rStoredData[2]_i_83_n_0 ),
        .O(\rStoredData_reg[2]_i_50_n_0 ),
        .S(s_axis_video_tdata[9]));
  MUXF7 \rStoredData_reg[2]_i_51 
       (.I0(\rStoredData[2]_i_84_n_0 ),
        .I1(\rStoredData[2]_i_85_n_0 ),
        .O(\rStoredData_reg[2]_i_51_n_0 ),
        .S(s_axis_video_tdata[9]));
  MUXF7 \rStoredData_reg[2]_i_52 
       (.I0(\rStoredData[2]_i_86_n_0 ),
        .I1(\rStoredData[2]_i_87_n_0 ),
        .O(\rStoredData_reg[2]_i_52_n_0 ),
        .S(s_axis_video_tdata[9]));
  MUXF7 \rStoredData_reg[2]_i_56 
       (.I0(\rStoredData[2]_i_88_n_0 ),
        .I1(\rStoredData[2]_i_89_n_0 ),
        .O(\rStoredData_reg[2]_i_56_n_0 ),
        .S(s_axis_video_tdata[9]));
  MUXF7 \rStoredData_reg[2]_i_57 
       (.I0(\rStoredData[2]_i_90_n_0 ),
        .I1(\rStoredData[2]_i_91_n_0 ),
        .O(\rStoredData_reg[2]_i_57_n_0 ),
        .S(s_axis_video_tdata[9]));
  MUXF7 \rStoredData_reg[2]_i_58 
       (.I0(\rStoredData[2]_i_92_n_0 ),
        .I1(\rStoredData[2]_i_93_n_0 ),
        .O(\rStoredData_reg[2]_i_58_n_0 ),
        .S(s_axis_video_tdata[5]));
  MUXF7 \rStoredData_reg[2]_i_59 
       (.I0(\rStoredData[2]_i_94_n_0 ),
        .I1(\rStoredData[2]_i_95_n_0 ),
        .O(\rStoredData_reg[2]_i_59_n_0 ),
        .S(s_axis_video_tdata[5]));
  MUXF8 \rStoredData_reg[2]_i_6 
       (.I0(\rStoredData_reg[2]_i_15_n_0 ),
        .I1(\rStoredData_reg[2]_i_16_n_0 ),
        .O(\rStoredData_reg[2]_i_6_n_0 ),
        .S(s_axis_video_tdata[7]));
  MUXF7 \rStoredData_reg[2]_i_60 
       (.I0(\rStoredData[2]_i_96_n_0 ),
        .I1(\rStoredData[2]_i_97_n_0 ),
        .O(\rStoredData_reg[2]_i_60_n_0 ),
        .S(s_axis_video_tdata[5]));
  MUXF7 \rStoredData_reg[2]_i_61 
       (.I0(\rStoredData[2]_i_98_n_0 ),
        .I1(\rStoredData[2]_i_99_n_0 ),
        .O(\rStoredData_reg[2]_i_61_n_0 ),
        .S(s_axis_video_tdata[5]));
  MUXF7 \rStoredData_reg[2]_i_62 
       (.I0(\rStoredData[2]_i_100_n_0 ),
        .I1(\rStoredData[2]_i_101_n_0 ),
        .O(\rStoredData_reg[2]_i_62_n_0 ),
        .S(s_axis_video_tdata[5]));
  MUXF7 \rStoredData_reg[2]_i_63 
       (.I0(\rStoredData[2]_i_102_n_0 ),
        .I1(\rStoredData[2]_i_103_n_0 ),
        .O(\rStoredData_reg[2]_i_63_n_0 ),
        .S(s_axis_video_tdata[5]));
  MUXF7 \rStoredData_reg[2]_i_64 
       (.I0(\rStoredData[2]_i_104_n_0 ),
        .I1(\rStoredData[2]_i_105_n_0 ),
        .O(\rStoredData_reg[2]_i_64_n_0 ),
        .S(s_axis_video_tdata[5]));
  MUXF7 \rStoredData_reg[2]_i_65 
       (.I0(\rStoredData[2]_i_106_n_0 ),
        .I1(\rStoredData[2]_i_107_n_0 ),
        .O(\rStoredData_reg[2]_i_65_n_0 ),
        .S(s_axis_video_tdata[5]));
  MUXF8 \rStoredData_reg[2]_i_7 
       (.I0(\rStoredData_reg[2]_i_17_n_0 ),
        .I1(\rStoredData_reg[2]_i_18_n_0 ),
        .O(\rStoredData_reg[2]_i_7_n_0 ),
        .S(s_axis_video_tdata[7]));
  MUXF7 \rStoredData_reg[2]_i_8 
       (.I0(\rStoredData[2]_i_19_n_0 ),
        .I1(\rStoredData[2]_i_20_n_0 ),
        .O(\rStoredData_reg[2]_i_8_n_0 ),
        .S(s_axis_video_tdata[7]));
  FDRE \rStoredData_reg[3] 
       (.C(StreamClk),
        .CE(E),
        .D(p_0_in[3]),
        .Q(m_axis_video_tdata[3]),
        .R(1'b0));
  MUXF7 \rStoredData_reg[3]_i_13 
       (.I0(\rStoredData[3]_i_38_n_0 ),
        .I1(\rStoredData[3]_i_39_n_0 ),
        .O(\rStoredData_reg[3]_i_13_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF7 \rStoredData_reg[3]_i_14 
       (.I0(\rStoredData[3]_i_40_n_0 ),
        .I1(\rStoredData[3]_i_41_n_0 ),
        .O(\rStoredData_reg[3]_i_14_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF8 \rStoredData_reg[3]_i_19 
       (.I0(\rStoredData_reg[3]_i_48_n_0 ),
        .I1(\rStoredData_reg[3]_i_49_n_0 ),
        .O(\rStoredData_reg[3]_i_19_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF7 \rStoredData_reg[3]_i_2 
       (.I0(\rStoredData[3]_i_5_n_0 ),
        .I1(\rStoredData[3]_i_6_n_0 ),
        .O(p_0_out[3]),
        .S(s_axis_video_tdata[8]));
  MUXF8 \rStoredData_reg[3]_i_21 
       (.I0(\rStoredData_reg[3]_i_53_n_0 ),
        .I1(\rStoredData_reg[3]_i_54_n_0 ),
        .O(\rStoredData_reg[3]_i_21_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF7 \rStoredData_reg[3]_i_22 
       (.I0(\rStoredData[3]_i_55_n_0 ),
        .I1(\rStoredData[3]_i_56_n_0 ),
        .O(\rStoredData_reg[3]_i_22_n_0 ),
        .S(s_axis_video_tdata[8]));
  MUXF8 \rStoredData_reg[3]_i_23 
       (.I0(\rStoredData_reg[3]_i_57_n_0 ),
        .I1(\rStoredData_reg[3]_i_58_n_0 ),
        .O(\rStoredData_reg[3]_i_23_n_0 ),
        .S(s_axis_video_tdata[8]));
  MUXF7 \rStoredData_reg[3]_i_26 
       (.I0(\rStoredData[3]_i_65_n_0 ),
        .I1(\rStoredData[3]_i_66_n_0 ),
        .O(\rStoredData_reg[3]_i_26_n_0 ),
        .S(s_axis_video_tdata[5]));
  MUXF7 \rStoredData_reg[3]_i_27 
       (.I0(\rStoredData[3]_i_67_n_0 ),
        .I1(\rStoredData[3]_i_68_n_0 ),
        .O(\rStoredData_reg[3]_i_27_n_0 ),
        .S(s_axis_video_tdata[5]));
  MUXF7 \rStoredData_reg[3]_i_28 
       (.I0(\rStoredData[3]_i_69_n_0 ),
        .I1(\rStoredData[3]_i_70_n_0 ),
        .O(\rStoredData_reg[3]_i_28_n_0 ),
        .S(s_axis_video_tdata[5]));
  MUXF7 \rStoredData_reg[3]_i_29 
       (.I0(\rStoredData[3]_i_71_n_0 ),
        .I1(\rStoredData[3]_i_72_n_0 ),
        .O(\rStoredData_reg[3]_i_29_n_0 ),
        .S(s_axis_video_tdata[5]));
  MUXF7 \rStoredData_reg[3]_i_3 
       (.I0(\rStoredData[3]_i_7_n_0 ),
        .I1(\rStoredData[3]_i_8_n_0 ),
        .O(\rStoredData_reg[3]_i_3_n_0 ),
        .S(sGammaReg[1]));
  MUXF7 \rStoredData_reg[3]_i_32 
       (.I0(\rStoredData[3]_i_74_n_0 ),
        .I1(\rStoredData[3]_i_75_n_0 ),
        .O(\rStoredData_reg[3]_i_32_n_0 ),
        .S(s_axis_video_tdata[5]));
  MUXF7 \rStoredData_reg[3]_i_33 
       (.I0(\rStoredData[3]_i_76_n_0 ),
        .I1(\rStoredData[3]_i_77_n_0 ),
        .O(\rStoredData_reg[3]_i_33_n_0 ),
        .S(s_axis_video_tdata[5]));
  MUXF7 \rStoredData_reg[3]_i_48 
       (.I0(\rStoredData[3]_i_78_n_0 ),
        .I1(\rStoredData[3]_i_79_n_0 ),
        .O(\rStoredData_reg[3]_i_48_n_0 ),
        .S(s_axis_video_tdata[9]));
  MUXF7 \rStoredData_reg[3]_i_49 
       (.I0(\rStoredData[3]_i_80_n_0 ),
        .I1(\rStoredData[3]_i_81_n_0 ),
        .O(\rStoredData_reg[3]_i_49_n_0 ),
        .S(s_axis_video_tdata[9]));
  MUXF7 \rStoredData_reg[3]_i_53 
       (.I0(\rStoredData[3]_i_82_n_0 ),
        .I1(\rStoredData[3]_i_83_n_0 ),
        .O(\rStoredData_reg[3]_i_53_n_0 ),
        .S(s_axis_video_tdata[9]));
  MUXF7 \rStoredData_reg[3]_i_54 
       (.I0(\rStoredData[3]_i_84_n_0 ),
        .I1(\rStoredData[3]_i_85_n_0 ),
        .O(\rStoredData_reg[3]_i_54_n_0 ),
        .S(s_axis_video_tdata[9]));
  MUXF7 \rStoredData_reg[3]_i_57 
       (.I0(\rStoredData[3]_i_86_n_0 ),
        .I1(\rStoredData[3]_i_87_n_0 ),
        .O(\rStoredData_reg[3]_i_57_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF7 \rStoredData_reg[3]_i_58 
       (.I0(\rStoredData[3]_i_88_n_0 ),
        .I1(\rStoredData[3]_i_89_n_0 ),
        .O(\rStoredData_reg[3]_i_58_n_0 ),
        .S(s_axis_video_tdata[6]));
  FDRE \rStoredData_reg[4] 
       (.C(StreamClk),
        .CE(E),
        .D(p_0_in[4]),
        .Q(m_axis_video_tdata[4]),
        .R(1'b0));
  MUXF8 \rStoredData_reg[4]_i_10 
       (.I0(\rStoredData_reg[4]_i_21_n_0 ),
        .I1(\rStoredData_reg[4]_i_22_n_0 ),
        .O(\rStoredData_reg[4]_i_10_n_0 ),
        .S(s_axis_video_tdata[7]));
  MUXF8 \rStoredData_reg[4]_i_11 
       (.I0(\rStoredData_reg[4]_i_23_n_0 ),
        .I1(\rStoredData_reg[4]_i_24_n_0 ),
        .O(\rStoredData_reg[4]_i_11_n_0 ),
        .S(s_axis_video_tdata[9]));
  MUXF7 \rStoredData_reg[4]_i_16 
       (.I0(\rStoredData[4]_i_25_n_0 ),
        .I1(\rStoredData[4]_i_26_n_0 ),
        .O(\rStoredData_reg[4]_i_16_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF7 \rStoredData_reg[4]_i_19 
       (.I0(\rStoredData[4]_i_27_n_0 ),
        .I1(\rStoredData[4]_i_28_n_0 ),
        .O(\rStoredData_reg[4]_i_19_n_0 ),
        .S(s_axis_video_tdata[9]));
  MUXF7 \rStoredData_reg[4]_i_2 
       (.I0(\rStoredData[4]_i_5_n_0 ),
        .I1(\rStoredData[4]_i_6_n_0 ),
        .O(\rStoredData_reg[4]_i_2_n_0 ),
        .S(s_axis_video_tdata[9]));
  MUXF7 \rStoredData_reg[4]_i_20 
       (.I0(\rStoredData[4]_i_29_n_0 ),
        .I1(\rStoredData[4]_i_30_n_0 ),
        .O(\rStoredData_reg[4]_i_20_n_0 ),
        .S(s_axis_video_tdata[9]));
  MUXF7 \rStoredData_reg[4]_i_21 
       (.I0(\rStoredData[4]_i_31_n_0 ),
        .I1(\rStoredData[4]_i_32_n_0 ),
        .O(\rStoredData_reg[4]_i_21_n_0 ),
        .S(s_axis_video_tdata[8]));
  MUXF7 \rStoredData_reg[4]_i_22 
       (.I0(\rStoredData[4]_i_33_n_0 ),
        .I1(\rStoredData[4]_i_34_n_0 ),
        .O(\rStoredData_reg[4]_i_22_n_0 ),
        .S(s_axis_video_tdata[8]));
  MUXF7 \rStoredData_reg[4]_i_23 
       (.I0(\rStoredData[4]_i_35_n_0 ),
        .I1(\rStoredData[4]_i_36_n_0 ),
        .O(\rStoredData_reg[4]_i_23_n_0 ),
        .S(s_axis_video_tdata[8]));
  MUXF7 \rStoredData_reg[4]_i_24 
       (.I0(\rStoredData[4]_i_37_n_0 ),
        .I1(\rStoredData[4]_i_38_n_0 ),
        .O(\rStoredData_reg[4]_i_24_n_0 ),
        .S(s_axis_video_tdata[8]));
  MUXF7 \rStoredData_reg[4]_i_3 
       (.I0(\rStoredData[4]_i_7_n_0 ),
        .I1(\rStoredData[4]_i_8_n_0 ),
        .O(\rStoredData_reg[4]_i_3_n_0 ),
        .S(s_axis_video_tdata[9]));
  MUXF8 \rStoredData_reg[4]_i_9 
       (.I0(\rStoredData_reg[4]_i_19_n_0 ),
        .I1(\rStoredData_reg[4]_i_20_n_0 ),
        .O(\rStoredData_reg[4]_i_9_n_0 ),
        .S(s_axis_video_tdata[7]));
  FDRE \rStoredData_reg[5] 
       (.C(StreamClk),
        .CE(E),
        .D(p_0_in[5]),
        .Q(m_axis_video_tdata[5]),
        .R(1'b0));
  MUXF7 \rStoredData_reg[5]_i_11 
       (.I0(\rStoredData[5]_i_24_n_0 ),
        .I1(\rStoredData[5]_i_25_n_0 ),
        .O(\rStoredData_reg[5]_i_11_n_0 ),
        .S(s_axis_video_tdata[8]));
  MUXF7 \rStoredData_reg[5]_i_13 
       (.I0(\rStoredData[5]_i_28_n_0 ),
        .I1(\rStoredData[5]_i_29_n_0 ),
        .O(\rStoredData_reg[5]_i_13_n_0 ),
        .S(s_axis_video_tdata[8]));
  FDRE \rStoredData_reg[6] 
       (.C(StreamClk),
        .CE(E),
        .D(p_0_in[6]),
        .Q(m_axis_video_tdata[6]),
        .R(1'b0));
  FDRE \rStoredData_reg[7] 
       (.C(StreamClk),
        .CE(E),
        .D(p_0_in[7]),
        .Q(m_axis_video_tdata[7]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "StoredGammaCoefs" *) 
module system_AXI_GammaCorrection_0_0_StoredGammaCoefs_0
   (m_axis_video_tdata,
    s_axis_video_tdata,
    sGammaReg,
    E,
    StreamClk);
  output [7:0]m_axis_video_tdata;
  input [9:0]s_axis_video_tdata;
  input [2:0]sGammaReg;
  input [0:0]E;
  input StreamClk;

  wire [0:0]E;
  wire StreamClk;
  wire [7:0]m_axis_video_tdata;
  wire \rStoredData[0]_i_100__0_n_0 ;
  wire \rStoredData[0]_i_101__0_n_0 ;
  wire \rStoredData[0]_i_102__0_n_0 ;
  wire \rStoredData[0]_i_103__0_n_0 ;
  wire \rStoredData[0]_i_104__0_n_0 ;
  wire \rStoredData[0]_i_105__0_n_0 ;
  wire \rStoredData[0]_i_106__0_n_0 ;
  wire \rStoredData[0]_i_107__0_n_0 ;
  wire \rStoredData[0]_i_108__0_n_0 ;
  wire \rStoredData[0]_i_109__0_n_0 ;
  wire \rStoredData[0]_i_10__0_n_0 ;
  wire \rStoredData[0]_i_110__0_n_0 ;
  wire \rStoredData[0]_i_111__0_n_0 ;
  wire \rStoredData[0]_i_112__0_n_0 ;
  wire \rStoredData[0]_i_113__0_n_0 ;
  wire \rStoredData[0]_i_114__0_n_0 ;
  wire \rStoredData[0]_i_115__0_n_0 ;
  wire \rStoredData[0]_i_116__0_n_0 ;
  wire \rStoredData[0]_i_117__0_n_0 ;
  wire \rStoredData[0]_i_118__0_n_0 ;
  wire \rStoredData[0]_i_1__0_n_0 ;
  wire \rStoredData[0]_i_2__0_n_0 ;
  wire \rStoredData[0]_i_31__0_n_0 ;
  wire \rStoredData[0]_i_32__0_n_0 ;
  wire \rStoredData[0]_i_33__0_n_0 ;
  wire \rStoredData[0]_i_34__0_n_0 ;
  wire \rStoredData[0]_i_35__0_n_0 ;
  wire \rStoredData[0]_i_36__0_n_0 ;
  wire \rStoredData[0]_i_37__0_n_0 ;
  wire \rStoredData[0]_i_38__0_n_0 ;
  wire \rStoredData[0]_i_39__0_n_0 ;
  wire \rStoredData[0]_i_3__0_n_0 ;
  wire \rStoredData[0]_i_40__0_n_0 ;
  wire \rStoredData[0]_i_41__0_n_0 ;
  wire \rStoredData[0]_i_42__0_n_0 ;
  wire \rStoredData[0]_i_43__0_n_0 ;
  wire \rStoredData[0]_i_44__0_n_0 ;
  wire \rStoredData[0]_i_45__0_n_0 ;
  wire \rStoredData[0]_i_46__0_n_0 ;
  wire \rStoredData[0]_i_71__0_n_0 ;
  wire \rStoredData[0]_i_72__0_n_0 ;
  wire \rStoredData[0]_i_73__0_n_0 ;
  wire \rStoredData[0]_i_74__0_n_0 ;
  wire \rStoredData[0]_i_75__0_n_0 ;
  wire \rStoredData[0]_i_76__0_n_0 ;
  wire \rStoredData[0]_i_77__0_n_0 ;
  wire \rStoredData[0]_i_78__0_n_0 ;
  wire \rStoredData[0]_i_79__0_n_0 ;
  wire \rStoredData[0]_i_80__0_n_0 ;
  wire \rStoredData[0]_i_81__0_n_0 ;
  wire \rStoredData[0]_i_82__0_n_0 ;
  wire \rStoredData[0]_i_83__0_n_0 ;
  wire \rStoredData[0]_i_84__0_n_0 ;
  wire \rStoredData[0]_i_85__0_n_0 ;
  wire \rStoredData[0]_i_86__0_n_0 ;
  wire \rStoredData[0]_i_87__0_n_0 ;
  wire \rStoredData[0]_i_88__0_n_0 ;
  wire \rStoredData[0]_i_89__0_n_0 ;
  wire \rStoredData[0]_i_8__0_n_0 ;
  wire \rStoredData[0]_i_90__0_n_0 ;
  wire \rStoredData[0]_i_91__0_n_0 ;
  wire \rStoredData[0]_i_92__0_n_0 ;
  wire \rStoredData[0]_i_93__0_n_0 ;
  wire \rStoredData[0]_i_94__0_n_0 ;
  wire \rStoredData[0]_i_95__0_n_0 ;
  wire \rStoredData[0]_i_96__0_n_0 ;
  wire \rStoredData[0]_i_97__0_n_0 ;
  wire \rStoredData[0]_i_98__0_n_0 ;
  wire \rStoredData[0]_i_99__0_n_0 ;
  wire \rStoredData[0]_i_9__0_n_0 ;
  wire \rStoredData[1]_i_100__0_n_0 ;
  wire \rStoredData[1]_i_101__0_n_0 ;
  wire \rStoredData[1]_i_102__0_n_0 ;
  wire \rStoredData[1]_i_103__0_n_0 ;
  wire \rStoredData[1]_i_104__0_n_0 ;
  wire \rStoredData[1]_i_105__0_n_0 ;
  wire \rStoredData[1]_i_106__0_n_0 ;
  wire \rStoredData[1]_i_107__0_n_0 ;
  wire \rStoredData[1]_i_108__0_n_0 ;
  wire \rStoredData[1]_i_109__0_n_0 ;
  wire \rStoredData[1]_i_10__0_n_0 ;
  wire \rStoredData[1]_i_110__0_n_0 ;
  wire \rStoredData[1]_i_111__0_n_0 ;
  wire \rStoredData[1]_i_112__0_n_0 ;
  wire \rStoredData[1]_i_113__0_n_0 ;
  wire \rStoredData[1]_i_114__0_n_0 ;
  wire \rStoredData[1]_i_115__0_n_0 ;
  wire \rStoredData[1]_i_116__0_n_0 ;
  wire \rStoredData[1]_i_117_n_0 ;
  wire \rStoredData[1]_i_118_n_0 ;
  wire \rStoredData[1]_i_1__0_n_0 ;
  wire \rStoredData[1]_i_2__0_n_0 ;
  wire \rStoredData[1]_i_31_n_0 ;
  wire \rStoredData[1]_i_32__0_n_0 ;
  wire \rStoredData[1]_i_33__0_n_0 ;
  wire \rStoredData[1]_i_34__0_n_0 ;
  wire \rStoredData[1]_i_35__0_n_0 ;
  wire \rStoredData[1]_i_36__0_n_0 ;
  wire \rStoredData[1]_i_37__0_n_0 ;
  wire \rStoredData[1]_i_38__0_n_0 ;
  wire \rStoredData[1]_i_39__0_n_0 ;
  wire \rStoredData[1]_i_3__0_n_0 ;
  wire \rStoredData[1]_i_40__0_n_0 ;
  wire \rStoredData[1]_i_41__0_n_0 ;
  wire \rStoredData[1]_i_42__0_n_0 ;
  wire \rStoredData[1]_i_43__0_n_0 ;
  wire \rStoredData[1]_i_44__0_n_0 ;
  wire \rStoredData[1]_i_45_n_0 ;
  wire \rStoredData[1]_i_46_n_0 ;
  wire \rStoredData[1]_i_71__0_n_0 ;
  wire \rStoredData[1]_i_72__0_n_0 ;
  wire \rStoredData[1]_i_73__0_n_0 ;
  wire \rStoredData[1]_i_74__0_n_0 ;
  wire \rStoredData[1]_i_75__0_n_0 ;
  wire \rStoredData[1]_i_76__0_n_0 ;
  wire \rStoredData[1]_i_77__0_n_0 ;
  wire \rStoredData[1]_i_78__0_n_0 ;
  wire \rStoredData[1]_i_79__0_n_0 ;
  wire \rStoredData[1]_i_80__0_n_0 ;
  wire \rStoredData[1]_i_81__0_n_0 ;
  wire \rStoredData[1]_i_82__0_n_0 ;
  wire \rStoredData[1]_i_83__0_n_0 ;
  wire \rStoredData[1]_i_84__0_n_0 ;
  wire \rStoredData[1]_i_85__0_n_0 ;
  wire \rStoredData[1]_i_86__0_n_0 ;
  wire \rStoredData[1]_i_87__0_n_0 ;
  wire \rStoredData[1]_i_88__0_n_0 ;
  wire \rStoredData[1]_i_89__0_n_0 ;
  wire \rStoredData[1]_i_8__0_n_0 ;
  wire \rStoredData[1]_i_90__0_n_0 ;
  wire \rStoredData[1]_i_91__0_n_0 ;
  wire \rStoredData[1]_i_92__0_n_0 ;
  wire \rStoredData[1]_i_93__0_n_0 ;
  wire \rStoredData[1]_i_94__0_n_0 ;
  wire \rStoredData[1]_i_95__0_n_0 ;
  wire \rStoredData[1]_i_96__0_n_0 ;
  wire \rStoredData[1]_i_97__0_n_0 ;
  wire \rStoredData[1]_i_98__0_n_0 ;
  wire \rStoredData[1]_i_99__0_n_0 ;
  wire \rStoredData[1]_i_9__0_n_0 ;
  wire \rStoredData[2]_i_100__0_n_0 ;
  wire \rStoredData[2]_i_101__0_n_0 ;
  wire \rStoredData[2]_i_102__0_n_0 ;
  wire \rStoredData[2]_i_103__0_n_0 ;
  wire \rStoredData[2]_i_104__0_n_0 ;
  wire \rStoredData[2]_i_105__0_n_0 ;
  wire \rStoredData[2]_i_106__0_n_0 ;
  wire \rStoredData[2]_i_107__0_n_0 ;
  wire \rStoredData[2]_i_10__0_n_0 ;
  wire \rStoredData[2]_i_11__0_n_0 ;
  wire \rStoredData[2]_i_12__0_n_0 ;
  wire \rStoredData[2]_i_13_n_0 ;
  wire \rStoredData[2]_i_14_n_0 ;
  wire \rStoredData[2]_i_15_n_0 ;
  wire \rStoredData[2]_i_16__0_n_0 ;
  wire \rStoredData[2]_i_17_n_0 ;
  wire \rStoredData[2]_i_1__0_n_0 ;
  wire \rStoredData[2]_i_24_n_0 ;
  wire \rStoredData[2]_i_2__0_n_0 ;
  wire \rStoredData[2]_i_3__0_n_0 ;
  wire \rStoredData[2]_i_40__0_n_0 ;
  wire \rStoredData[2]_i_41_n_0 ;
  wire \rStoredData[2]_i_44_n_0 ;
  wire \rStoredData[2]_i_45__0_n_0 ;
  wire \rStoredData[2]_i_46_n_0 ;
  wire \rStoredData[2]_i_47_n_0 ;
  wire \rStoredData[2]_i_48_n_0 ;
  wire \rStoredData[2]_i_49_n_0 ;
  wire \rStoredData[2]_i_4_n_0 ;
  wire \rStoredData[2]_i_50_n_0 ;
  wire \rStoredData[2]_i_51_n_0 ;
  wire \rStoredData[2]_i_52_n_0 ;
  wire \rStoredData[2]_i_53__0_n_0 ;
  wire \rStoredData[2]_i_54__0_n_0 ;
  wire \rStoredData[2]_i_55__0_n_0 ;
  wire \rStoredData[2]_i_56_n_0 ;
  wire \rStoredData[2]_i_57_n_0 ;
  wire \rStoredData[2]_i_58_n_0 ;
  wire \rStoredData[2]_i_59_n_0 ;
  wire \rStoredData[2]_i_5_n_0 ;
  wire \rStoredData[2]_i_60_n_0 ;
  wire \rStoredData[2]_i_61_n_0 ;
  wire \rStoredData[2]_i_62_n_0 ;
  wire \rStoredData[2]_i_63_n_0 ;
  wire \rStoredData[2]_i_64_n_0 ;
  wire \rStoredData[2]_i_65_n_0 ;
  wire \rStoredData[2]_i_66__0_n_0 ;
  wire \rStoredData[2]_i_67__0_n_0 ;
  wire \rStoredData[2]_i_68__0_n_0 ;
  wire \rStoredData[2]_i_69__0_n_0 ;
  wire \rStoredData[2]_i_78__0_n_0 ;
  wire \rStoredData[2]_i_79__0_n_0 ;
  wire \rStoredData[2]_i_80__0_n_0 ;
  wire \rStoredData[2]_i_81__0_n_0 ;
  wire \rStoredData[2]_i_82__0_n_0 ;
  wire \rStoredData[2]_i_83__0_n_0 ;
  wire \rStoredData[2]_i_84__0_n_0 ;
  wire \rStoredData[2]_i_85__0_n_0 ;
  wire \rStoredData[2]_i_86__0_n_0 ;
  wire \rStoredData[2]_i_87__0_n_0 ;
  wire \rStoredData[2]_i_88__0_n_0 ;
  wire \rStoredData[2]_i_89__0_n_0 ;
  wire \rStoredData[2]_i_90__0_n_0 ;
  wire \rStoredData[2]_i_91__0_n_0 ;
  wire \rStoredData[2]_i_92__0_n_0 ;
  wire \rStoredData[2]_i_93__0_n_0 ;
  wire \rStoredData[2]_i_94__0_n_0 ;
  wire \rStoredData[2]_i_95__0_n_0 ;
  wire \rStoredData[2]_i_96__0_n_0 ;
  wire \rStoredData[2]_i_97__0_n_0 ;
  wire \rStoredData[2]_i_98__0_n_0 ;
  wire \rStoredData[2]_i_99__0_n_0 ;
  wire \rStoredData[2]_i_9__0_n_0 ;
  wire \rStoredData[3]_i_10__0_n_0 ;
  wire \rStoredData[3]_i_11__0_n_0 ;
  wire \rStoredData[3]_i_12__0_n_0 ;
  wire \rStoredData[3]_i_13_n_0 ;
  wire \rStoredData[3]_i_14_n_0 ;
  wire \rStoredData[3]_i_15__0_n_0 ;
  wire \rStoredData[3]_i_16__1_n_0 ;
  wire \rStoredData[3]_i_17__0_n_0 ;
  wire \rStoredData[3]_i_18__0_n_0 ;
  wire \rStoredData[3]_i_19_n_0 ;
  wire \rStoredData[3]_i_1__0_n_0 ;
  wire \rStoredData[3]_i_20__0_n_0 ;
  wire \rStoredData[3]_i_23_n_0 ;
  wire \rStoredData[3]_i_24__0_n_0 ;
  wire \rStoredData[3]_i_27_n_0 ;
  wire \rStoredData[3]_i_28_n_0 ;
  wire \rStoredData[3]_i_29_n_0 ;
  wire \rStoredData[3]_i_2_n_0 ;
  wire \rStoredData[3]_i_31__0_n_0 ;
  wire \rStoredData[3]_i_39__0_n_0 ;
  wire \rStoredData[3]_i_3_n_0 ;
  wire \rStoredData[3]_i_40__0_n_0 ;
  wire \rStoredData[3]_i_43__0_n_0 ;
  wire \rStoredData[3]_i_44__0_n_0 ;
  wire \rStoredData[3]_i_45_n_0 ;
  wire \rStoredData[3]_i_46__1_n_0 ;
  wire \rStoredData[3]_i_47_n_0 ;
  wire \rStoredData[3]_i_48_n_0 ;
  wire \rStoredData[3]_i_49_n_0 ;
  wire \rStoredData[3]_i_4__0_n_0 ;
  wire \rStoredData[3]_i_50__0_n_0 ;
  wire \rStoredData[3]_i_51_n_0 ;
  wire \rStoredData[3]_i_52_n_0 ;
  wire \rStoredData[3]_i_53_n_0 ;
  wire \rStoredData[3]_i_54_n_0 ;
  wire \rStoredData[3]_i_55__0_n_0 ;
  wire \rStoredData[3]_i_56__0_n_0 ;
  wire \rStoredData[3]_i_57_n_0 ;
  wire \rStoredData[3]_i_58_n_0 ;
  wire \rStoredData[3]_i_59__0_n_0 ;
  wire \rStoredData[3]_i_5__0_n_0 ;
  wire \rStoredData[3]_i_60__0_n_0 ;
  wire \rStoredData[3]_i_61__0_n_0 ;
  wire \rStoredData[3]_i_62__1_n_0 ;
  wire \rStoredData[3]_i_69__0_n_0 ;
  wire \rStoredData[3]_i_6__0_n_0 ;
  wire \rStoredData[3]_i_70__0_n_0 ;
  wire \rStoredData[3]_i_71__0_n_0 ;
  wire \rStoredData[3]_i_72__0_n_0 ;
  wire \rStoredData[3]_i_73_n_0 ;
  wire \rStoredData[3]_i_74__0_n_0 ;
  wire \rStoredData[3]_i_75__0_n_0 ;
  wire \rStoredData[3]_i_76__0_n_0 ;
  wire \rStoredData[3]_i_77__0_n_0 ;
  wire \rStoredData[3]_i_78__0_n_0 ;
  wire \rStoredData[3]_i_79__0_n_0 ;
  wire \rStoredData[3]_i_80__0_n_0 ;
  wire \rStoredData[3]_i_81__0_n_0 ;
  wire \rStoredData[3]_i_82__0_n_0 ;
  wire \rStoredData[3]_i_83__0_n_0 ;
  wire \rStoredData[3]_i_84__0_n_0 ;
  wire \rStoredData[3]_i_85__0_n_0 ;
  wire \rStoredData[3]_i_86__0_n_0 ;
  wire \rStoredData[3]_i_87__0_n_0 ;
  wire \rStoredData[3]_i_88__0_n_0 ;
  wire \rStoredData[3]_i_89__0_n_0 ;
  wire \rStoredData[3]_i_90_n_0 ;
  wire \rStoredData[3]_i_91_n_0 ;
  wire \rStoredData[3]_i_92_n_0 ;
  wire \rStoredData[3]_i_9__0_n_0 ;
  wire \rStoredData[4]_i_12_n_0 ;
  wire \rStoredData[4]_i_13_n_0 ;
  wire \rStoredData[4]_i_14_n_0 ;
  wire \rStoredData[4]_i_15__0_n_0 ;
  wire \rStoredData[4]_i_17__0_n_0 ;
  wire \rStoredData[4]_i_18__0_n_0 ;
  wire \rStoredData[4]_i_1__0_n_0 ;
  wire \rStoredData[4]_i_25__0_n_0 ;
  wire \rStoredData[4]_i_26__0_n_0 ;
  wire \rStoredData[4]_i_27__0_n_0 ;
  wire \rStoredData[4]_i_28__0_n_0 ;
  wire \rStoredData[4]_i_29__0_n_0 ;
  wire \rStoredData[4]_i_30__0_n_0 ;
  wire \rStoredData[4]_i_31__0_n_0 ;
  wire \rStoredData[4]_i_32__0_n_0 ;
  wire \rStoredData[4]_i_33__0_n_0 ;
  wire \rStoredData[4]_i_34__0_n_0 ;
  wire \rStoredData[4]_i_35__0_n_0 ;
  wire \rStoredData[4]_i_36__0_n_0 ;
  wire \rStoredData[4]_i_37__0_n_0 ;
  wire \rStoredData[4]_i_38__0_n_0 ;
  wire \rStoredData[4]_i_39__0_n_0 ;
  wire \rStoredData[4]_i_40__0_n_0 ;
  wire \rStoredData[4]_i_41__0_n_0 ;
  wire \rStoredData[4]_i_42__0_n_0 ;
  wire \rStoredData[4]_i_43__1_n_0 ;
  wire \rStoredData[4]_i_44__0_n_0 ;
  wire \rStoredData[4]_i_45__0_n_0 ;
  wire \rStoredData[4]_i_46__0_n_0 ;
  wire \rStoredData[4]_i_47__0_n_0 ;
  wire \rStoredData[4]_i_48__0_n_0 ;
  wire \rStoredData[4]_i_49__0_n_0 ;
  wire \rStoredData[4]_i_4__0_n_0 ;
  wire \rStoredData[4]_i_50__0_n_0 ;
  wire \rStoredData[4]_i_51_n_0 ;
  wire \rStoredData[4]_i_52_n_0 ;
  wire \rStoredData[4]_i_53__0_n_0 ;
  wire \rStoredData[4]_i_54__0_n_0 ;
  wire \rStoredData[4]_i_55__0_n_0 ;
  wire \rStoredData[4]_i_56__0_n_0 ;
  wire \rStoredData[4]_i_57__0_n_0 ;
  wire \rStoredData[4]_i_58__0_n_0 ;
  wire \rStoredData[4]_i_59__0_n_0 ;
  wire \rStoredData[4]_i_5__0_n_0 ;
  wire \rStoredData[4]_i_60__0_n_0 ;
  wire \rStoredData[4]_i_61__0_n_0 ;
  wire \rStoredData[4]_i_6__0_n_0 ;
  wire \rStoredData[4]_i_7__0_n_0 ;
  wire \rStoredData[4]_i_8__0_n_0 ;
  wire \rStoredData[5]_i_10__0_n_0 ;
  wire \rStoredData[5]_i_12__0_n_0 ;
  wire \rStoredData[5]_i_14_n_0 ;
  wire \rStoredData[5]_i_15__0_n_0 ;
  wire \rStoredData[5]_i_16__1_n_0 ;
  wire \rStoredData[5]_i_17__1_n_0 ;
  wire \rStoredData[5]_i_18__1_n_0 ;
  wire \rStoredData[5]_i_19__0_n_0 ;
  wire \rStoredData[5]_i_1__0_n_0 ;
  wire \rStoredData[5]_i_20__0_n_0 ;
  wire \rStoredData[5]_i_21__0_n_0 ;
  wire \rStoredData[5]_i_22_n_0 ;
  wire \rStoredData[5]_i_23__0_n_0 ;
  wire \rStoredData[5]_i_24__0_n_0 ;
  wire \rStoredData[5]_i_25__0_n_0 ;
  wire \rStoredData[5]_i_26__1_n_0 ;
  wire \rStoredData[5]_i_27__0_n_0 ;
  wire \rStoredData[5]_i_28__0_n_0 ;
  wire \rStoredData[5]_i_29__0_n_0 ;
  wire \rStoredData[5]_i_2__0_n_0 ;
  wire \rStoredData[5]_i_30__0_n_0 ;
  wire \rStoredData[5]_i_31__1_n_0 ;
  wire \rStoredData[5]_i_32_n_0 ;
  wire \rStoredData[5]_i_33_n_0 ;
  wire \rStoredData[5]_i_34_n_0 ;
  wire \rStoredData[5]_i_35_n_0 ;
  wire \rStoredData[5]_i_36__0_n_0 ;
  wire \rStoredData[5]_i_37_n_0 ;
  wire \rStoredData[5]_i_38__0_n_0 ;
  wire \rStoredData[5]_i_39_n_0 ;
  wire \rStoredData[5]_i_3__0_n_0 ;
  wire \rStoredData[5]_i_40_n_0 ;
  wire \rStoredData[5]_i_41__0_n_0 ;
  wire \rStoredData[5]_i_4__0_n_0 ;
  wire \rStoredData[5]_i_5__0_n_0 ;
  wire \rStoredData[5]_i_6__0_n_0 ;
  wire \rStoredData[5]_i_7__0_n_0 ;
  wire \rStoredData[5]_i_8__0_n_0 ;
  wire \rStoredData[6]_i_11__0_n_0 ;
  wire \rStoredData[6]_i_12_n_0 ;
  wire \rStoredData[6]_i_13_n_0 ;
  wire \rStoredData[6]_i_14__0_n_0 ;
  wire \rStoredData[6]_i_15__0_n_0 ;
  wire \rStoredData[6]_i_16__0_n_0 ;
  wire \rStoredData[6]_i_17_n_0 ;
  wire \rStoredData[6]_i_18_n_0 ;
  wire \rStoredData[6]_i_19__0_n_0 ;
  wire \rStoredData[6]_i_1__0_n_0 ;
  wire \rStoredData[6]_i_20__0_n_0 ;
  wire \rStoredData[6]_i_21__0_n_0 ;
  wire \rStoredData[6]_i_2__0_n_0 ;
  wire \rStoredData[6]_i_3_n_0 ;
  wire \rStoredData[6]_i_4__0_n_0 ;
  wire \rStoredData[6]_i_5__1_n_0 ;
  wire \rStoredData[6]_i_6__0_n_0 ;
  wire \rStoredData[6]_i_7__1_n_0 ;
  wire \rStoredData[6]_i_8__0_n_0 ;
  wire \rStoredData[6]_i_9__0_n_0 ;
  wire \rStoredData[7]_i_10_n_0 ;
  wire \rStoredData[7]_i_1__1_n_0 ;
  wire \rStoredData[7]_i_2__0_n_0 ;
  wire \rStoredData[7]_i_3__1_n_0 ;
  wire \rStoredData[7]_i_4__0_n_0 ;
  wire \rStoredData[7]_i_5__0_n_0 ;
  wire \rStoredData[7]_i_6__0_n_0 ;
  wire \rStoredData[7]_i_7__0_n_0 ;
  wire \rStoredData[7]_i_8__0_n_0 ;
  wire \rStoredData[7]_i_9__0_n_0 ;
  wire \rStoredData_reg[0]_i_11__0_n_0 ;
  wire \rStoredData_reg[0]_i_12__0_n_0 ;
  wire \rStoredData_reg[0]_i_13__0_n_0 ;
  wire \rStoredData_reg[0]_i_14__0_n_0 ;
  wire \rStoredData_reg[0]_i_15__0_n_0 ;
  wire \rStoredData_reg[0]_i_16__0_n_0 ;
  wire \rStoredData_reg[0]_i_17__0_n_0 ;
  wire \rStoredData_reg[0]_i_18__0_n_0 ;
  wire \rStoredData_reg[0]_i_19__0_n_0 ;
  wire \rStoredData_reg[0]_i_20__0_n_0 ;
  wire \rStoredData_reg[0]_i_21__0_n_0 ;
  wire \rStoredData_reg[0]_i_22__0_n_0 ;
  wire \rStoredData_reg[0]_i_23__0_n_0 ;
  wire \rStoredData_reg[0]_i_24__0_n_0 ;
  wire \rStoredData_reg[0]_i_25__0_n_0 ;
  wire \rStoredData_reg[0]_i_26__0_n_0 ;
  wire \rStoredData_reg[0]_i_27__0_n_0 ;
  wire \rStoredData_reg[0]_i_28__0_n_0 ;
  wire \rStoredData_reg[0]_i_29__0_n_0 ;
  wire \rStoredData_reg[0]_i_30__0_n_0 ;
  wire \rStoredData_reg[0]_i_47__0_n_0 ;
  wire \rStoredData_reg[0]_i_48__0_n_0 ;
  wire \rStoredData_reg[0]_i_49__0_n_0 ;
  wire \rStoredData_reg[0]_i_4__0_n_0 ;
  wire \rStoredData_reg[0]_i_50__0_n_0 ;
  wire \rStoredData_reg[0]_i_51__0_n_0 ;
  wire \rStoredData_reg[0]_i_52__0_n_0 ;
  wire \rStoredData_reg[0]_i_53__0_n_0 ;
  wire \rStoredData_reg[0]_i_54__0_n_0 ;
  wire \rStoredData_reg[0]_i_55__0_n_0 ;
  wire \rStoredData_reg[0]_i_56__0_n_0 ;
  wire \rStoredData_reg[0]_i_57__0_n_0 ;
  wire \rStoredData_reg[0]_i_58__0_n_0 ;
  wire \rStoredData_reg[0]_i_59__0_n_0 ;
  wire \rStoredData_reg[0]_i_5__0_n_0 ;
  wire \rStoredData_reg[0]_i_60__0_n_0 ;
  wire \rStoredData_reg[0]_i_61__0_n_0 ;
  wire \rStoredData_reg[0]_i_62__0_n_0 ;
  wire \rStoredData_reg[0]_i_63__0_n_0 ;
  wire \rStoredData_reg[0]_i_64__0_n_0 ;
  wire \rStoredData_reg[0]_i_65__0_n_0 ;
  wire \rStoredData_reg[0]_i_66__0_n_0 ;
  wire \rStoredData_reg[0]_i_67__0_n_0 ;
  wire \rStoredData_reg[0]_i_68__0_n_0 ;
  wire \rStoredData_reg[0]_i_69__0_n_0 ;
  wire \rStoredData_reg[0]_i_6__0_n_0 ;
  wire \rStoredData_reg[0]_i_70__0_n_0 ;
  wire \rStoredData_reg[0]_i_7__0_n_0 ;
  wire \rStoredData_reg[1]_i_11_n_0 ;
  wire \rStoredData_reg[1]_i_12_n_0 ;
  wire \rStoredData_reg[1]_i_13_n_0 ;
  wire \rStoredData_reg[1]_i_14_n_0 ;
  wire \rStoredData_reg[1]_i_15__0_n_0 ;
  wire \rStoredData_reg[1]_i_16__0_n_0 ;
  wire \rStoredData_reg[1]_i_17__0_n_0 ;
  wire \rStoredData_reg[1]_i_18__0_n_0 ;
  wire \rStoredData_reg[1]_i_19__0_n_0 ;
  wire \rStoredData_reg[1]_i_20__0_n_0 ;
  wire \rStoredData_reg[1]_i_21__0_n_0 ;
  wire \rStoredData_reg[1]_i_22__0_n_0 ;
  wire \rStoredData_reg[1]_i_23__0_n_0 ;
  wire \rStoredData_reg[1]_i_24__0_n_0 ;
  wire \rStoredData_reg[1]_i_25__0_n_0 ;
  wire \rStoredData_reg[1]_i_26__0_n_0 ;
  wire \rStoredData_reg[1]_i_27__0_n_0 ;
  wire \rStoredData_reg[1]_i_28__0_n_0 ;
  wire \rStoredData_reg[1]_i_29__0_n_0 ;
  wire \rStoredData_reg[1]_i_30__0_n_0 ;
  wire \rStoredData_reg[1]_i_47__0_n_0 ;
  wire \rStoredData_reg[1]_i_48__0_n_0 ;
  wire \rStoredData_reg[1]_i_49__0_n_0 ;
  wire \rStoredData_reg[1]_i_4_n_0 ;
  wire \rStoredData_reg[1]_i_50__0_n_0 ;
  wire \rStoredData_reg[1]_i_51__0_n_0 ;
  wire \rStoredData_reg[1]_i_52__0_n_0 ;
  wire \rStoredData_reg[1]_i_53__0_n_0 ;
  wire \rStoredData_reg[1]_i_54__0_n_0 ;
  wire \rStoredData_reg[1]_i_55__0_n_0 ;
  wire \rStoredData_reg[1]_i_56__0_n_0 ;
  wire \rStoredData_reg[1]_i_57__0_n_0 ;
  wire \rStoredData_reg[1]_i_58__0_n_0 ;
  wire \rStoredData_reg[1]_i_59__0_n_0 ;
  wire \rStoredData_reg[1]_i_5__0_n_0 ;
  wire \rStoredData_reg[1]_i_60__0_n_0 ;
  wire \rStoredData_reg[1]_i_61__0_n_0 ;
  wire \rStoredData_reg[1]_i_62__0_n_0 ;
  wire \rStoredData_reg[1]_i_63__0_n_0 ;
  wire \rStoredData_reg[1]_i_64__0_n_0 ;
  wire \rStoredData_reg[1]_i_65__0_n_0 ;
  wire \rStoredData_reg[1]_i_66__0_n_0 ;
  wire \rStoredData_reg[1]_i_67__0_n_0 ;
  wire \rStoredData_reg[1]_i_68__0_n_0 ;
  wire \rStoredData_reg[1]_i_69_n_0 ;
  wire \rStoredData_reg[1]_i_6__0_n_0 ;
  wire \rStoredData_reg[1]_i_70_n_0 ;
  wire \rStoredData_reg[1]_i_7__0_n_0 ;
  wire \rStoredData_reg[2]_i_18__0_n_0 ;
  wire \rStoredData_reg[2]_i_19_n_0 ;
  wire \rStoredData_reg[2]_i_20_n_0 ;
  wire \rStoredData_reg[2]_i_21__0_n_0 ;
  wire \rStoredData_reg[2]_i_22__0_n_0 ;
  wire \rStoredData_reg[2]_i_23_n_0 ;
  wire \rStoredData_reg[2]_i_25__0_n_0 ;
  wire \rStoredData_reg[2]_i_26__0_n_0 ;
  wire \rStoredData_reg[2]_i_27__0_n_0 ;
  wire \rStoredData_reg[2]_i_28__0_n_0 ;
  wire \rStoredData_reg[2]_i_29_n_0 ;
  wire \rStoredData_reg[2]_i_30_n_0 ;
  wire \rStoredData_reg[2]_i_31_n_0 ;
  wire \rStoredData_reg[2]_i_32_n_0 ;
  wire \rStoredData_reg[2]_i_33_n_0 ;
  wire \rStoredData_reg[2]_i_34_n_0 ;
  wire \rStoredData_reg[2]_i_35_n_0 ;
  wire \rStoredData_reg[2]_i_36_n_0 ;
  wire \rStoredData_reg[2]_i_37_n_0 ;
  wire \rStoredData_reg[2]_i_38_n_0 ;
  wire \rStoredData_reg[2]_i_39_n_0 ;
  wire \rStoredData_reg[2]_i_42__0_n_0 ;
  wire \rStoredData_reg[2]_i_43__0_n_0 ;
  wire \rStoredData_reg[2]_i_6__0_n_0 ;
  wire \rStoredData_reg[2]_i_70_n_0 ;
  wire \rStoredData_reg[2]_i_71_n_0 ;
  wire \rStoredData_reg[2]_i_72_n_0 ;
  wire \rStoredData_reg[2]_i_73_n_0 ;
  wire \rStoredData_reg[2]_i_74_n_0 ;
  wire \rStoredData_reg[2]_i_75_n_0 ;
  wire \rStoredData_reg[2]_i_76_n_0 ;
  wire \rStoredData_reg[2]_i_77_n_0 ;
  wire \rStoredData_reg[2]_i_7__0_n_0 ;
  wire \rStoredData_reg[2]_i_8__0_n_0 ;
  wire \rStoredData_reg[3]_i_21__0_n_0 ;
  wire \rStoredData_reg[3]_i_22__0_n_0 ;
  wire \rStoredData_reg[3]_i_25_n_0 ;
  wire \rStoredData_reg[3]_i_26__0_n_0 ;
  wire \rStoredData_reg[3]_i_30_n_0 ;
  wire \rStoredData_reg[3]_i_32__0_n_0 ;
  wire \rStoredData_reg[3]_i_33__0_n_0 ;
  wire \rStoredData_reg[3]_i_34_n_0 ;
  wire \rStoredData_reg[3]_i_35_n_0 ;
  wire \rStoredData_reg[3]_i_36_n_0 ;
  wire \rStoredData_reg[3]_i_37_n_0 ;
  wire \rStoredData_reg[3]_i_38_n_0 ;
  wire \rStoredData_reg[3]_i_41_n_0 ;
  wire \rStoredData_reg[3]_i_42_n_0 ;
  wire \rStoredData_reg[3]_i_63_n_0 ;
  wire \rStoredData_reg[3]_i_64_n_0 ;
  wire \rStoredData_reg[3]_i_65_n_0 ;
  wire \rStoredData_reg[3]_i_66_n_0 ;
  wire \rStoredData_reg[3]_i_67_n_0 ;
  wire \rStoredData_reg[3]_i_68_n_0 ;
  wire \rStoredData_reg[3]_i_7_n_0 ;
  wire \rStoredData_reg[3]_i_8_n_0 ;
  wire \rStoredData_reg[4]_i_10__0_n_0 ;
  wire \rStoredData_reg[4]_i_11__0_n_0 ;
  wire \rStoredData_reg[4]_i_16__0_n_0 ;
  wire \rStoredData_reg[4]_i_19__0_n_0 ;
  wire \rStoredData_reg[4]_i_20__0_n_0 ;
  wire \rStoredData_reg[4]_i_21__0_n_0 ;
  wire \rStoredData_reg[4]_i_22__0_n_0 ;
  wire \rStoredData_reg[4]_i_23__0_n_0 ;
  wire \rStoredData_reg[4]_i_24__0_n_0 ;
  wire \rStoredData_reg[4]_i_2__0_n_0 ;
  wire \rStoredData_reg[4]_i_3__0_n_0 ;
  wire \rStoredData_reg[4]_i_9__0_n_0 ;
  wire \rStoredData_reg[5]_i_11__0_n_0 ;
  wire \rStoredData_reg[5]_i_13__0_n_0 ;
  wire \rStoredData_reg[5]_i_9_n_0 ;
  wire \rStoredData_reg[6]_i_10_n_0 ;
  wire [2:0]sGammaReg;
  wire [9:0]s_axis_video_tdata;

  LUT6 #(
    .INIT(64'h1051EEAE8A8875F7)) 
    \rStoredData[0]_i_100__0 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[3]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[1]),
        .O(\rStoredData[0]_i_100__0_n_0 ));
  LUT6 #(
    .INIT(64'hC43C63CCC3BC33C3)) 
    \rStoredData[0]_i_101__0 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[0]),
        .O(\rStoredData[0]_i_101__0_n_0 ));
  LUT6 #(
    .INIT(64'h769155A8578815EA)) 
    \rStoredData[0]_i_102__0 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[0]),
        .O(\rStoredData[0]_i_102__0_n_0 ));
  LUT6 #(
    .INIT(64'h36B693CB9293C949)) 
    \rStoredData[0]_i_103__0 
       (.I0(s_axis_video_tdata[6]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[0]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[1]),
        .O(\rStoredData[0]_i_103__0_n_0 ));
  LUT6 #(
    .INIT(64'h969293DBC949696C)) 
    \rStoredData[0]_i_104__0 
       (.I0(s_axis_video_tdata[6]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[0]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[2]),
        .O(\rStoredData[0]_i_104__0_n_0 ));
  LUT6 #(
    .INIT(64'h65E6A686969E9A19)) 
    \rStoredData[0]_i_105__0 
       (.I0(s_axis_video_tdata[6]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[0]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[2]),
        .O(\rStoredData[0]_i_105__0_n_0 ));
  LUT6 #(
    .INIT(64'h899966E817769999)) 
    \rStoredData[0]_i_106__0 
       (.I0(s_axis_video_tdata[6]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[3]),
        .I5(s_axis_video_tdata[2]),
        .O(\rStoredData[0]_i_106__0_n_0 ));
  LUT6 #(
    .INIT(64'h665D2666999A5999)) 
    \rStoredData[0]_i_107__0 
       (.I0(s_axis_video_tdata[6]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[3]),
        .I5(s_axis_video_tdata[2]),
        .O(\rStoredData[0]_i_107__0_n_0 ));
  LUT6 #(
    .INIT(64'h296B626646D6949D)) 
    \rStoredData[0]_i_108__0 
       (.I0(s_axis_video_tdata[6]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[0]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[2]),
        .O(\rStoredData[0]_i_108__0_n_0 ));
  LUT6 #(
    .INIT(64'hD3CC323333D9CC33)) 
    \rStoredData[0]_i_109__0 
       (.I0(s_axis_video_tdata[6]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[3]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[1]),
        .O(\rStoredData[0]_i_109__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rStoredData[0]_i_10__0 
       (.I0(\rStoredData_reg[0]_i_27__0_n_0 ),
        .I1(\rStoredData_reg[0]_i_28__0_n_0 ),
        .I2(s_axis_video_tdata[9]),
        .I3(\rStoredData_reg[0]_i_29__0_n_0 ),
        .I4(s_axis_video_tdata[8]),
        .I5(\rStoredData_reg[0]_i_30__0_n_0 ),
        .O(\rStoredData[0]_i_10__0_n_0 ));
  LUT6 #(
    .INIT(64'h4C3C33333C33C3C3)) 
    \rStoredData[0]_i_110__0 
       (.I0(s_axis_video_tdata[6]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[0]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[1]),
        .O(\rStoredData[0]_i_110__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF40000000FD)) 
    \rStoredData[0]_i_111__0 
       (.I0(s_axis_video_tdata[6]),
        .I1(s_axis_video_tdata[3]),
        .I2(s_axis_video_tdata[4]),
        .I3(s_axis_video_tdata[0]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[2]),
        .O(\rStoredData[0]_i_111__0_n_0 ));
  LUT6 #(
    .INIT(64'h4F00FFFF30FF0000)) 
    \rStoredData[0]_i_112__0 
       (.I0(s_axis_video_tdata[3]),
        .I1(s_axis_video_tdata[0]),
        .I2(s_axis_video_tdata[4]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[6]),
        .I5(s_axis_video_tdata[2]),
        .O(\rStoredData[0]_i_112__0_n_0 ));
  LUT6 #(
    .INIT(64'h00CD204CFF33DFFB)) 
    \rStoredData[0]_i_113__0 
       (.I0(s_axis_video_tdata[6]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[3]),
        .I5(s_axis_video_tdata[2]),
        .O(\rStoredData[0]_i_113__0_n_0 ));
  LUT6 #(
    .INIT(64'hFE377F33038080C8)) 
    \rStoredData[0]_i_114__0 
       (.I0(s_axis_video_tdata[6]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[0]),
        .I5(s_axis_video_tdata[2]),
        .O(\rStoredData[0]_i_114__0_n_0 ));
  LUT6 #(
    .INIT(64'h52E5BD3F1F06A4E8)) 
    \rStoredData[0]_i_115__0 
       (.I0(s_axis_video_tdata[6]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[1]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[3]),
        .I5(s_axis_video_tdata[0]),
        .O(\rStoredData[0]_i_115__0_n_0 ));
  LUT6 #(
    .INIT(64'hA37DC222DE821DD7)) 
    \rStoredData[0]_i_116__0 
       (.I0(s_axis_video_tdata[6]),
        .I1(s_axis_video_tdata[3]),
        .I2(s_axis_video_tdata[2]),
        .I3(s_axis_video_tdata[4]),
        .I4(s_axis_video_tdata[0]),
        .I5(s_axis_video_tdata[1]),
        .O(\rStoredData[0]_i_116__0_n_0 ));
  LUT6 #(
    .INIT(64'h1446B998676B9404)) 
    \rStoredData[0]_i_117__0 
       (.I0(s_axis_video_tdata[6]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[0]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[1]),
        .O(\rStoredData[0]_i_117__0_n_0 ));
  LUT6 #(
    .INIT(64'hFECC40011337BEEE)) 
    \rStoredData[0]_i_118__0 
       (.I0(s_axis_video_tdata[6]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[0]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[2]),
        .O(\rStoredData[0]_i_118__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \rStoredData[0]_i_1__0 
       (.I0(\rStoredData[0]_i_2__0_n_0 ),
        .I1(\rStoredData[0]_i_3__0_n_0 ),
        .I2(sGammaReg[2]),
        .O(\rStoredData[0]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rStoredData[0]_i_2__0 
       (.I0(\rStoredData_reg[0]_i_4__0_n_0 ),
        .I1(\rStoredData_reg[0]_i_5__0_n_0 ),
        .I2(s_axis_video_tdata[8]),
        .I3(\rStoredData_reg[0]_i_6__0_n_0 ),
        .I4(s_axis_video_tdata[9]),
        .I5(\rStoredData_reg[0]_i_7__0_n_0 ),
        .O(\rStoredData[0]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h0F0F70F00F1AF0F0)) 
    \rStoredData[0]_i_31__0 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[0]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[1]),
        .O(\rStoredData[0]_i_31__0_n_0 ));
  LUT6 #(
    .INIT(64'h0F0F0F0F87F0F0F0)) 
    \rStoredData[0]_i_32__0 
       (.I0(s_axis_video_tdata[4]),
        .I1(s_axis_video_tdata[5]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[0]),
        .I5(s_axis_video_tdata[2]),
        .O(\rStoredData[0]_i_32__0_n_0 ));
  LUT6 #(
    .INIT(64'h0B0AF5FDFFFF0000)) 
    \rStoredData[0]_i_33__0 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[0]),
        .I2(s_axis_video_tdata[1]),
        .I3(s_axis_video_tdata[4]),
        .I4(s_axis_video_tdata[3]),
        .I5(s_axis_video_tdata[2]),
        .O(\rStoredData[0]_i_33__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFF7FF551000008A)) 
    \rStoredData[0]_i_34__0 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[0]_i_34__0_n_0 ));
  LUT6 #(
    .INIT(64'h7655579581A888AA)) 
    \rStoredData[0]_i_35__0 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[0]),
        .I5(s_axis_video_tdata[2]),
        .O(\rStoredData[0]_i_35__0_n_0 ));
  LUT6 #(
    .INIT(64'hC4DC9DBD392B2362)) 
    \rStoredData[0]_i_36__0 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[0]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[2]),
        .O(\rStoredData[0]_i_36__0_n_0 ));
  LUT6 #(
    .INIT(64'hC3CBCC4C3C3C3C33)) 
    \rStoredData[0]_i_37__0 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[0]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[2]),
        .O(\rStoredData[0]_i_37__0_n_0 ));
  LUT6 #(
    .INIT(64'h4AF00F52AD4AB52F)) 
    \rStoredData[0]_i_38__0 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[0]),
        .I2(s_axis_video_tdata[4]),
        .I3(s_axis_video_tdata[3]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[2]),
        .O(\rStoredData[0]_i_38__0_n_0 ));
  LUT6 #(
    .INIT(64'h5969496D65A4A4B6)) 
    \rStoredData[0]_i_39__0 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[0]),
        .I5(s_axis_video_tdata[2]),
        .O(\rStoredData[0]_i_39__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rStoredData[0]_i_3__0 
       (.I0(\rStoredData[0]_i_8__0_n_0 ),
        .I1(\rStoredData[0]_i_9__0_n_0 ),
        .I2(sGammaReg[0]),
        .I3(\rStoredData[0]_i_10__0_n_0 ),
        .I4(sGammaReg[1]),
        .I5(s_axis_video_tdata[2]),
        .O(\rStoredData[0]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'h5961E5A779E5A586)) 
    \rStoredData[0]_i_40__0 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[0]),
        .O(\rStoredData[0]_i_40__0_n_0 ));
  LUT6 #(
    .INIT(64'hEAA8575F0111EEEA)) 
    \rStoredData[0]_i_41__0 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[1]),
        .I3(s_axis_video_tdata[0]),
        .I4(s_axis_video_tdata[3]),
        .I5(s_axis_video_tdata[2]),
        .O(\rStoredData[0]_i_41__0_n_0 ));
  LUT6 #(
    .INIT(64'h5AF078F0F0E1F1A5)) 
    \rStoredData[0]_i_42__0 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[0]),
        .I5(s_axis_video_tdata[2]),
        .O(\rStoredData[0]_i_42__0_n_0 ));
  LUT6 #(
    .INIT(64'h34CF4A9D9125E10E)) 
    \rStoredData[0]_i_43__0 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[0]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[1]),
        .O(\rStoredData[0]_i_43__0_n_0 ));
  LUT6 #(
    .INIT(64'hDD8819FD297F6222)) 
    \rStoredData[0]_i_44__0 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[3]),
        .I2(s_axis_video_tdata[2]),
        .I3(s_axis_video_tdata[4]),
        .I4(s_axis_video_tdata[0]),
        .I5(s_axis_video_tdata[1]),
        .O(\rStoredData[0]_i_44__0_n_0 ));
  LUT6 #(
    .INIT(64'hCCC53ABC43338DCD)) 
    \rStoredData[0]_i_45__0 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[0]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[1]),
        .O(\rStoredData[0]_i_45__0_n_0 ));
  LUT6 #(
    .INIT(64'h15FFFFFEEA000111)) 
    \rStoredData[0]_i_46__0 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[0]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[2]),
        .O(\rStoredData[0]_i_46__0_n_0 ));
  LUT5 #(
    .INIT(32'h9D462B9D)) 
    \rStoredData[0]_i_71__0 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[1]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[3]),
        .O(\rStoredData[0]_i_71__0_n_0 ));
  LUT6 #(
    .INIT(64'hAB999D546662AAB9)) 
    \rStoredData[0]_i_72__0 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[0]_i_72__0_n_0 ));
  LUT6 #(
    .INIT(64'h5577FEEAA8811155)) 
    \rStoredData[0]_i_73__0 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[0]_i_73__0_n_0 ));
  LUT6 #(
    .INIT(64'hEA880011557FFEEA)) 
    \rStoredData[0]_i_74__0 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[0]_i_74__0_n_0 ));
  LUT6 #(
    .INIT(64'h533A32ECCCD3D932)) 
    \rStoredData[0]_i_75__0 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[3]),
        .I5(s_axis_video_tdata[2]),
        .O(\rStoredData[0]_i_75__0_n_0 ));
  LUT6 #(
    .INIT(64'h5756EEEAA8811515)) 
    \rStoredData[0]_i_76__0 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[3]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[2]),
        .O(\rStoredData[0]_i_76__0_n_0 ));
  LUT6 #(
    .INIT(64'h9DB99D392B626246)) 
    \rStoredData[0]_i_77__0 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[0]),
        .I5(s_axis_video_tdata[2]),
        .O(\rStoredData[0]_i_77__0_n_0 ));
  LUT6 #(
    .INIT(64'hCC32CC4CD3CC33DB)) 
    \rStoredData[0]_i_78__0 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[3]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[2]),
        .O(\rStoredData[0]_i_78__0_n_0 ));
  LUT6 #(
    .INIT(64'hCCCC339C4333CCC4)) 
    \rStoredData[0]_i_79__0 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[3]),
        .I5(s_axis_video_tdata[2]),
        .O(\rStoredData[0]_i_79__0_n_0 ));
  LUT6 #(
    .INIT(64'h4623DCC43BB94623)) 
    \rStoredData[0]_i_80__0 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[3]),
        .I5(s_axis_video_tdata[2]),
        .O(\rStoredData[0]_i_80__0_n_0 ));
  LUT6 #(
    .INIT(64'hAA9956669155AAA9)) 
    \rStoredData[0]_i_81__0 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[3]),
        .I5(s_axis_video_tdata[2]),
        .O(\rStoredData[0]_i_81__0_n_0 ));
  LUT6 #(
    .INIT(64'h89116EEA5577A899)) 
    \rStoredData[0]_i_82__0 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[3]),
        .I5(s_axis_video_tdata[2]),
        .O(\rStoredData[0]_i_82__0_n_0 ));
  LUT6 #(
    .INIT(64'h40FC43DC17A9249E)) 
    \rStoredData[0]_i_83__0 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[3]),
        .I5(s_axis_video_tdata[2]),
        .O(\rStoredData[0]_i_83__0_n_0 ));
  LUT6 #(
    .INIT(64'h11A1DE14EB4E11B9)) 
    \rStoredData[0]_i_84__0 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[0]_i_84__0_n_0 ));
  LUT6 #(
    .INIT(64'hB200FFFFDDFF0000)) 
    \rStoredData[0]_i_85__0 
       (.I0(s_axis_video_tdata[4]),
        .I1(s_axis_video_tdata[0]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[5]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[2]),
        .O(\rStoredData[0]_i_85__0_n_0 ));
  LUT6 #(
    .INIT(64'h5598AA6675598AA6)) 
    \rStoredData[0]_i_86__0 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[0]_i_86__0_n_0 ));
  LUT6 #(
    .INIT(64'h080F0000F7F0FFFF)) 
    \rStoredData[0]_i_87__0 
       (.I0(s_axis_video_tdata[3]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[1]),
        .I3(s_axis_video_tdata[0]),
        .I4(s_axis_video_tdata[5]),
        .I5(s_axis_video_tdata[2]),
        .O(\rStoredData[0]_i_87__0_n_0 ));
  LUT6 #(
    .INIT(64'h46B9D4A9952B9D62)) 
    \rStoredData[0]_i_88__0 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[0]),
        .I5(s_axis_video_tdata[1]),
        .O(\rStoredData[0]_i_88__0_n_0 ));
  LUT6 #(
    .INIT(64'hEFAE5151F7F70808)) 
    \rStoredData[0]_i_89__0 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[3]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[1]),
        .O(\rStoredData[0]_i_89__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rStoredData[0]_i_8__0 
       (.I0(\rStoredData_reg[0]_i_19__0_n_0 ),
        .I1(\rStoredData_reg[0]_i_20__0_n_0 ),
        .I2(s_axis_video_tdata[7]),
        .I3(\rStoredData_reg[0]_i_21__0_n_0 ),
        .I4(s_axis_video_tdata[9]),
        .I5(\rStoredData_reg[0]_i_22__0_n_0 ),
        .O(\rStoredData[0]_i_8__0_n_0 ));
  LUT6 #(
    .INIT(64'h9BB2D99B6464A626)) 
    \rStoredData[0]_i_90__0 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[1]),
        .I3(s_axis_video_tdata[0]),
        .I4(s_axis_video_tdata[3]),
        .I5(s_axis_video_tdata[2]),
        .O(\rStoredData[0]_i_90__0_n_0 ));
  LUT6 #(
    .INIT(64'hB995666A5556ABB9)) 
    \rStoredData[0]_i_91__0 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[0]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[1]),
        .O(\rStoredData[0]_i_91__0_n_0 ));
  LUT6 #(
    .INIT(64'hEA6E7657559599A9)) 
    \rStoredData[0]_i_92__0 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[0]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[2]),
        .O(\rStoredData[0]_i_92__0_n_0 ));
  LUT6 #(
    .INIT(64'h11EA55A87F80FE11)) 
    \rStoredData[0]_i_93__0 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[0]),
        .I5(s_axis_video_tdata[1]),
        .O(\rStoredData[0]_i_93__0_n_0 ));
  LUT6 #(
    .INIT(64'hA665AA6659995559)) 
    \rStoredData[0]_i_94__0 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[3]),
        .I5(s_axis_video_tdata[2]),
        .O(\rStoredData[0]_i_94__0_n_0 ));
  LUT6 #(
    .INIT(64'hA87700FF00FF01EE)) 
    \rStoredData[0]_i_95__0 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[0]),
        .O(\rStoredData[0]_i_95__0_n_0 ));
  LUT6 #(
    .INIT(64'h2665AA66599B55D9)) 
    \rStoredData[0]_i_96__0 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[3]),
        .I5(s_axis_video_tdata[2]),
        .O(\rStoredData[0]_i_96__0_n_0 ));
  LUT6 #(
    .INIT(64'h3F8000FF00FF00FF)) 
    \rStoredData[0]_i_97__0 
       (.I0(s_axis_video_tdata[3]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[5]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[0]),
        .I5(s_axis_video_tdata[1]),
        .O(\rStoredData[0]_i_97__0_n_0 ));
  LUT6 #(
    .INIT(64'h665D266499BA5D99)) 
    \rStoredData[0]_i_98__0 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[3]),
        .I5(s_axis_video_tdata[2]),
        .O(\rStoredData[0]_i_98__0_n_0 ));
  LUT6 #(
    .INIT(64'h860E71B3F09F69E0)) 
    \rStoredData[0]_i_99__0 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[0]),
        .O(\rStoredData[0]_i_99__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rStoredData[0]_i_9__0 
       (.I0(\rStoredData_reg[0]_i_23__0_n_0 ),
        .I1(\rStoredData_reg[0]_i_24__0_n_0 ),
        .I2(s_axis_video_tdata[7]),
        .I3(\rStoredData_reg[0]_i_25__0_n_0 ),
        .I4(s_axis_video_tdata[8]),
        .I5(\rStoredData_reg[0]_i_26__0_n_0 ),
        .O(\rStoredData[0]_i_9__0_n_0 ));
  LUT6 #(
    .INIT(64'hFF005DA005BA00FF)) 
    \rStoredData[1]_i_100__0 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[0]),
        .I2(s_axis_video_tdata[4]),
        .I3(s_axis_video_tdata[3]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[2]),
        .O(\rStoredData[1]_i_100__0_n_0 ));
  LUT6 #(
    .INIT(64'h5A6559E579A569A6)) 
    \rStoredData[1]_i_101__0 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[0]),
        .I5(s_axis_video_tdata[1]),
        .O(\rStoredData[1]_i_101__0_n_0 ));
  LUT6 #(
    .INIT(64'h080A080EEFF7F7F5)) 
    \rStoredData[1]_i_102__0 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[2]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[0]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[1]_i_102__0_n_0 ));
  LUT6 #(
    .INIT(64'h088C88CCEEF7EF77)) 
    \rStoredData[1]_i_103__0 
       (.I0(s_axis_video_tdata[6]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[1]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[0]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[1]_i_103__0_n_0 ));
  LUT6 #(
    .INIT(64'h5F4F0F050520A0B0)) 
    \rStoredData[1]_i_104__0 
       (.I0(s_axis_video_tdata[6]),
        .I1(s_axis_video_tdata[0]),
        .I2(s_axis_video_tdata[4]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[1]_i_104__0_n_0 ));
  LUT6 #(
    .INIT(64'hE361717961617978)) 
    \rStoredData[1]_i_105__0 
       (.I0(s_axis_video_tdata[6]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[0]),
        .O(\rStoredData[1]_i_105__0_n_0 ));
  LUT6 #(
    .INIT(64'h9888E6E68EEE7777)) 
    \rStoredData[1]_i_106__0 
       (.I0(s_axis_video_tdata[6]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[1]),
        .I3(s_axis_video_tdata[0]),
        .I4(s_axis_video_tdata[3]),
        .I5(s_axis_video_tdata[2]),
        .O(\rStoredData[1]_i_106__0_n_0 ));
  LUT6 #(
    .INIT(64'h5075EFAFF5F78A0A)) 
    \rStoredData[1]_i_107__0 
       (.I0(s_axis_video_tdata[6]),
        .I1(s_axis_video_tdata[0]),
        .I2(s_axis_video_tdata[4]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[3]),
        .I5(s_axis_video_tdata[2]),
        .O(\rStoredData[1]_i_107__0_n_0 ));
  LUT6 #(
    .INIT(64'hF2B4B024B024B42D)) 
    \rStoredData[1]_i_108__0 
       (.I0(s_axis_video_tdata[6]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[0]),
        .O(\rStoredData[1]_i_108__0_n_0 ));
  LUT6 #(
    .INIT(64'h080000F0F0F3FFFF)) 
    \rStoredData[1]_i_109__0 
       (.I0(s_axis_video_tdata[0]),
        .I1(s_axis_video_tdata[6]),
        .I2(s_axis_video_tdata[4]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[1]_i_109__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rStoredData[1]_i_10__0 
       (.I0(\rStoredData_reg[1]_i_27__0_n_0 ),
        .I1(\rStoredData_reg[1]_i_28__0_n_0 ),
        .I2(s_axis_video_tdata[9]),
        .I3(\rStoredData_reg[1]_i_29__0_n_0 ),
        .I4(s_axis_video_tdata[8]),
        .I5(\rStoredData_reg[1]_i_30__0_n_0 ),
        .O(\rStoredData[1]_i_10__0_n_0 ));
  LUT5 #(
    .INIT(32'h9DCCDC44)) 
    \rStoredData[1]_i_110__0 
       (.I0(s_axis_video_tdata[4]),
        .I1(s_axis_video_tdata[3]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[1]),
        .O(\rStoredData[1]_i_110__0_n_0 ));
  LUT6 #(
    .INIT(64'h0F0F0F0F0F0F0FF4)) 
    \rStoredData[1]_i_111__0 
       (.I0(s_axis_video_tdata[4]),
        .I1(s_axis_video_tdata[6]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[0]),
        .O(\rStoredData[1]_i_111__0_n_0 ));
  LUT6 #(
    .INIT(64'h004F0000FFB0FFFF)) 
    \rStoredData[1]_i_112__0 
       (.I0(s_axis_video_tdata[0]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[1]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[6]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[1]_i_112__0_n_0 ));
  LUT6 #(
    .INIT(64'hAA67551955558AAA)) 
    \rStoredData[1]_i_113__0 
       (.I0(s_axis_video_tdata[6]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[3]),
        .I5(s_axis_video_tdata[2]),
        .O(\rStoredData[1]_i_113__0_n_0 ));
  LUT6 #(
    .INIT(64'h555D55D9BAAAAAA2)) 
    \rStoredData[1]_i_114__0 
       (.I0(s_axis_video_tdata[6]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[1]_i_114__0_n_0 ));
  LUT6 #(
    .INIT(64'h3232C4C817C799B8)) 
    \rStoredData[1]_i_115__0 
       (.I0(s_axis_video_tdata[6]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[0]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[1]),
        .O(\rStoredData[1]_i_115__0_n_0 ));
  LUT6 #(
    .INIT(64'h8ACAD2D7F7F53520)) 
    \rStoredData[1]_i_116__0 
       (.I0(s_axis_video_tdata[6]),
        .I1(s_axis_video_tdata[3]),
        .I2(s_axis_video_tdata[4]),
        .I3(s_axis_video_tdata[0]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[2]),
        .O(\rStoredData[1]_i_116__0_n_0 ));
  LUT6 #(
    .INIT(64'h40FDAF500AD0AF00)) 
    \rStoredData[1]_i_117 
       (.I0(s_axis_video_tdata[6]),
        .I1(s_axis_video_tdata[0]),
        .I2(s_axis_video_tdata[4]),
        .I3(s_axis_video_tdata[3]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[1]),
        .O(\rStoredData[1]_i_117_n_0 ));
  LUT6 #(
    .INIT(64'h5A5A496D5A5BE5A5)) 
    \rStoredData[1]_i_118 
       (.I0(s_axis_video_tdata[6]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[0]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[1]),
        .O(\rStoredData[1]_i_118_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \rStoredData[1]_i_1__0 
       (.I0(\rStoredData[1]_i_2__0_n_0 ),
        .I1(\rStoredData[1]_i_3__0_n_0 ),
        .I2(sGammaReg[2]),
        .O(\rStoredData[1]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rStoredData[1]_i_2__0 
       (.I0(\rStoredData_reg[1]_i_4_n_0 ),
        .I1(\rStoredData_reg[1]_i_5__0_n_0 ),
        .I2(s_axis_video_tdata[8]),
        .I3(\rStoredData_reg[1]_i_6__0_n_0 ),
        .I4(s_axis_video_tdata[9]),
        .I5(\rStoredData_reg[1]_i_7__0_n_0 ),
        .O(\rStoredData[1]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h334C32CCCCCCCCCC)) 
    \rStoredData[1]_i_31 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[1]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[0]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[1]_i_31_n_0 ));
  LUT6 #(
    .INIT(64'h3B3C3C3CCCCCCCCC)) 
    \rStoredData[1]_i_32__0 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[2]),
        .I3(s_axis_video_tdata[0]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[1]_i_32__0_n_0 ));
  LUT6 #(
    .INIT(64'h23DDFF00FF00FF00)) 
    \rStoredData[1]_i_33__0 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[1]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[4]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[1]_i_33__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFCFFFF00010000)) 
    \rStoredData[1]_i_34__0 
       (.I0(s_axis_video_tdata[0]),
        .I1(s_axis_video_tdata[1]),
        .I2(s_axis_video_tdata[2]),
        .I3(s_axis_video_tdata[3]),
        .I4(s_axis_video_tdata[5]),
        .I5(s_axis_video_tdata[4]),
        .O(\rStoredData[1]_i_34__0_n_0 ));
  LUT6 #(
    .INIT(64'hFF77F7551008008A)) 
    \rStoredData[1]_i_35__0 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[1]_i_35__0_n_0 ));
  LUT6 #(
    .INIT(64'h98E6AA758A77AE55)) 
    \rStoredData[1]_i_36__0 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[3]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[1]),
        .O(\rStoredData[1]_i_36__0_n_0 ));
  LUT6 #(
    .INIT(64'h9AA696A692A696A5)) 
    \rStoredData[1]_i_37__0 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[0]),
        .O(\rStoredData[1]_i_37__0_n_0 ));
  LUT6 #(
    .INIT(64'hAF5AAA580A501A75)) 
    \rStoredData[1]_i_38__0 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[0]),
        .I2(s_axis_video_tdata[4]),
        .I3(s_axis_video_tdata[3]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[2]),
        .O(\rStoredData[1]_i_38__0_n_0 ));
  LUT6 #(
    .INIT(64'h66444CCDDDD9999B)) 
    \rStoredData[1]_i_39__0 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[1]_i_39__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rStoredData[1]_i_3__0 
       (.I0(\rStoredData[1]_i_8__0_n_0 ),
        .I1(\rStoredData[1]_i_9__0_n_0 ),
        .I2(sGammaReg[0]),
        .I3(\rStoredData[1]_i_10__0_n_0 ),
        .I4(sGammaReg[1]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[1]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hA0807FFF0515A8A8)) 
    \rStoredData[1]_i_40__0 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[1]),
        .I2(s_axis_video_tdata[2]),
        .I3(s_axis_video_tdata[0]),
        .I4(s_axis_video_tdata[4]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[1]_i_40__0_n_0 ));
  LUT6 #(
    .INIT(64'hCCCDCDCD9393B333)) 
    \rStoredData[1]_i_41__0 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[2]),
        .I3(s_axis_video_tdata[0]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[1]_i_41__0_n_0 ));
  LUT6 #(
    .INIT(64'h6C4CCCCCCCCDCDC9)) 
    \rStoredData[1]_i_42__0 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[2]),
        .I3(s_axis_video_tdata[0]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[1]_i_42__0_n_0 ));
  LUT6 #(
    .INIT(64'h2387F973E813DC6C)) 
    \rStoredData[1]_i_43__0 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[0]),
        .O(\rStoredData[1]_i_43__0_n_0 ));
  LUT6 #(
    .INIT(64'hD2F5D5B52D2A280A)) 
    \rStoredData[1]_i_44__0 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[3]),
        .I2(s_axis_video_tdata[4]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[0]),
        .I5(s_axis_video_tdata[2]),
        .O(\rStoredData[1]_i_44__0_n_0 ));
  LUT6 #(
    .INIT(64'hA5A4A6969E1A1B5B)) 
    \rStoredData[1]_i_45 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[0]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[2]),
        .O(\rStoredData[1]_i_45_n_0 ));
  LUT6 #(
    .INIT(64'h1FA0FF00FF00FE11)) 
    \rStoredData[1]_i_46 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[3]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[2]),
        .O(\rStoredData[1]_i_46_n_0 ));
  LUT5 #(
    .INIT(32'hD99BB226)) 
    \rStoredData[1]_i_71__0 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[2]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[3]),
        .O(\rStoredData[1]_i_71__0_n_0 ));
  LUT6 #(
    .INIT(64'h324426CC224466DD)) 
    \rStoredData[1]_i_72__0 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[3]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[1]),
        .O(\rStoredData[1]_i_72__0_n_0 ));
  LUT6 #(
    .INIT(64'h9933BB3333223266)) 
    \rStoredData[1]_i_73__0 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[1]_i_73__0_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0F0F3C38F0F0F)) 
    \rStoredData[1]_i_74__0 
       (.I0(s_axis_video_tdata[0]),
        .I1(s_axis_video_tdata[5]),
        .I2(s_axis_video_tdata[4]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[1]_i_74__0_n_0 ));
  LUT6 #(
    .INIT(64'h347CCCCBC333303C)) 
    \rStoredData[1]_i_75__0 
       (.I0(s_axis_video_tdata[0]),
        .I1(s_axis_video_tdata[5]),
        .I2(s_axis_video_tdata[4]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[1]_i_75__0_n_0 ));
  LUT6 #(
    .INIT(64'hA800001557FFFEEA)) 
    \rStoredData[1]_i_76__0 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[1]_i_76__0_n_0 ));
  LUT6 #(
    .INIT(64'h5540F555AAAB00AA)) 
    \rStoredData[1]_i_77__0 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[0]),
        .I2(s_axis_video_tdata[1]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[4]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[1]_i_77__0_n_0 ));
  LUT6 #(
    .INIT(64'h3C3C3B333343C3C4)) 
    \rStoredData[1]_i_78__0 
       (.I0(s_axis_video_tdata[0]),
        .I1(s_axis_video_tdata[5]),
        .I2(s_axis_video_tdata[4]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[1]_i_78__0_n_0 ));
  LUT6 #(
    .INIT(64'h666665555D599999)) 
    \rStoredData[1]_i_79__0 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[1]),
        .I3(s_axis_video_tdata[0]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[1]_i_79__0_n_0 ));
  LUT6 #(
    .INIT(64'h644599995DDD9BBA)) 
    \rStoredData[1]_i_80__0 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[3]),
        .I5(s_axis_video_tdata[2]),
        .O(\rStoredData[1]_i_80__0_n_0 ));
  LUT6 #(
    .INIT(64'hCCDD9BBBDD993332)) 
    \rStoredData[1]_i_81__0 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[3]),
        .I5(s_axis_video_tdata[2]),
        .O(\rStoredData[1]_i_81__0_n_0 ));
  LUT6 #(
    .INIT(64'h324C66CC22CC44DD)) 
    \rStoredData[1]_i_82__0 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[3]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[1]),
        .O(\rStoredData[1]_i_82__0_n_0 ));
  LUT6 #(
    .INIT(64'hAA55ED0043BA36E8)) 
    \rStoredData[1]_i_83__0 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[3]),
        .I5(s_axis_video_tdata[2]),
        .O(\rStoredData[1]_i_83__0_n_0 ));
  LUT6 #(
    .INIT(64'h2232EC22CD6CD9DD)) 
    \rStoredData[1]_i_84__0 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[3]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[2]),
        .O(\rStoredData[1]_i_84__0_n_0 ));
  LUT6 #(
    .INIT(64'h4F00000020FFFFFF)) 
    \rStoredData[1]_i_85__0 
       (.I0(s_axis_video_tdata[4]),
        .I1(s_axis_video_tdata[0]),
        .I2(s_axis_video_tdata[5]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[1]_i_85__0_n_0 ));
  LUT6 #(
    .INIT(64'h0AAF00AAFD54FFD5)) 
    \rStoredData[1]_i_86__0 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[0]),
        .I2(s_axis_video_tdata[1]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[4]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[1]_i_86__0_n_0 ));
  LUT6 #(
    .INIT(64'h2300FCFFFFFF0000)) 
    \rStoredData[1]_i_87__0 
       (.I0(s_axis_video_tdata[4]),
        .I1(s_axis_video_tdata[1]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[5]),
        .I4(s_axis_video_tdata[3]),
        .I5(s_axis_video_tdata[2]),
        .O(\rStoredData[1]_i_87__0_n_0 ));
  LUT6 #(
    .INIT(64'hE7117708558851AA)) 
    \rStoredData[1]_i_88__0 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[3]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[2]),
        .O(\rStoredData[1]_i_88__0_n_0 ));
  LUT6 #(
    .INIT(64'hEF51FF00FF00F708)) 
    \rStoredData[1]_i_89__0 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[3]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[2]),
        .O(\rStoredData[1]_i_89__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rStoredData[1]_i_8__0 
       (.I0(\rStoredData_reg[1]_i_19__0_n_0 ),
        .I1(\rStoredData_reg[1]_i_20__0_n_0 ),
        .I2(s_axis_video_tdata[7]),
        .I3(\rStoredData_reg[1]_i_21__0_n_0 ),
        .I4(s_axis_video_tdata[9]),
        .I5(\rStoredData_reg[1]_i_22__0_n_0 ),
        .O(\rStoredData[1]_i_8__0_n_0 ));
  LUT6 #(
    .INIT(64'hCCFF4CCC3330FB33)) 
    \rStoredData[1]_i_90__0 
       (.I0(s_axis_video_tdata[0]),
        .I1(s_axis_video_tdata[5]),
        .I2(s_axis_video_tdata[1]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[4]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[1]_i_90__0_n_0 ));
  LUT6 #(
    .INIT(64'hEE15AA57887F01EE)) 
    \rStoredData[1]_i_91__0 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[3]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[2]),
        .O(\rStoredData[1]_i_91__0_n_0 ));
  LUT6 #(
    .INIT(64'hE5F1E1F0F0787058)) 
    \rStoredData[1]_i_92__0 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[0]),
        .I5(s_axis_video_tdata[2]),
        .O(\rStoredData[1]_i_92__0_n_0 ));
  LUT6 #(
    .INIT(64'h1E5A70F0F0F0F0E1)) 
    \rStoredData[1]_i_93__0 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[0]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[2]),
        .O(\rStoredData[1]_i_93__0_n_0 ));
  LUT6 #(
    .INIT(64'h5110AEAE0888FFF7)) 
    \rStoredData[1]_i_94__0 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[1]),
        .I3(s_axis_video_tdata[0]),
        .I4(s_axis_video_tdata[3]),
        .I5(s_axis_video_tdata[2]),
        .O(\rStoredData[1]_i_94__0_n_0 ));
  LUT6 #(
    .INIT(64'h0F0F0F0E78F0F0F0)) 
    \rStoredData[1]_i_95__0 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[0]),
        .I5(s_axis_video_tdata[2]),
        .O(\rStoredData[1]_i_95__0_n_0 ));
  LUT6 #(
    .INIT(64'hAEEF5511F7750088)) 
    \rStoredData[1]_i_96__0 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[3]),
        .I5(s_axis_video_tdata[2]),
        .O(\rStoredData[1]_i_96__0_n_0 ));
  LUT6 #(
    .INIT(64'h0F0F0F0F8FF0F0F0)) 
    \rStoredData[1]_i_97__0 
       (.I0(s_axis_video_tdata[4]),
        .I1(s_axis_video_tdata[5]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[0]),
        .I5(s_axis_video_tdata[2]),
        .O(\rStoredData[1]_i_97__0_n_0 ));
  LUT6 #(
    .INIT(64'h0520BAFAA0AADF5F)) 
    \rStoredData[1]_i_98__0 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[0]),
        .I2(s_axis_video_tdata[4]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[3]),
        .I5(s_axis_video_tdata[2]),
        .O(\rStoredData[1]_i_98__0_n_0 ));
  LUT6 #(
    .INIT(64'h4C333CA23D8235C2)) 
    \rStoredData[1]_i_99__0 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[0]),
        .I5(s_axis_video_tdata[1]),
        .O(\rStoredData[1]_i_99__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rStoredData[1]_i_9__0 
       (.I0(\rStoredData_reg[1]_i_23__0_n_0 ),
        .I1(\rStoredData_reg[1]_i_24__0_n_0 ),
        .I2(s_axis_video_tdata[7]),
        .I3(\rStoredData_reg[1]_i_25__0_n_0 ),
        .I4(s_axis_video_tdata[8]),
        .I5(\rStoredData_reg[1]_i_26__0_n_0 ),
        .O(\rStoredData[1]_i_9__0_n_0 ));
  LUT6 #(
    .INIT(64'h00FF7F00FF00FF00)) 
    \rStoredData[2]_i_100__0 
       (.I0(s_axis_video_tdata[1]),
        .I1(s_axis_video_tdata[0]),
        .I2(s_axis_video_tdata[5]),
        .I3(s_axis_video_tdata[4]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[2]_i_100__0_n_0 ));
  LUT6 #(
    .INIT(64'h9CDCDCCCCCCCC4C4)) 
    \rStoredData[2]_i_101__0 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[2]),
        .I3(s_axis_video_tdata[0]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[2]_i_101__0_n_0 ));
  LUT6 #(
    .INIT(64'h3B3C3C3CCCCCCCCC)) 
    \rStoredData[2]_i_102__0 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[2]),
        .I3(s_axis_video_tdata[0]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[2]_i_102__0_n_0 ));
  LUT6 #(
    .INIT(64'hFD00550A40AA00FF)) 
    \rStoredData[2]_i_103__0 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[0]),
        .I2(s_axis_video_tdata[1]),
        .I3(s_axis_video_tdata[4]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[2]_i_103__0_n_0 ));
  LUT6 #(
    .INIT(64'h659955885DAAD9AA)) 
    \rStoredData[2]_i_104__0 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[3]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[2]),
        .O(\rStoredData[2]_i_104__0_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0F0F0F04A500F)) 
    \rStoredData[2]_i_105__0 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[0]),
        .I2(s_axis_video_tdata[4]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[2]_i_105__0_n_0 ));
  LUT6 #(
    .INIT(64'h9B93B3B336262624)) 
    \rStoredData[2]_i_106__0 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[2]),
        .I3(s_axis_video_tdata[0]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[2]_i_106__0_n_0 ));
  LUT6 #(
    .INIT(64'hC4C6C4C223333333)) 
    \rStoredData[2]_i_107__0 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[2]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[0]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[2]_i_107__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rStoredData[2]_i_10__0 
       (.I0(\rStoredData_reg[2]_i_28__0_n_0 ),
        .I1(\rStoredData_reg[2]_i_29_n_0 ),
        .I2(s_axis_video_tdata[9]),
        .I3(\rStoredData_reg[2]_i_30_n_0 ),
        .I4(s_axis_video_tdata[8]),
        .I5(\rStoredData_reg[2]_i_31_n_0 ),
        .O(\rStoredData[2]_i_10__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rStoredData[2]_i_11__0 
       (.I0(\rStoredData_reg[2]_i_32_n_0 ),
        .I1(\rStoredData_reg[2]_i_33_n_0 ),
        .I2(s_axis_video_tdata[7]),
        .I3(\rStoredData_reg[2]_i_34_n_0 ),
        .I4(s_axis_video_tdata[8]),
        .I5(\rStoredData_reg[2]_i_35_n_0 ),
        .O(\rStoredData[2]_i_11__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rStoredData[2]_i_12__0 
       (.I0(\rStoredData_reg[2]_i_36_n_0 ),
        .I1(\rStoredData_reg[2]_i_37_n_0 ),
        .I2(s_axis_video_tdata[8]),
        .I3(\rStoredData_reg[2]_i_38_n_0 ),
        .I4(s_axis_video_tdata[7]),
        .I5(\rStoredData_reg[2]_i_39_n_0 ),
        .O(\rStoredData[2]_i_12__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rStoredData[2]_i_13 
       (.I0(\rStoredData[2]_i_40__0_n_0 ),
        .I1(\rStoredData[2]_i_41_n_0 ),
        .I2(s_axis_video_tdata[8]),
        .I3(\rStoredData_reg[2]_i_42__0_n_0 ),
        .I4(s_axis_video_tdata[7]),
        .I5(\rStoredData_reg[2]_i_43__0_n_0 ),
        .O(\rStoredData[2]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \rStoredData[2]_i_14 
       (.I0(s_axis_video_tdata[4]),
        .I1(s_axis_video_tdata[0]),
        .I2(s_axis_video_tdata[2]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[3]),
        .I5(s_axis_video_tdata[5]),
        .O(\rStoredData[2]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h66AAEAAAAAAAAAAA)) 
    \rStoredData[2]_i_15 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[3]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[4]),
        .O(\rStoredData[2]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h6666EAAAAAAAAAAA)) 
    \rStoredData[2]_i_16__0 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[3]),
        .I2(s_axis_video_tdata[1]),
        .I3(s_axis_video_tdata[0]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[4]),
        .O(\rStoredData[2]_i_16__0_n_0 ));
  LUT6 #(
    .INIT(64'h0FF070F0F0F0F0F0)) 
    \rStoredData[2]_i_17 
       (.I0(s_axis_video_tdata[1]),
        .I1(s_axis_video_tdata[0]),
        .I2(s_axis_video_tdata[5]),
        .I3(s_axis_video_tdata[3]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[4]),
        .O(\rStoredData[2]_i_17_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \rStoredData[2]_i_1__0 
       (.I0(\rStoredData[2]_i_2__0_n_0 ),
        .I1(\rStoredData[2]_i_3__0_n_0 ),
        .I2(sGammaReg[0]),
        .I3(\rStoredData[2]_i_4_n_0 ),
        .I4(sGammaReg[2]),
        .O(\rStoredData[2]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCCCCDD99BB333)) 
    \rStoredData[2]_i_24 
       (.I0(s_axis_video_tdata[6]),
        .I1(s_axis_video_tdata[5]),
        .I2(s_axis_video_tdata[1]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[3]),
        .I5(s_axis_video_tdata[4]),
        .O(\rStoredData[2]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rStoredData[2]_i_2__0 
       (.I0(\rStoredData[2]_i_5_n_0 ),
        .I1(\rStoredData_reg[2]_i_6__0_n_0 ),
        .I2(s_axis_video_tdata[8]),
        .I3(\rStoredData_reg[2]_i_7__0_n_0 ),
        .I4(s_axis_video_tdata[9]),
        .I5(\rStoredData_reg[2]_i_8__0_n_0 ),
        .O(\rStoredData[2]_i_2__0_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \rStoredData[2]_i_3__0 
       (.I0(\rStoredData[2]_i_9__0_n_0 ),
        .I1(s_axis_video_tdata[7]),
        .I2(\rStoredData[2]_i_10__0_n_0 ),
        .I3(sGammaReg[1]),
        .I4(\rStoredData[2]_i_11__0_n_0 ),
        .O(\rStoredData[2]_i_3__0_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \rStoredData[2]_i_4 
       (.I0(\rStoredData[2]_i_12__0_n_0 ),
        .I1(s_axis_video_tdata[9]),
        .I2(\rStoredData[2]_i_13_n_0 ),
        .I3(sGammaReg[1]),
        .I4(s_axis_video_tdata[4]),
        .O(\rStoredData[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hB0CFFFFFB0CF0000)) 
    \rStoredData[2]_i_40__0 
       (.I0(\rStoredData[3]_i_77__0_n_0 ),
        .I1(s_axis_video_tdata[3]),
        .I2(s_axis_video_tdata[6]),
        .I3(s_axis_video_tdata[4]),
        .I4(s_axis_video_tdata[5]),
        .I5(\rStoredData[2]_i_86__0_n_0 ),
        .O(\rStoredData[2]_i_40__0_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B88B8B8B8B8B)) 
    \rStoredData[2]_i_41 
       (.I0(\rStoredData[2]_i_87__0_n_0 ),
        .I1(s_axis_video_tdata[5]),
        .I2(s_axis_video_tdata[4]),
        .I3(s_axis_video_tdata[0]),
        .I4(\rStoredData[7]_i_9__0_n_0 ),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[2]_i_41_n_0 ));
  LUT6 #(
    .INIT(64'hFFF8FFFF00010000)) 
    \rStoredData[2]_i_44 
       (.I0(s_axis_video_tdata[0]),
        .I1(s_axis_video_tdata[1]),
        .I2(s_axis_video_tdata[2]),
        .I3(s_axis_video_tdata[3]),
        .I4(s_axis_video_tdata[5]),
        .I5(s_axis_video_tdata[4]),
        .O(\rStoredData[2]_i_44_n_0 ));
  LUT6 #(
    .INIT(64'h50525A4A0A0F0F0F)) 
    \rStoredData[2]_i_45__0 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[0]),
        .I2(s_axis_video_tdata[4]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[2]_i_45__0_n_0 ));
  LUT6 #(
    .INIT(64'hBB99BB9999DDDDDC)) 
    \rStoredData[2]_i_46 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[2]_i_46_n_0 ));
  LUT6 #(
    .INIT(64'h5A5A5A4A0A0A0A2F)) 
    \rStoredData[2]_i_47 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[0]),
        .I2(s_axis_video_tdata[4]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[2]_i_47_n_0 ));
  LUT6 #(
    .INIT(64'hDDD5DD5544444442)) 
    \rStoredData[2]_i_48 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[3]),
        .I2(s_axis_video_tdata[1]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[0]),
        .I5(s_axis_video_tdata[4]),
        .O(\rStoredData[2]_i_48_n_0 ));
  LUT6 #(
    .INIT(64'hAABBABBBD5555555)) 
    \rStoredData[2]_i_49 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[3]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[4]),
        .O(\rStoredData[2]_i_49_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rStoredData[2]_i_5 
       (.I0(\rStoredData[2]_i_14_n_0 ),
        .I1(\rStoredData[2]_i_15_n_0 ),
        .I2(s_axis_video_tdata[7]),
        .I3(\rStoredData[2]_i_16__0_n_0 ),
        .I4(s_axis_video_tdata[6]),
        .I5(\rStoredData[2]_i_17_n_0 ),
        .O(\rStoredData[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAB9B99DDD)) 
    \rStoredData[2]_i_50 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[3]),
        .I2(s_axis_video_tdata[1]),
        .I3(s_axis_video_tdata[0]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[4]),
        .O(\rStoredData[2]_i_50_n_0 ));
  LUT6 #(
    .INIT(64'h2A2AAAAAAAAAABBB)) 
    \rStoredData[2]_i_51 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[3]),
        .I2(s_axis_video_tdata[1]),
        .I3(s_axis_video_tdata[0]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[4]),
        .O(\rStoredData[2]_i_51_n_0 ));
  LUT6 #(
    .INIT(64'h7CB4A5A1A2B3D2DE)) 
    \rStoredData[2]_i_52 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[0]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[2]),
        .O(\rStoredData[2]_i_52_n_0 ));
  LUT6 #(
    .INIT(64'h6178585A7078585A)) 
    \rStoredData[2]_i_53__0 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[0]),
        .O(\rStoredData[2]_i_53__0_n_0 ));
  LUT6 #(
    .INIT(64'hCC99DD33CDBBD922)) 
    \rStoredData[2]_i_54__0 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[3]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[1]),
        .O(\rStoredData[2]_i_54__0_n_0 ));
  LUT6 #(
    .INIT(64'h38F0F0F0F0F0F0F5)) 
    \rStoredData[2]_i_55__0 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[0]),
        .I2(s_axis_video_tdata[4]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[2]_i_55__0_n_0 ));
  LUT5 #(
    .INIT(32'hAAABFD55)) 
    \rStoredData[2]_i_56 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[1]),
        .I2(s_axis_video_tdata[2]),
        .I3(s_axis_video_tdata[3]),
        .I4(s_axis_video_tdata[4]),
        .O(\rStoredData[2]_i_56_n_0 ));
  LUT6 #(
    .INIT(64'h5A0A4AAA5A0A0AAF)) 
    \rStoredData[2]_i_57 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[0]),
        .I2(s_axis_video_tdata[4]),
        .I3(s_axis_video_tdata[3]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[1]),
        .O(\rStoredData[2]_i_57_n_0 ));
  LUT6 #(
    .INIT(64'h0A0A0A0BFFF5FFF5)) 
    \rStoredData[2]_i_58 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[0]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[4]),
        .O(\rStoredData[2]_i_58_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEF0F0F000010)) 
    \rStoredData[2]_i_59 
       (.I0(s_axis_video_tdata[1]),
        .I1(s_axis_video_tdata[0]),
        .I2(s_axis_video_tdata[5]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[3]),
        .I5(s_axis_video_tdata[4]),
        .O(\rStoredData[2]_i_59_n_0 ));
  LUT6 #(
    .INIT(64'hC78F0C3C0F0C3C30)) 
    \rStoredData[2]_i_60 
       (.I0(s_axis_video_tdata[0]),
        .I1(s_axis_video_tdata[5]),
        .I2(s_axis_video_tdata[4]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[3]),
        .I5(s_axis_video_tdata[2]),
        .O(\rStoredData[2]_i_60_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0F0E5A70F0F0F)) 
    \rStoredData[2]_i_61 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[0]),
        .I2(s_axis_video_tdata[4]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[2]_i_61_n_0 ));
  LUT6 #(
    .INIT(64'h33333333304C00CC)) 
    \rStoredData[2]_i_62 
       (.I0(s_axis_video_tdata[0]),
        .I1(s_axis_video_tdata[5]),
        .I2(s_axis_video_tdata[1]),
        .I3(s_axis_video_tdata[3]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[4]),
        .O(\rStoredData[2]_i_62_n_0 ));
  LUT6 #(
    .INIT(64'hC3F3B333C3F33330)) 
    \rStoredData[2]_i_63 
       (.I0(s_axis_video_tdata[0]),
        .I1(s_axis_video_tdata[5]),
        .I2(s_axis_video_tdata[4]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[3]),
        .I5(s_axis_video_tdata[1]),
        .O(\rStoredData[2]_i_63_n_0 ));
  LUT6 #(
    .INIT(64'h02022222BBBFBFBF)) 
    \rStoredData[2]_i_64 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[3]),
        .I2(s_axis_video_tdata[2]),
        .I3(s_axis_video_tdata[0]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[4]),
        .O(\rStoredData[2]_i_64_n_0 ));
  LUT6 #(
    .INIT(64'hF5D5F5555002400A)) 
    \rStoredData[2]_i_65 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[1]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[0]),
        .I5(s_axis_video_tdata[4]),
        .O(\rStoredData[2]_i_65_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0F0F0B00F0F0F)) 
    \rStoredData[2]_i_66__0 
       (.I0(s_axis_video_tdata[0]),
        .I1(s_axis_video_tdata[5]),
        .I2(s_axis_video_tdata[4]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[2]_i_66__0_n_0 ));
  LUT5 #(
    .INIT(32'hD40A00FF)) 
    \rStoredData[2]_i_67__0 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[1]),
        .I2(s_axis_video_tdata[2]),
        .I3(s_axis_video_tdata[4]),
        .I4(s_axis_video_tdata[3]),
        .O(\rStoredData[2]_i_67__0_n_0 ));
  LUT6 #(
    .INIT(64'hEE45BB55B86200BA)) 
    \rStoredData[2]_i_68__0 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[3]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[2]),
        .O(\rStoredData[2]_i_68__0_n_0 ));
  LUT6 #(
    .INIT(64'h55999888AAAAE677)) 
    \rStoredData[2]_i_69__0 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[2]_i_69__0_n_0 ));
  LUT6 #(
    .INIT(64'h0F0F0F7FFFF0F0F0)) 
    \rStoredData[2]_i_78__0 
       (.I0(s_axis_video_tdata[1]),
        .I1(s_axis_video_tdata[0]),
        .I2(s_axis_video_tdata[6]),
        .I3(s_axis_video_tdata[3]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[4]),
        .O(\rStoredData[2]_i_78__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFAAEA80AA00AA55)) 
    \rStoredData[2]_i_79__0 
       (.I0(s_axis_video_tdata[6]),
        .I1(s_axis_video_tdata[0]),
        .I2(s_axis_video_tdata[1]),
        .I3(s_axis_video_tdata[4]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[2]_i_79__0_n_0 ));
  LUT6 #(
    .INIT(64'h9115115577667666)) 
    \rStoredData[2]_i_80__0 
       (.I0(s_axis_video_tdata[6]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[1]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[0]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[2]_i_80__0_n_0 ));
  LUT6 #(
    .INIT(64'h55775776AAAAAAAA)) 
    \rStoredData[2]_i_81__0 
       (.I0(s_axis_video_tdata[6]),
        .I1(s_axis_video_tdata[3]),
        .I2(s_axis_video_tdata[1]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[0]),
        .I5(s_axis_video_tdata[4]),
        .O(\rStoredData[2]_i_81__0_n_0 ));
  LUT5 #(
    .INIT(32'h99955466)) 
    \rStoredData[2]_i_82__0 
       (.I0(s_axis_video_tdata[6]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[1]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[3]),
        .O(\rStoredData[2]_i_82__0_n_0 ));
  LUT6 #(
    .INIT(64'h555555556AAAAAAA)) 
    \rStoredData[2]_i_83__0 
       (.I0(s_axis_video_tdata[6]),
        .I1(s_axis_video_tdata[3]),
        .I2(s_axis_video_tdata[1]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[0]),
        .I5(s_axis_video_tdata[4]),
        .O(\rStoredData[2]_i_83__0_n_0 ));
  LUT6 #(
    .INIT(64'hF333B3333C0C0C4C)) 
    \rStoredData[2]_i_84__0 
       (.I0(s_axis_video_tdata[0]),
        .I1(s_axis_video_tdata[6]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[4]),
        .O(\rStoredData[2]_i_84__0_n_0 ));
  LUT6 #(
    .INIT(64'h666666666662222B)) 
    \rStoredData[2]_i_85__0 
       (.I0(s_axis_video_tdata[6]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[2]_i_85__0_n_0 ));
  LUT6 #(
    .INIT(64'h6233633333B93B99)) 
    \rStoredData[2]_i_86__0 
       (.I0(s_axis_video_tdata[6]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[1]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[0]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[2]_i_86__0_n_0 ));
  LUT6 #(
    .INIT(64'hECFF03000000FFFF)) 
    \rStoredData[2]_i_87__0 
       (.I0(s_axis_video_tdata[0]),
        .I1(s_axis_video_tdata[2]),
        .I2(s_axis_video_tdata[1]),
        .I3(s_axis_video_tdata[6]),
        .I4(s_axis_video_tdata[4]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[2]_i_87__0_n_0 ));
  LUT5 #(
    .INIT(32'hC70C3C3C)) 
    \rStoredData[2]_i_88__0 
       (.I0(s_axis_video_tdata[1]),
        .I1(s_axis_video_tdata[6]),
        .I2(s_axis_video_tdata[4]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[3]),
        .O(\rStoredData[2]_i_88__0_n_0 ));
  LUT6 #(
    .INIT(64'h999399B333263266)) 
    \rStoredData[2]_i_89__0 
       (.I0(s_axis_video_tdata[6]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[1]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[0]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[2]_i_89__0_n_0 ));
  LUT6 #(
    .INIT(64'hAF509F055F2558A0)) 
    \rStoredData[2]_i_90__0 
       (.I0(s_axis_video_tdata[6]),
        .I1(s_axis_video_tdata[0]),
        .I2(s_axis_video_tdata[4]),
        .I3(s_axis_video_tdata[3]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[2]),
        .O(\rStoredData[2]_i_90__0_n_0 ));
  LUT6 #(
    .INIT(64'h8FCFD2D2CBDAD2D2)) 
    \rStoredData[2]_i_91__0 
       (.I0(s_axis_video_tdata[6]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[0]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[1]),
        .O(\rStoredData[2]_i_91__0_n_0 ));
  LUT6 #(
    .INIT(64'h30EFFF00FF00FF00)) 
    \rStoredData[2]_i_92__0 
       (.I0(s_axis_video_tdata[0]),
        .I1(s_axis_video_tdata[1]),
        .I2(s_axis_video_tdata[5]),
        .I3(s_axis_video_tdata[4]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[2]_i_92__0_n_0 ));
  LUT6 #(
    .INIT(64'h00022222BFFFFFDD)) 
    \rStoredData[2]_i_93__0 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[3]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[4]),
        .O(\rStoredData[2]_i_93__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFD40000000)) 
    \rStoredData[2]_i_94__0 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[3]),
        .I2(s_axis_video_tdata[1]),
        .I3(s_axis_video_tdata[0]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[4]),
        .O(\rStoredData[2]_i_94__0_n_0 ));
  LUT6 #(
    .INIT(64'hF0FF8F0FFFFF0000)) 
    \rStoredData[2]_i_95__0 
       (.I0(s_axis_video_tdata[1]),
        .I1(s_axis_video_tdata[0]),
        .I2(s_axis_video_tdata[5]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[4]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[2]_i_95__0_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCCCCDDB9393B3)) 
    \rStoredData[2]_i_96__0 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[2]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[0]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[2]_i_96__0_n_0 ));
  LUT5 #(
    .INIT(32'h0002BFFF)) 
    \rStoredData[2]_i_97__0 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[3]),
        .I2(s_axis_video_tdata[2]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[4]),
        .O(\rStoredData[2]_i_97__0_n_0 ));
  LUT6 #(
    .INIT(64'h2C4C6CCCCCCCCCCD)) 
    \rStoredData[2]_i_98__0 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[2]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[0]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[2]_i_98__0_n_0 ));
  LUT6 #(
    .INIT(64'h00FF4CFFCF33FF00)) 
    \rStoredData[2]_i_99__0 
       (.I0(s_axis_video_tdata[0]),
        .I1(s_axis_video_tdata[5]),
        .I2(s_axis_video_tdata[1]),
        .I3(s_axis_video_tdata[4]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[2]_i_99__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rStoredData[2]_i_9__0 
       (.I0(\rStoredData[2]_i_24_n_0 ),
        .I1(\rStoredData_reg[2]_i_25__0_n_0 ),
        .I2(s_axis_video_tdata[9]),
        .I3(\rStoredData_reg[2]_i_26__0_n_0 ),
        .I4(s_axis_video_tdata[8]),
        .I5(\rStoredData_reg[2]_i_27__0_n_0 ),
        .O(\rStoredData[2]_i_9__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rStoredData[3]_i_10__0 
       (.I0(\rStoredData[3]_i_27_n_0 ),
        .I1(\rStoredData[3]_i_28_n_0 ),
        .I2(s_axis_video_tdata[9]),
        .I3(\rStoredData[3]_i_29_n_0 ),
        .I4(s_axis_video_tdata[8]),
        .I5(\rStoredData_reg[3]_i_30_n_0 ),
        .O(\rStoredData[3]_i_10__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rStoredData[3]_i_11__0 
       (.I0(\rStoredData[3]_i_31__0_n_0 ),
        .I1(\rStoredData_reg[3]_i_32__0_n_0 ),
        .I2(s_axis_video_tdata[7]),
        .I3(\rStoredData_reg[3]_i_33__0_n_0 ),
        .I4(s_axis_video_tdata[8]),
        .I5(\rStoredData_reg[3]_i_34_n_0 ),
        .O(\rStoredData[3]_i_11__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rStoredData[3]_i_12__0 
       (.I0(\rStoredData_reg[3]_i_35_n_0 ),
        .I1(\rStoredData_reg[3]_i_36_n_0 ),
        .I2(s_axis_video_tdata[8]),
        .I3(\rStoredData_reg[3]_i_37_n_0 ),
        .I4(s_axis_video_tdata[7]),
        .I5(\rStoredData_reg[3]_i_38_n_0 ),
        .O(\rStoredData[3]_i_12__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rStoredData[3]_i_13 
       (.I0(\rStoredData[3]_i_39__0_n_0 ),
        .I1(\rStoredData[3]_i_40__0_n_0 ),
        .I2(s_axis_video_tdata[8]),
        .I3(\rStoredData_reg[3]_i_41_n_0 ),
        .I4(s_axis_video_tdata[7]),
        .I5(\rStoredData_reg[3]_i_42_n_0 ),
        .O(\rStoredData[3]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \rStoredData[3]_i_14 
       (.I0(s_axis_video_tdata[4]),
        .I1(s_axis_video_tdata[1]),
        .I2(s_axis_video_tdata[2]),
        .I3(s_axis_video_tdata[3]),
        .I4(s_axis_video_tdata[5]),
        .O(\rStoredData[3]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \rStoredData[3]_i_15__0 
       (.I0(s_axis_video_tdata[3]),
        .I1(s_axis_video_tdata[2]),
        .I2(s_axis_video_tdata[4]),
        .O(\rStoredData[3]_i_15__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'hAA800000)) 
    \rStoredData[3]_i_16__1 
       (.I0(s_axis_video_tdata[3]),
        .I1(s_axis_video_tdata[1]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[4]),
        .O(\rStoredData[3]_i_16__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFAFAFAF0FC000C0)) 
    \rStoredData[3]_i_17__0 
       (.I0(\rStoredData[6]_i_7__1_n_0 ),
        .I1(\rStoredData[3]_i_43__0_n_0 ),
        .I2(s_axis_video_tdata[6]),
        .I3(s_axis_video_tdata[4]),
        .I4(\rStoredData[5]_i_30__0_n_0 ),
        .I5(s_axis_video_tdata[5]),
        .O(\rStoredData[3]_i_17__0_n_0 ));
  LUT6 #(
    .INIT(64'h333333333FFC7CFC)) 
    \rStoredData[3]_i_18__0 
       (.I0(s_axis_video_tdata[0]),
        .I1(s_axis_video_tdata[5]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[4]),
        .O(\rStoredData[3]_i_18__0_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCCFCCF3F3B3B3)) 
    \rStoredData[3]_i_19 
       (.I0(\rStoredData[5]_i_17__1_n_0 ),
        .I1(s_axis_video_tdata[6]),
        .I2(s_axis_video_tdata[4]),
        .I3(\rStoredData[3]_i_44__0_n_0 ),
        .I4(s_axis_video_tdata[3]),
        .I5(s_axis_video_tdata[5]),
        .O(\rStoredData[3]_i_19_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \rStoredData[3]_i_1__0 
       (.I0(\rStoredData[3]_i_2_n_0 ),
        .I1(\rStoredData[3]_i_3_n_0 ),
        .I2(sGammaReg[0]),
        .I3(\rStoredData[3]_i_4__0_n_0 ),
        .I4(sGammaReg[2]),
        .O(\rStoredData[3]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rStoredData[3]_i_2 
       (.I0(\rStoredData[3]_i_5__0_n_0 ),
        .I1(\rStoredData[3]_i_6__0_n_0 ),
        .I2(s_axis_video_tdata[8]),
        .I3(\rStoredData_reg[3]_i_7_n_0 ),
        .I4(s_axis_video_tdata[9]),
        .I5(\rStoredData_reg[3]_i_8_n_0 ),
        .O(\rStoredData[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hA0F0A0F0F0CFF0C0)) 
    \rStoredData[3]_i_20__0 
       (.I0(\rStoredData[3]_i_45_n_0 ),
        .I1(\rStoredData[3]_i_46__1_n_0 ),
        .I2(s_axis_video_tdata[6]),
        .I3(s_axis_video_tdata[4]),
        .I4(\rStoredData[3]_i_47_n_0 ),
        .I5(s_axis_video_tdata[5]),
        .O(\rStoredData[3]_i_20__0_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAB9B9B99D)) 
    \rStoredData[3]_i_23 
       (.I0(s_axis_video_tdata[6]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[5]),
        .O(\rStoredData[3]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hDDD5DDD544444442)) 
    \rStoredData[3]_i_24__0 
       (.I0(s_axis_video_tdata[6]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[2]),
        .I3(s_axis_video_tdata[3]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[5]),
        .O(\rStoredData[3]_i_24__0_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFF0F08F0F8F0F)) 
    \rStoredData[3]_i_27 
       (.I0(s_axis_video_tdata[3]),
        .I1(s_axis_video_tdata[2]),
        .I2(s_axis_video_tdata[6]),
        .I3(s_axis_video_tdata[4]),
        .I4(\rStoredData[3]_i_56__0_n_0 ),
        .I5(s_axis_video_tdata[5]),
        .O(\rStoredData[3]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hB888B88888BB8888)) 
    \rStoredData[3]_i_28 
       (.I0(\rStoredData[5]_i_35_n_0 ),
        .I1(s_axis_video_tdata[6]),
        .I2(\rStoredData[3]_i_57_n_0 ),
        .I3(s_axis_video_tdata[5]),
        .I4(\rStoredData[3]_i_58_n_0 ),
        .I5(s_axis_video_tdata[4]),
        .O(\rStoredData[3]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h33333333393CBCBC)) 
    \rStoredData[3]_i_29 
       (.I0(s_axis_video_tdata[6]),
        .I1(s_axis_video_tdata[5]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[4]),
        .O(\rStoredData[3]_i_29_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \rStoredData[3]_i_3 
       (.I0(\rStoredData[3]_i_9__0_n_0 ),
        .I1(s_axis_video_tdata[7]),
        .I2(\rStoredData[3]_i_10__0_n_0 ),
        .I3(sGammaReg[1]),
        .I4(\rStoredData[3]_i_11__0_n_0 ),
        .O(\rStoredData[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEFEAE5E5EFEA4040)) 
    \rStoredData[3]_i_31__0 
       (.I0(s_axis_video_tdata[6]),
        .I1(\rStoredData[3]_i_61__0_n_0 ),
        .I2(s_axis_video_tdata[9]),
        .I3(\rStoredData[5]_i_22_n_0 ),
        .I4(s_axis_video_tdata[5]),
        .I5(\rStoredData[3]_i_62__1_n_0 ),
        .O(\rStoredData[3]_i_31__0_n_0 ));
  LUT6 #(
    .INIT(64'hB3F3B3C3CFCCCCCC)) 
    \rStoredData[3]_i_39__0 
       (.I0(\rStoredData[3]_i_77__0_n_0 ),
        .I1(s_axis_video_tdata[5]),
        .I2(s_axis_video_tdata[6]),
        .I3(s_axis_video_tdata[3]),
        .I4(\rStoredData[5]_i_17__1_n_0 ),
        .I5(s_axis_video_tdata[4]),
        .O(\rStoredData[3]_i_39__0_n_0 ));
  LUT6 #(
    .INIT(64'h333333333CBC3C8C)) 
    \rStoredData[3]_i_40__0 
       (.I0(s_axis_video_tdata[6]),
        .I1(s_axis_video_tdata[5]),
        .I2(s_axis_video_tdata[3]),
        .I3(\rStoredData[7]_i_9__0_n_0 ),
        .I4(s_axis_video_tdata[0]),
        .I5(s_axis_video_tdata[4]),
        .O(\rStoredData[3]_i_40__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \rStoredData[3]_i_43__0 
       (.I0(s_axis_video_tdata[2]),
        .I1(s_axis_video_tdata[1]),
        .I2(s_axis_video_tdata[3]),
        .O(\rStoredData[3]_i_43__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \rStoredData[3]_i_44__0 
       (.I0(s_axis_video_tdata[2]),
        .I1(s_axis_video_tdata[1]),
        .I2(s_axis_video_tdata[0]),
        .O(\rStoredData[3]_i_44__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \rStoredData[3]_i_45 
       (.I0(s_axis_video_tdata[1]),
        .I1(s_axis_video_tdata[2]),
        .I2(s_axis_video_tdata[3]),
        .O(\rStoredData[3]_i_45_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'hFFEA)) 
    \rStoredData[3]_i_46__1 
       (.I0(s_axis_video_tdata[2]),
        .I1(s_axis_video_tdata[0]),
        .I2(s_axis_video_tdata[1]),
        .I3(s_axis_video_tdata[3]),
        .O(\rStoredData[3]_i_46__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'h15FF)) 
    \rStoredData[3]_i_47 
       (.I0(s_axis_video_tdata[2]),
        .I1(s_axis_video_tdata[0]),
        .I2(s_axis_video_tdata[1]),
        .I3(s_axis_video_tdata[3]),
        .O(\rStoredData[3]_i_47_n_0 ));
  LUT6 #(
    .INIT(64'hA724273526752678)) 
    \rStoredData[3]_i_48 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[0]),
        .I5(s_axis_video_tdata[1]),
        .O(\rStoredData[3]_i_48_n_0 ));
  LUT6 #(
    .INIT(64'h02220222BFFDFFFD)) 
    \rStoredData[3]_i_49 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[3]),
        .I2(s_axis_video_tdata[1]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[0]),
        .I5(s_axis_video_tdata[4]),
        .O(\rStoredData[3]_i_49_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \rStoredData[3]_i_4__0 
       (.I0(\rStoredData[3]_i_12__0_n_0 ),
        .I1(s_axis_video_tdata[9]),
        .I2(\rStoredData[3]_i_13_n_0 ),
        .I3(sGammaReg[1]),
        .I4(s_axis_video_tdata[5]),
        .O(\rStoredData[3]_i_4__0_n_0 ));
  LUT6 #(
    .INIT(64'h5555555544226222)) 
    \rStoredData[3]_i_50__0 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[3]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[4]),
        .O(\rStoredData[3]_i_50__0_n_0 ));
  LUT6 #(
    .INIT(64'h9555555555555550)) 
    \rStoredData[3]_i_51 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[0]),
        .I2(s_axis_video_tdata[4]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[3]_i_51_n_0 ));
  LUT6 #(
    .INIT(64'h55FF55FEAAAAAAAA)) 
    \rStoredData[3]_i_52 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[0]),
        .I2(s_axis_video_tdata[2]),
        .I3(s_axis_video_tdata[3]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[4]),
        .O(\rStoredData[3]_i_52_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \rStoredData[3]_i_53 
       (.I0(s_axis_video_tdata[4]),
        .I1(s_axis_video_tdata[1]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[0]),
        .I5(s_axis_video_tdata[5]),
        .O(\rStoredData[3]_i_53_n_0 ));
  LUT6 #(
    .INIT(64'h333030304CCCCCCC)) 
    \rStoredData[3]_i_54 
       (.I0(s_axis_video_tdata[0]),
        .I1(s_axis_video_tdata[5]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[4]),
        .O(\rStoredData[3]_i_54_n_0 ));
  LUT6 #(
    .INIT(64'h33333333334C30CC)) 
    \rStoredData[3]_i_55__0 
       (.I0(s_axis_video_tdata[0]),
        .I1(s_axis_video_tdata[5]),
        .I2(s_axis_video_tdata[2]),
        .I3(s_axis_video_tdata[3]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[4]),
        .O(\rStoredData[3]_i_55__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'h007F)) 
    \rStoredData[3]_i_56__0 
       (.I0(s_axis_video_tdata[2]),
        .I1(s_axis_video_tdata[1]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[3]),
        .O(\rStoredData[3]_i_56__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \rStoredData[3]_i_57 
       (.I0(s_axis_video_tdata[2]),
        .I1(s_axis_video_tdata[1]),
        .I2(s_axis_video_tdata[3]),
        .O(\rStoredData[3]_i_57_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'h07FF)) 
    \rStoredData[3]_i_58 
       (.I0(s_axis_video_tdata[1]),
        .I1(s_axis_video_tdata[0]),
        .I2(s_axis_video_tdata[2]),
        .I3(s_axis_video_tdata[3]),
        .O(\rStoredData[3]_i_58_n_0 ));
  LUT6 #(
    .INIT(64'h33222222677755CC)) 
    \rStoredData[3]_i_59__0 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[3]_i_59__0_n_0 ));
  LUT6 #(
    .INIT(64'hFCBBFC88FF88FF88)) 
    \rStoredData[3]_i_5__0 
       (.I0(\rStoredData[3]_i_14_n_0 ),
        .I1(s_axis_video_tdata[7]),
        .I2(\rStoredData[3]_i_15__0_n_0 ),
        .I3(s_axis_video_tdata[6]),
        .I4(\rStoredData[3]_i_16__1_n_0 ),
        .I5(s_axis_video_tdata[5]),
        .O(\rStoredData[3]_i_5__0_n_0 ));
  LUT5 #(
    .INIT(32'h3B9DBB9C)) 
    \rStoredData[3]_i_60__0 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[2]),
        .I3(s_axis_video_tdata[3]),
        .I4(s_axis_video_tdata[1]),
        .O(\rStoredData[3]_i_60__0_n_0 ));
  LUT6 #(
    .INIT(64'h55577777EAAAAAAA)) 
    \rStoredData[3]_i_61__0 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[3]),
        .I2(s_axis_video_tdata[1]),
        .I3(s_axis_video_tdata[0]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[4]),
        .O(\rStoredData[3]_i_61__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \rStoredData[3]_i_62__1 
       (.I0(s_axis_video_tdata[3]),
        .I1(s_axis_video_tdata[2]),
        .I2(s_axis_video_tdata[4]),
        .O(\rStoredData[3]_i_62__1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA888FFFFFFFF)) 
    \rStoredData[3]_i_69__0 
       (.I0(s_axis_video_tdata[4]),
        .I1(s_axis_video_tdata[2]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[3]),
        .I5(s_axis_video_tdata[6]),
        .O(\rStoredData[3]_i_69__0_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \rStoredData[3]_i_6__0 
       (.I0(\rStoredData[3]_i_17__0_n_0 ),
        .I1(s_axis_video_tdata[7]),
        .I2(\rStoredData[3]_i_18__0_n_0 ),
        .I3(s_axis_video_tdata[6]),
        .I4(\rStoredData[4]_i_18__0_n_0 ),
        .O(\rStoredData[3]_i_6__0_n_0 ));
  LUT4 #(
    .INIT(16'hFF01)) 
    \rStoredData[3]_i_70__0 
       (.I0(s_axis_video_tdata[4]),
        .I1(s_axis_video_tdata[2]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[6]),
        .O(\rStoredData[3]_i_70__0_n_0 ));
  LUT6 #(
    .INIT(64'h4444400022222222)) 
    \rStoredData[3]_i_71__0 
       (.I0(s_axis_video_tdata[6]),
        .I1(s_axis_video_tdata[3]),
        .I2(s_axis_video_tdata[1]),
        .I3(s_axis_video_tdata[0]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[4]),
        .O(\rStoredData[3]_i_71__0_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA080FFFFFFFF)) 
    \rStoredData[3]_i_72__0 
       (.I0(s_axis_video_tdata[4]),
        .I1(s_axis_video_tdata[1]),
        .I2(s_axis_video_tdata[2]),
        .I3(s_axis_video_tdata[0]),
        .I4(s_axis_video_tdata[3]),
        .I5(s_axis_video_tdata[6]),
        .O(\rStoredData[3]_i_72__0_n_0 ));
  LUT5 #(
    .INIT(32'hBBBFFFDD)) 
    \rStoredData[3]_i_73 
       (.I0(s_axis_video_tdata[6]),
        .I1(s_axis_video_tdata[3]),
        .I2(s_axis_video_tdata[1]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[4]),
        .O(\rStoredData[3]_i_73_n_0 ));
  LUT6 #(
    .INIT(64'h1555555500000000)) 
    \rStoredData[3]_i_74__0 
       (.I0(s_axis_video_tdata[4]),
        .I1(s_axis_video_tdata[0]),
        .I2(s_axis_video_tdata[2]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[3]),
        .I5(s_axis_video_tdata[6]),
        .O(\rStoredData[3]_i_74__0_n_0 ));
  LUT6 #(
    .INIT(64'h0001555500000000)) 
    \rStoredData[3]_i_75__0 
       (.I0(s_axis_video_tdata[4]),
        .I1(s_axis_video_tdata[0]),
        .I2(s_axis_video_tdata[1]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[3]),
        .I5(s_axis_video_tdata[6]),
        .O(\rStoredData[3]_i_75__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFD55555554)) 
    \rStoredData[3]_i_76__0 
       (.I0(s_axis_video_tdata[6]),
        .I1(s_axis_video_tdata[3]),
        .I2(s_axis_video_tdata[1]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[0]),
        .I5(s_axis_video_tdata[4]),
        .O(\rStoredData[3]_i_76__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'h07)) 
    \rStoredData[3]_i_77__0 
       (.I0(s_axis_video_tdata[1]),
        .I1(s_axis_video_tdata[0]),
        .I2(s_axis_video_tdata[2]),
        .O(\rStoredData[3]_i_77__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFF08000)) 
    \rStoredData[3]_i_78__0 
       (.I0(s_axis_video_tdata[2]),
        .I1(s_axis_video_tdata[1]),
        .I2(s_axis_video_tdata[6]),
        .I3(s_axis_video_tdata[3]),
        .I4(s_axis_video_tdata[4]),
        .O(\rStoredData[3]_i_78__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000011177777FFF)) 
    \rStoredData[3]_i_79__0 
       (.I0(s_axis_video_tdata[6]),
        .I1(s_axis_video_tdata[3]),
        .I2(s_axis_video_tdata[1]),
        .I3(s_axis_video_tdata[0]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[4]),
        .O(\rStoredData[3]_i_79__0_n_0 ));
  LUT6 #(
    .INIT(64'h5F4F0F0F0F0A2AAA)) 
    \rStoredData[3]_i_80__0 
       (.I0(s_axis_video_tdata[6]),
        .I1(s_axis_video_tdata[0]),
        .I2(s_axis_video_tdata[4]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[3]_i_80__0_n_0 ));
  LUT6 #(
    .INIT(64'hEABBABBB99999999)) 
    \rStoredData[3]_i_81__0 
       (.I0(s_axis_video_tdata[6]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[1]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[0]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[3]_i_81__0_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAABBB9999D)) 
    \rStoredData[3]_i_82__0 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[3]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[4]),
        .O(\rStoredData[3]_i_82__0_n_0 ));
  LUT5 #(
    .INIT(32'hAAA81555)) 
    \rStoredData[3]_i_83__0 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[3]),
        .I2(s_axis_video_tdata[2]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[4]),
        .O(\rStoredData[3]_i_83__0_n_0 ));
  LUT6 #(
    .INIT(64'h6A2A2AAAAAAAAAAB)) 
    \rStoredData[3]_i_84__0 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[2]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[0]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[3]_i_84__0_n_0 ));
  LUT6 #(
    .INIT(64'hC083C30333333333)) 
    \rStoredData[3]_i_85__0 
       (.I0(s_axis_video_tdata[0]),
        .I1(s_axis_video_tdata[5]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[4]),
        .O(\rStoredData[3]_i_85__0_n_0 ));
  LUT6 #(
    .INIT(64'h0FF070F0F0F0F0F0)) 
    \rStoredData[3]_i_86__0 
       (.I0(s_axis_video_tdata[0]),
        .I1(s_axis_video_tdata[1]),
        .I2(s_axis_video_tdata[5]),
        .I3(s_axis_video_tdata[3]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[4]),
        .O(\rStoredData[3]_i_86__0_n_0 ));
  LUT6 #(
    .INIT(64'h000000007FFFFFFF)) 
    \rStoredData[3]_i_87__0 
       (.I0(s_axis_video_tdata[4]),
        .I1(s_axis_video_tdata[2]),
        .I2(s_axis_video_tdata[1]),
        .I3(s_axis_video_tdata[0]),
        .I4(s_axis_video_tdata[3]),
        .I5(s_axis_video_tdata[5]),
        .O(\rStoredData[3]_i_87__0_n_0 ));
  LUT5 #(
    .INIT(32'h33333F7C)) 
    \rStoredData[3]_i_88__0 
       (.I0(s_axis_video_tdata[1]),
        .I1(s_axis_video_tdata[5]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[4]),
        .O(\rStoredData[3]_i_88__0_n_0 ));
  LUT6 #(
    .INIT(64'hDDDDD55540002222)) 
    \rStoredData[3]_i_89__0 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[3]),
        .I2(s_axis_video_tdata[1]),
        .I3(s_axis_video_tdata[0]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[4]),
        .O(\rStoredData[3]_i_89__0_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAAA89)) 
    \rStoredData[3]_i_90 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[3]),
        .I2(s_axis_video_tdata[1]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[4]),
        .O(\rStoredData[3]_i_90_n_0 ));
  LUT5 #(
    .INIT(32'hCCCFB333)) 
    \rStoredData[3]_i_91 
       (.I0(s_axis_video_tdata[1]),
        .I1(s_axis_video_tdata[5]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[4]),
        .O(\rStoredData[3]_i_91_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA89999911)) 
    \rStoredData[3]_i_92 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[3]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[4]),
        .O(\rStoredData[3]_i_92_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rStoredData[3]_i_9__0 
       (.I0(\rStoredData[3]_i_23_n_0 ),
        .I1(\rStoredData[3]_i_24__0_n_0 ),
        .I2(s_axis_video_tdata[9]),
        .I3(\rStoredData_reg[3]_i_25_n_0 ),
        .I4(s_axis_video_tdata[8]),
        .I5(\rStoredData_reg[3]_i_26__0_n_0 ),
        .O(\rStoredData[3]_i_9__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \rStoredData[4]_i_12 
       (.I0(s_axis_video_tdata[1]),
        .I1(s_axis_video_tdata[2]),
        .I2(s_axis_video_tdata[3]),
        .O(\rStoredData[4]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h3B3B3F3CCCCCCCCC)) 
    \rStoredData[4]_i_13 
       (.I0(\rStoredData[4]_i_25__0_n_0 ),
        .I1(s_axis_video_tdata[6]),
        .I2(s_axis_video_tdata[4]),
        .I3(\rStoredData[6]_i_5__1_n_0 ),
        .I4(s_axis_video_tdata[3]),
        .I5(s_axis_video_tdata[5]),
        .O(\rStoredData[4]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h000000007FFFFFFF)) 
    \rStoredData[4]_i_14 
       (.I0(s_axis_video_tdata[4]),
        .I1(s_axis_video_tdata[0]),
        .I2(s_axis_video_tdata[2]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[3]),
        .I5(s_axis_video_tdata[5]),
        .O(\rStoredData[4]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'hFFEA)) 
    \rStoredData[4]_i_15__0 
       (.I0(s_axis_video_tdata[3]),
        .I1(s_axis_video_tdata[2]),
        .I2(s_axis_video_tdata[1]),
        .I3(s_axis_video_tdata[4]),
        .O(\rStoredData[4]_i_15__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'hFFFFAA80)) 
    \rStoredData[4]_i_17__0 
       (.I0(s_axis_video_tdata[3]),
        .I1(s_axis_video_tdata[1]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[4]),
        .O(\rStoredData[4]_i_17__0_n_0 ));
  LUT6 #(
    .INIT(64'h00000001FFFFFFFF)) 
    \rStoredData[4]_i_18__0 
       (.I0(s_axis_video_tdata[4]),
        .I1(s_axis_video_tdata[0]),
        .I2(s_axis_video_tdata[1]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[3]),
        .I5(s_axis_video_tdata[5]),
        .O(\rStoredData[4]_i_18__0_n_0 ));
  LUT5 #(
    .INIT(32'hB8B8FF00)) 
    \rStoredData[4]_i_1__0 
       (.I0(\rStoredData_reg[4]_i_2__0_n_0 ),
        .I1(s_axis_video_tdata[8]),
        .I2(\rStoredData_reg[4]_i_3__0_n_0 ),
        .I3(\rStoredData[4]_i_4__0_n_0 ),
        .I4(sGammaReg[2]),
        .O(\rStoredData[4]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'h37)) 
    \rStoredData[4]_i_25__0 
       (.I0(s_axis_video_tdata[0]),
        .I1(s_axis_video_tdata[2]),
        .I2(s_axis_video_tdata[1]),
        .O(\rStoredData[4]_i_25__0_n_0 ));
  LUT6 #(
    .INIT(64'h636363636332723A)) 
    \rStoredData[4]_i_26__0 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[0]),
        .I5(s_axis_video_tdata[2]),
        .O(\rStoredData[4]_i_26__0_n_0 ));
  LUT6 #(
    .INIT(64'h57775777EAAAAAAA)) 
    \rStoredData[4]_i_27__0 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[3]),
        .I2(s_axis_video_tdata[1]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[0]),
        .I5(s_axis_video_tdata[4]),
        .O(\rStoredData[4]_i_27__0_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \rStoredData[4]_i_28__0 
       (.I0(\rStoredData[4]_i_40__0_n_0 ),
        .I1(s_axis_video_tdata[8]),
        .I2(\rStoredData[4]_i_41__0_n_0 ),
        .I3(s_axis_video_tdata[6]),
        .I4(\rStoredData[4]_i_42__0_n_0 ),
        .O(\rStoredData[4]_i_28__0_n_0 ));
  LUT6 #(
    .INIT(64'h0F00DFDF0F00D0D0)) 
    \rStoredData[4]_i_29__0 
       (.I0(s_axis_video_tdata[5]),
        .I1(\rStoredData[4]_i_43__1_n_0 ),
        .I2(s_axis_video_tdata[8]),
        .I3(\rStoredData[5]_i_35_n_0 ),
        .I4(s_axis_video_tdata[6]),
        .I5(\rStoredData[4]_i_44__0_n_0 ),
        .O(\rStoredData[4]_i_29__0_n_0 ));
  LUT6 #(
    .INIT(64'h3077304430FF30FF)) 
    \rStoredData[4]_i_30__0 
       (.I0(\rStoredData[5]_i_18__1_n_0 ),
        .I1(s_axis_video_tdata[8]),
        .I2(\rStoredData[4]_i_45__0_n_0 ),
        .I3(s_axis_video_tdata[6]),
        .I4(\rStoredData[4]_i_46__0_n_0 ),
        .I5(s_axis_video_tdata[5]),
        .O(\rStoredData[4]_i_30__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEAAA88888)) 
    \rStoredData[4]_i_31__0 
       (.I0(s_axis_video_tdata[8]),
        .I1(s_axis_video_tdata[5]),
        .I2(s_axis_video_tdata[1]),
        .I3(\rStoredData[6]_i_18_n_0 ),
        .I4(s_axis_video_tdata[4]),
        .I5(s_axis_video_tdata[6]),
        .O(\rStoredData[4]_i_31__0_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \rStoredData[4]_i_32__0 
       (.I0(\rStoredData[4]_i_43__1_n_0 ),
        .I1(s_axis_video_tdata[9]),
        .I2(\rStoredData[5]_i_33_n_0 ),
        .I3(s_axis_video_tdata[5]),
        .I4(s_axis_video_tdata[6]),
        .I5(\rStoredData[4]_i_47__0_n_0 ),
        .O(\rStoredData[4]_i_32__0_n_0 ));
  LUT6 #(
    .INIT(64'hB8BBB888B8BBB8BB)) 
    \rStoredData[4]_i_33__0 
       (.I0(\rStoredData[4]_i_48__0_n_0 ),
        .I1(s_axis_video_tdata[6]),
        .I2(\rStoredData[4]_i_49__0_n_0 ),
        .I3(s_axis_video_tdata[9]),
        .I4(\rStoredData[4]_i_50__0_n_0 ),
        .I5(s_axis_video_tdata[5]),
        .O(\rStoredData[4]_i_33__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rStoredData[4]_i_34__0 
       (.I0(\rStoredData[4]_i_51_n_0 ),
        .I1(\rStoredData[4]_i_52_n_0 ),
        .I2(s_axis_video_tdata[6]),
        .I3(\rStoredData[4]_i_53__0_n_0 ),
        .I4(s_axis_video_tdata[9]),
        .I5(\rStoredData[4]_i_54__0_n_0 ),
        .O(\rStoredData[4]_i_34__0_n_0 ));
  LUT6 #(
    .INIT(64'hE5A5E0A5A5A5A5A5)) 
    \rStoredData[4]_i_35__0 
       (.I0(s_axis_video_tdata[6]),
        .I1(\rStoredData[4]_i_55__0_n_0 ),
        .I2(s_axis_video_tdata[9]),
        .I3(s_axis_video_tdata[4]),
        .I4(\rStoredData[3]_i_45_n_0 ),
        .I5(s_axis_video_tdata[5]),
        .O(\rStoredData[4]_i_35__0_n_0 ));
  LUT6 #(
    .INIT(64'hBBB8FF33BBB8CC00)) 
    \rStoredData[4]_i_36__0 
       (.I0(\rStoredData[4]_i_56__0_n_0 ),
        .I1(s_axis_video_tdata[7]),
        .I2(\rStoredData[4]_i_57__0_n_0 ),
        .I3(s_axis_video_tdata[6]),
        .I4(s_axis_video_tdata[5]),
        .I5(\rStoredData[4]_i_58__0_n_0 ),
        .O(\rStoredData[4]_i_36__0_n_0 ));
  LUT6 #(
    .INIT(64'hBFC0FFFFBFC00000)) 
    \rStoredData[4]_i_37__0 
       (.I0(\rStoredData[3]_i_47_n_0 ),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[5]),
        .I3(s_axis_video_tdata[6]),
        .I4(s_axis_video_tdata[7]),
        .I5(\rStoredData[4]_i_59__0_n_0 ),
        .O(\rStoredData[4]_i_37__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFCFAFC000C000C0)) 
    \rStoredData[4]_i_38__0 
       (.I0(\rStoredData[4]_i_60__0_n_0 ),
        .I1(\rStoredData[5]_i_27__0_n_0 ),
        .I2(s_axis_video_tdata[7]),
        .I3(s_axis_video_tdata[5]),
        .I4(\rStoredData[4]_i_61__0_n_0 ),
        .I5(s_axis_video_tdata[6]),
        .O(\rStoredData[4]_i_38__0_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCCCCFF3F3F3B3)) 
    \rStoredData[4]_i_39__0 
       (.I0(s_axis_video_tdata[2]),
        .I1(s_axis_video_tdata[7]),
        .I2(s_axis_video_tdata[5]),
        .I3(s_axis_video_tdata[3]),
        .I4(s_axis_video_tdata[4]),
        .I5(s_axis_video_tdata[6]),
        .O(\rStoredData[4]_i_39__0_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8899955555555)) 
    \rStoredData[4]_i_40__0 
       (.I0(s_axis_video_tdata[6]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[2]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[3]),
        .I5(s_axis_video_tdata[5]),
        .O(\rStoredData[4]_i_40__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'h80033333)) 
    \rStoredData[4]_i_41__0 
       (.I0(s_axis_video_tdata[1]),
        .I1(s_axis_video_tdata[5]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[4]),
        .O(\rStoredData[4]_i_41__0_n_0 ));
  LUT6 #(
    .INIT(64'h99999999DCC4CCC4)) 
    \rStoredData[4]_i_42__0 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[2]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[0]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[4]_i_42__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'h00001555)) 
    \rStoredData[4]_i_43__1 
       (.I0(s_axis_video_tdata[3]),
        .I1(s_axis_video_tdata[0]),
        .I2(s_axis_video_tdata[1]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[4]),
        .O(\rStoredData[4]_i_43__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFAAEAAA)) 
    \rStoredData[4]_i_44__0 
       (.I0(s_axis_video_tdata[4]),
        .I1(s_axis_video_tdata[1]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[3]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[5]),
        .O(\rStoredData[4]_i_44__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEAAA00000000)) 
    \rStoredData[4]_i_45__0 
       (.I0(s_axis_video_tdata[4]),
        .I1(s_axis_video_tdata[2]),
        .I2(s_axis_video_tdata[1]),
        .I3(s_axis_video_tdata[0]),
        .I4(s_axis_video_tdata[3]),
        .I5(s_axis_video_tdata[5]),
        .O(\rStoredData[4]_i_45__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'h00007FFF)) 
    \rStoredData[4]_i_46__0 
       (.I0(s_axis_video_tdata[0]),
        .I1(s_axis_video_tdata[3]),
        .I2(s_axis_video_tdata[2]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[4]),
        .O(\rStoredData[4]_i_46__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFCCCCCCCC8)) 
    \rStoredData[4]_i_47__0 
       (.I0(s_axis_video_tdata[1]),
        .I1(s_axis_video_tdata[9]),
        .I2(s_axis_video_tdata[4]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[3]),
        .I5(s_axis_video_tdata[5]),
        .O(\rStoredData[4]_i_47__0_n_0 ));
  LUT6 #(
    .INIT(64'h30040C0CCCCCCCCC)) 
    \rStoredData[4]_i_48__0 
       (.I0(s_axis_video_tdata[1]),
        .I1(s_axis_video_tdata[9]),
        .I2(s_axis_video_tdata[4]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[3]),
        .I5(s_axis_video_tdata[5]),
        .O(\rStoredData[4]_i_48__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF80000000)) 
    \rStoredData[4]_i_49__0 
       (.I0(s_axis_video_tdata[4]),
        .I1(s_axis_video_tdata[2]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[3]),
        .I5(s_axis_video_tdata[5]),
        .O(\rStoredData[4]_i_49__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rStoredData[4]_i_4__0 
       (.I0(\rStoredData_reg[4]_i_9__0_n_0 ),
        .I1(\rStoredData_reg[4]_i_10__0_n_0 ),
        .I2(sGammaReg[0]),
        .I3(\rStoredData_reg[4]_i_11__0_n_0 ),
        .I4(sGammaReg[1]),
        .I5(s_axis_video_tdata[6]),
        .O(\rStoredData[4]_i_4__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT5 #(
    .INIT(32'h557FFFFF)) 
    \rStoredData[4]_i_50__0 
       (.I0(s_axis_video_tdata[3]),
        .I1(s_axis_video_tdata[0]),
        .I2(s_axis_video_tdata[1]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[4]),
        .O(\rStoredData[4]_i_50__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'h0000557F)) 
    \rStoredData[4]_i_51 
       (.I0(s_axis_video_tdata[4]),
        .I1(s_axis_video_tdata[1]),
        .I2(s_axis_video_tdata[2]),
        .I3(s_axis_video_tdata[3]),
        .I4(s_axis_video_tdata[5]),
        .O(\rStoredData[4]_i_51_n_0 ));
  LUT6 #(
    .INIT(64'h8880000000000001)) 
    \rStoredData[4]_i_52 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[3]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[4]),
        .O(\rStoredData[4]_i_52_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT5 #(
    .INIT(32'hFFFFEAAA)) 
    \rStoredData[4]_i_53__0 
       (.I0(s_axis_video_tdata[4]),
        .I1(s_axis_video_tdata[2]),
        .I2(s_axis_video_tdata[1]),
        .I3(s_axis_video_tdata[3]),
        .I4(s_axis_video_tdata[5]),
        .O(\rStoredData[4]_i_53__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEAAAA)) 
    \rStoredData[4]_i_54__0 
       (.I0(s_axis_video_tdata[4]),
        .I1(s_axis_video_tdata[2]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[3]),
        .I5(s_axis_video_tdata[5]),
        .O(\rStoredData[4]_i_54__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'hFFA8)) 
    \rStoredData[4]_i_55__0 
       (.I0(s_axis_video_tdata[2]),
        .I1(s_axis_video_tdata[0]),
        .I2(s_axis_video_tdata[1]),
        .I3(s_axis_video_tdata[3]),
        .O(\rStoredData[4]_i_55__0_n_0 ));
  LUT6 #(
    .INIT(64'h5555544422222AAA)) 
    \rStoredData[4]_i_56__0 
       (.I0(s_axis_video_tdata[6]),
        .I1(s_axis_video_tdata[3]),
        .I2(s_axis_video_tdata[1]),
        .I3(s_axis_video_tdata[0]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[4]),
        .O(\rStoredData[4]_i_56__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'h00005F7F)) 
    \rStoredData[4]_i_57__0 
       (.I0(s_axis_video_tdata[3]),
        .I1(s_axis_video_tdata[0]),
        .I2(s_axis_video_tdata[2]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[4]),
        .O(\rStoredData[4]_i_57__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFEAFFFF00000000)) 
    \rStoredData[4]_i_58__0 
       (.I0(s_axis_video_tdata[3]),
        .I1(s_axis_video_tdata[1]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[6]),
        .I5(s_axis_video_tdata[4]),
        .O(\rStoredData[4]_i_58__0_n_0 ));
  LUT6 #(
    .INIT(64'h001FFFFFFFF00000)) 
    \rStoredData[4]_i_59__0 
       (.I0(s_axis_video_tdata[1]),
        .I1(s_axis_video_tdata[2]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[4]),
        .I4(s_axis_video_tdata[5]),
        .I5(s_axis_video_tdata[6]),
        .O(\rStoredData[4]_i_59__0_n_0 ));
  LUT6 #(
    .INIT(64'hFE00FFFFFE000000)) 
    \rStoredData[4]_i_5__0 
       (.I0(s_axis_video_tdata[5]),
        .I1(\rStoredData[4]_i_12_n_0 ),
        .I2(s_axis_video_tdata[4]),
        .I3(s_axis_video_tdata[6]),
        .I4(s_axis_video_tdata[7]),
        .I5(\rStoredData[4]_i_13_n_0 ),
        .O(\rStoredData[4]_i_5__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'hFFFF8000)) 
    \rStoredData[4]_i_60__0 
       (.I0(s_axis_video_tdata[3]),
        .I1(s_axis_video_tdata[1]),
        .I2(s_axis_video_tdata[2]),
        .I3(s_axis_video_tdata[0]),
        .I4(s_axis_video_tdata[4]),
        .O(\rStoredData[4]_i_60__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'hFFFFAAA8)) 
    \rStoredData[4]_i_61__0 
       (.I0(s_axis_video_tdata[3]),
        .I1(s_axis_video_tdata[1]),
        .I2(s_axis_video_tdata[2]),
        .I3(s_axis_video_tdata[0]),
        .I4(s_axis_video_tdata[4]),
        .O(\rStoredData[4]_i_61__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF80000000)) 
    \rStoredData[4]_i_6__0 
       (.I0(s_axis_video_tdata[6]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[2]),
        .I3(s_axis_video_tdata[3]),
        .I4(s_axis_video_tdata[5]),
        .I5(s_axis_video_tdata[7]),
        .O(\rStoredData[4]_i_6__0_n_0 ));
  LUT6 #(
    .INIT(64'hB888FFFFB8880000)) 
    \rStoredData[4]_i_7__0 
       (.I0(\rStoredData[4]_i_14_n_0 ),
        .I1(s_axis_video_tdata[6]),
        .I2(\rStoredData[4]_i_15__0_n_0 ),
        .I3(s_axis_video_tdata[5]),
        .I4(s_axis_video_tdata[7]),
        .I5(\rStoredData_reg[4]_i_16__0_n_0 ),
        .O(\rStoredData[4]_i_7__0_n_0 ));
  LUT6 #(
    .INIT(64'hAF00AF00FCFFFC00)) 
    \rStoredData[4]_i_8__0 
       (.I0(\rStoredData[5]_i_22_n_0 ),
        .I1(\rStoredData[4]_i_17__0_n_0 ),
        .I2(s_axis_video_tdata[5]),
        .I3(s_axis_video_tdata[7]),
        .I4(\rStoredData[4]_i_18__0_n_0 ),
        .I5(s_axis_video_tdata[6]),
        .O(\rStoredData[4]_i_8__0_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFF000FDFFFDFF)) 
    \rStoredData[5]_i_10__0 
       (.I0(s_axis_video_tdata[5]),
        .I1(\rStoredData[5]_i_22_n_0 ),
        .I2(s_axis_video_tdata[9]),
        .I3(s_axis_video_tdata[8]),
        .I4(\rStoredData[5]_i_23__0_n_0 ),
        .I5(s_axis_video_tdata[6]),
        .O(\rStoredData[5]_i_10__0_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFF0F0AF8FAF8F)) 
    \rStoredData[5]_i_12__0 
       (.I0(s_axis_video_tdata[6]),
        .I1(\rStoredData[5]_i_26__1_n_0 ),
        .I2(s_axis_video_tdata[8]),
        .I3(s_axis_video_tdata[5]),
        .I4(\rStoredData[5]_i_27__0_n_0 ),
        .I5(s_axis_video_tdata[7]),
        .O(\rStoredData[5]_i_12__0_n_0 ));
  LUT6 #(
    .INIT(64'hB833B83333333300)) 
    \rStoredData[5]_i_14 
       (.I0(\rStoredData[5]_i_30__0_n_0 ),
        .I1(s_axis_video_tdata[6]),
        .I2(\rStoredData[5]_i_16__1_n_0 ),
        .I3(s_axis_video_tdata[5]),
        .I4(\rStoredData[5]_i_31__1_n_0 ),
        .I5(s_axis_video_tdata[4]),
        .O(\rStoredData[5]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \rStoredData[5]_i_15__0 
       (.I0(s_axis_video_tdata[1]),
        .I1(s_axis_video_tdata[2]),
        .I2(s_axis_video_tdata[3]),
        .O(\rStoredData[5]_i_15__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \rStoredData[5]_i_16__1 
       (.I0(s_axis_video_tdata[0]),
        .I1(s_axis_video_tdata[1]),
        .I2(s_axis_video_tdata[2]),
        .I3(s_axis_video_tdata[3]),
        .O(\rStoredData[5]_i_16__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hC8)) 
    \rStoredData[5]_i_17__1 
       (.I0(s_axis_video_tdata[0]),
        .I1(s_axis_video_tdata[2]),
        .I2(s_axis_video_tdata[1]),
        .O(\rStoredData[5]_i_17__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rStoredData[5]_i_18__1 
       (.I0(s_axis_video_tdata[3]),
        .I1(s_axis_video_tdata[4]),
        .O(\rStoredData[5]_i_18__1_n_0 ));
  LUT6 #(
    .INIT(64'hEAAAAAAA00000000)) 
    \rStoredData[5]_i_19__0 
       (.I0(s_axis_video_tdata[4]),
        .I1(s_axis_video_tdata[1]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[0]),
        .I5(s_axis_video_tdata[5]),
        .O(\rStoredData[5]_i_19__0_n_0 ));
  LUT5 #(
    .INIT(32'h5555DFD5)) 
    \rStoredData[5]_i_1__0 
       (.I0(\rStoredData[5]_i_2__0_n_0 ),
        .I1(\rStoredData[5]_i_3__0_n_0 ),
        .I2(sGammaReg[0]),
        .I3(\rStoredData[5]_i_4__0_n_0 ),
        .I4(sGammaReg[2]),
        .O(\rStoredData[5]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h88BB88BBB8BBB888)) 
    \rStoredData[5]_i_20__0 
       (.I0(\rStoredData[5]_i_32_n_0 ),
        .I1(s_axis_video_tdata[8]),
        .I2(\rStoredData[5]_i_33_n_0 ),
        .I3(s_axis_video_tdata[6]),
        .I4(\rStoredData[5]_i_18__1_n_0 ),
        .I5(s_axis_video_tdata[5]),
        .O(\rStoredData[5]_i_20__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF00A8FFA8FF)) 
    \rStoredData[5]_i_21__0 
       (.I0(s_axis_video_tdata[5]),
        .I1(\rStoredData[5]_i_34_n_0 ),
        .I2(s_axis_video_tdata[4]),
        .I3(s_axis_video_tdata[8]),
        .I4(\rStoredData[5]_i_35_n_0 ),
        .I5(s_axis_video_tdata[6]),
        .O(\rStoredData[5]_i_21__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \rStoredData[5]_i_22 
       (.I0(s_axis_video_tdata[3]),
        .I1(s_axis_video_tdata[2]),
        .I2(s_axis_video_tdata[1]),
        .I3(s_axis_video_tdata[4]),
        .O(\rStoredData[5]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h000000000C0C8F8C)) 
    \rStoredData[5]_i_23__0 
       (.I0(\rStoredData[5]_i_36__0_n_0 ),
        .I1(s_axis_video_tdata[9]),
        .I2(s_axis_video_tdata[4]),
        .I3(\rStoredData[5]_i_37_n_0 ),
        .I4(s_axis_video_tdata[3]),
        .I5(s_axis_video_tdata[5]),
        .O(\rStoredData[5]_i_23__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFEAFAEA00000000)) 
    \rStoredData[5]_i_24__0 
       (.I0(s_axis_video_tdata[5]),
        .I1(\rStoredData[5]_i_38__0_n_0 ),
        .I2(s_axis_video_tdata[4]),
        .I3(s_axis_video_tdata[9]),
        .I4(\rStoredData[5]_i_39_n_0 ),
        .I5(s_axis_video_tdata[6]),
        .O(\rStoredData[5]_i_24__0_n_0 ));
  LUT6 #(
    .INIT(64'h80808080FCCCCCCC)) 
    \rStoredData[5]_i_25__0 
       (.I0(\rStoredData[5]_i_40_n_0 ),
        .I1(s_axis_video_tdata[6]),
        .I2(s_axis_video_tdata[5]),
        .I3(\rStoredData[5]_i_31__1_n_0 ),
        .I4(s_axis_video_tdata[4]),
        .I5(s_axis_video_tdata[9]),
        .O(\rStoredData[5]_i_25__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \rStoredData[5]_i_26__1 
       (.I0(s_axis_video_tdata[3]),
        .I1(s_axis_video_tdata[4]),
        .O(\rStoredData[5]_i_26__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'h000057FF)) 
    \rStoredData[5]_i_27__0 
       (.I0(s_axis_video_tdata[4]),
        .I1(s_axis_video_tdata[2]),
        .I2(s_axis_video_tdata[1]),
        .I3(s_axis_video_tdata[3]),
        .I4(s_axis_video_tdata[6]),
        .O(\rStoredData[5]_i_27__0_n_0 ));
  LUT6 #(
    .INIT(64'hFBFB333333300000)) 
    \rStoredData[5]_i_28__0 
       (.I0(\rStoredData[5]_i_31__1_n_0 ),
        .I1(s_axis_video_tdata[7]),
        .I2(s_axis_video_tdata[4]),
        .I3(\rStoredData[5]_i_41__0_n_0 ),
        .I4(s_axis_video_tdata[5]),
        .I5(s_axis_video_tdata[6]),
        .O(\rStoredData[5]_i_28__0_n_0 ));
  LUT6 #(
    .INIT(64'h8383330333333333)) 
    \rStoredData[5]_i_29__0 
       (.I0(\rStoredData[5]_i_31__1_n_0 ),
        .I1(s_axis_video_tdata[7]),
        .I2(s_axis_video_tdata[6]),
        .I3(\rStoredData[6]_i_20__0_n_0 ),
        .I4(s_axis_video_tdata[4]),
        .I5(s_axis_video_tdata[5]),
        .O(\rStoredData[5]_i_29__0_n_0 ));
  LUT6 #(
    .INIT(64'h001D331DFFFFFFFF)) 
    \rStoredData[5]_i_2__0 
       (.I0(\rStoredData[5]_i_5__0_n_0 ),
        .I1(s_axis_video_tdata[9]),
        .I2(\rStoredData[5]_i_6__0_n_0 ),
        .I3(s_axis_video_tdata[8]),
        .I4(\rStoredData[5]_i_7__0_n_0 ),
        .I5(sGammaReg[2]),
        .O(\rStoredData[5]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \rStoredData[5]_i_30__0 
       (.I0(s_axis_video_tdata[1]),
        .I1(s_axis_video_tdata[2]),
        .I2(s_axis_video_tdata[3]),
        .O(\rStoredData[5]_i_30__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'hEA00)) 
    \rStoredData[5]_i_31__1 
       (.I0(s_axis_video_tdata[2]),
        .I1(s_axis_video_tdata[0]),
        .I2(s_axis_video_tdata[1]),
        .I3(s_axis_video_tdata[3]),
        .O(\rStoredData[5]_i_31__1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000055555777)) 
    \rStoredData[5]_i_32 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[3]),
        .I2(s_axis_video_tdata[1]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[4]),
        .I5(s_axis_video_tdata[6]),
        .O(\rStoredData[5]_i_32_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'h1F)) 
    \rStoredData[5]_i_33 
       (.I0(s_axis_video_tdata[3]),
        .I1(s_axis_video_tdata[2]),
        .I2(s_axis_video_tdata[4]),
        .O(\rStoredData[5]_i_33_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'hFF80)) 
    \rStoredData[5]_i_34 
       (.I0(s_axis_video_tdata[2]),
        .I1(s_axis_video_tdata[1]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[3]),
        .O(\rStoredData[5]_i_34_n_0 ));
  LUT6 #(
    .INIT(64'h00000015FFFFFFFF)) 
    \rStoredData[5]_i_35 
       (.I0(s_axis_video_tdata[4]),
        .I1(s_axis_video_tdata[1]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[3]),
        .I5(s_axis_video_tdata[5]),
        .O(\rStoredData[5]_i_35_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \rStoredData[5]_i_36__0 
       (.I0(s_axis_video_tdata[2]),
        .I1(s_axis_video_tdata[1]),
        .O(\rStoredData[5]_i_36__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \rStoredData[5]_i_37 
       (.I0(s_axis_video_tdata[0]),
        .I1(s_axis_video_tdata[1]),
        .I2(s_axis_video_tdata[2]),
        .O(\rStoredData[5]_i_37_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \rStoredData[5]_i_38__0 
       (.I0(s_axis_video_tdata[2]),
        .I1(s_axis_video_tdata[3]),
        .O(\rStoredData[5]_i_38__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'hFF80)) 
    \rStoredData[5]_i_39 
       (.I0(s_axis_video_tdata[2]),
        .I1(s_axis_video_tdata[0]),
        .I2(s_axis_video_tdata[1]),
        .I3(s_axis_video_tdata[3]),
        .O(\rStoredData[5]_i_39_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rStoredData[5]_i_3__0 
       (.I0(\rStoredData[5]_i_8__0_n_0 ),
        .I1(\rStoredData_reg[5]_i_9_n_0 ),
        .I2(sGammaReg[1]),
        .I3(\rStoredData[5]_i_10__0_n_0 ),
        .I4(s_axis_video_tdata[7]),
        .I5(\rStoredData_reg[5]_i_11__0_n_0 ),
        .O(\rStoredData[5]_i_3__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'hFFA8)) 
    \rStoredData[5]_i_40 
       (.I0(s_axis_video_tdata[3]),
        .I1(s_axis_video_tdata[1]),
        .I2(s_axis_video_tdata[2]),
        .I3(s_axis_video_tdata[4]),
        .O(\rStoredData[5]_i_40_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'hC800)) 
    \rStoredData[5]_i_41__0 
       (.I0(s_axis_video_tdata[1]),
        .I1(s_axis_video_tdata[2]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[3]),
        .O(\rStoredData[5]_i_41__0_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \rStoredData[5]_i_4__0 
       (.I0(\rStoredData[5]_i_12__0_n_0 ),
        .I1(s_axis_video_tdata[9]),
        .I2(\rStoredData_reg[5]_i_13__0_n_0 ),
        .I3(sGammaReg[1]),
        .I4(s_axis_video_tdata[7]),
        .O(\rStoredData[5]_i_4__0_n_0 ));
  LUT6 #(
    .INIT(64'h45FFFFFF45FF0000)) 
    \rStoredData[5]_i_5__0 
       (.I0(s_axis_video_tdata[5]),
        .I1(\rStoredData[6]_i_6__0_n_0 ),
        .I2(s_axis_video_tdata[4]),
        .I3(s_axis_video_tdata[6]),
        .I4(s_axis_video_tdata[7]),
        .I5(\rStoredData[5]_i_14_n_0 ),
        .O(\rStoredData[5]_i_5__0_n_0 ));
  LUT6 #(
    .INIT(64'h8080000003033303)) 
    \rStoredData[5]_i_6__0 
       (.I0(\rStoredData[5]_i_15__0_n_0 ),
        .I1(s_axis_video_tdata[7]),
        .I2(s_axis_video_tdata[5]),
        .I3(\rStoredData[5]_i_16__1_n_0 ),
        .I4(s_axis_video_tdata[4]),
        .I5(s_axis_video_tdata[6]),
        .O(\rStoredData[5]_i_6__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFA8880000)) 
    \rStoredData[5]_i_7__0 
       (.I0(s_axis_video_tdata[6]),
        .I1(s_axis_video_tdata[4]),
        .I2(\rStoredData[5]_i_17__1_n_0 ),
        .I3(s_axis_video_tdata[3]),
        .I4(s_axis_video_tdata[5]),
        .I5(s_axis_video_tdata[7]),
        .O(\rStoredData[5]_i_7__0_n_0 ));
  LUT6 #(
    .INIT(64'hFF55FF55EA55EA00)) 
    \rStoredData[5]_i_8__0 
       (.I0(s_axis_video_tdata[9]),
        .I1(s_axis_video_tdata[5]),
        .I2(\rStoredData[5]_i_18__1_n_0 ),
        .I3(s_axis_video_tdata[8]),
        .I4(\rStoredData[5]_i_19__0_n_0 ),
        .I5(s_axis_video_tdata[6]),
        .O(\rStoredData[5]_i_8__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEA00000000)) 
    \rStoredData[6]_i_11__0 
       (.I0(s_axis_video_tdata[4]),
        .I1(s_axis_video_tdata[1]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[3]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[5]),
        .O(\rStoredData[6]_i_11__0_n_0 ));
  LUT6 #(
    .INIT(64'h333030300C0C8C8C)) 
    \rStoredData[6]_i_12 
       (.I0(\rStoredData[6]_i_17_n_0 ),
        .I1(s_axis_video_tdata[8]),
        .I2(s_axis_video_tdata[5]),
        .I3(\rStoredData[6]_i_18_n_0 ),
        .I4(s_axis_video_tdata[4]),
        .I5(s_axis_video_tdata[6]),
        .O(\rStoredData[6]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \rStoredData[6]_i_13 
       (.I0(s_axis_video_tdata[4]),
        .I1(s_axis_video_tdata[1]),
        .I2(s_axis_video_tdata[2]),
        .I3(s_axis_video_tdata[3]),
        .I4(s_axis_video_tdata[5]),
        .O(\rStoredData[6]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF3F3B3B0)) 
    \rStoredData[6]_i_14__0 
       (.I0(\rStoredData[7]_i_10_n_0 ),
        .I1(s_axis_video_tdata[9]),
        .I2(s_axis_video_tdata[4]),
        .I3(\rStoredData[6]_i_19__0_n_0 ),
        .I4(s_axis_video_tdata[3]),
        .I5(s_axis_video_tdata[5]),
        .O(\rStoredData[6]_i_14__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFFF75FF0000)) 
    \rStoredData[6]_i_15__0 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(\rStoredData[6]_i_20__0_n_0 ),
        .I3(s_axis_video_tdata[6]),
        .I4(s_axis_video_tdata[8]),
        .I5(s_axis_video_tdata[7]),
        .O(\rStoredData[6]_i_15__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAAAA888)) 
    \rStoredData[6]_i_16__0 
       (.I0(s_axis_video_tdata[7]),
        .I1(s_axis_video_tdata[6]),
        .I2(\rStoredData[6]_i_21__0_n_0 ),
        .I3(s_axis_video_tdata[4]),
        .I4(s_axis_video_tdata[5]),
        .I5(s_axis_video_tdata[8]),
        .O(\rStoredData[6]_i_16__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'h07)) 
    \rStoredData[6]_i_17 
       (.I0(s_axis_video_tdata[2]),
        .I1(s_axis_video_tdata[1]),
        .I2(s_axis_video_tdata[3]),
        .O(\rStoredData[6]_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \rStoredData[6]_i_18 
       (.I0(s_axis_video_tdata[3]),
        .I1(s_axis_video_tdata[2]),
        .O(\rStoredData[6]_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \rStoredData[6]_i_19__0 
       (.I0(s_axis_video_tdata[1]),
        .I1(s_axis_video_tdata[0]),
        .I2(s_axis_video_tdata[2]),
        .O(\rStoredData[6]_i_19__0_n_0 ));
  LUT6 #(
    .INIT(64'hE5E0E5E0FFFF0000)) 
    \rStoredData[6]_i_1__0 
       (.I0(s_axis_video_tdata[8]),
        .I1(\rStoredData[6]_i_2__0_n_0 ),
        .I2(s_axis_video_tdata[9]),
        .I3(\rStoredData[6]_i_3_n_0 ),
        .I4(\rStoredData[6]_i_4__0_n_0 ),
        .I5(sGammaReg[2]),
        .O(\rStoredData[6]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'h1F)) 
    \rStoredData[6]_i_20__0 
       (.I0(s_axis_video_tdata[2]),
        .I1(s_axis_video_tdata[1]),
        .I2(s_axis_video_tdata[3]),
        .O(\rStoredData[6]_i_20__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \rStoredData[6]_i_21__0 
       (.I0(s_axis_video_tdata[1]),
        .I1(s_axis_video_tdata[2]),
        .I2(s_axis_video_tdata[3]),
        .O(\rStoredData[6]_i_21__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEAAAA)) 
    \rStoredData[6]_i_2__0 
       (.I0(s_axis_video_tdata[6]),
        .I1(s_axis_video_tdata[4]),
        .I2(\rStoredData[6]_i_5__1_n_0 ),
        .I3(s_axis_video_tdata[3]),
        .I4(s_axis_video_tdata[5]),
        .I5(s_axis_video_tdata[7]),
        .O(\rStoredData[6]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h0FBF0FBFFFF0F0F0)) 
    \rStoredData[6]_i_3 
       (.I0(\rStoredData[6]_i_6__0_n_0 ),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[7]),
        .I3(s_axis_video_tdata[5]),
        .I4(\rStoredData[6]_i_7__1_n_0 ),
        .I5(s_axis_video_tdata[6]),
        .O(\rStoredData[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rStoredData[6]_i_4__0 
       (.I0(\rStoredData[6]_i_8__0_n_0 ),
        .I1(\rStoredData[6]_i_9__0_n_0 ),
        .I2(sGammaReg[0]),
        .I3(\rStoredData_reg[6]_i_10_n_0 ),
        .I4(sGammaReg[1]),
        .I5(s_axis_video_tdata[8]),
        .O(\rStoredData[6]_i_4__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \rStoredData[6]_i_5__1 
       (.I0(s_axis_video_tdata[1]),
        .I1(s_axis_video_tdata[2]),
        .I2(s_axis_video_tdata[0]),
        .O(\rStoredData[6]_i_5__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \rStoredData[6]_i_6__0 
       (.I0(s_axis_video_tdata[0]),
        .I1(s_axis_video_tdata[2]),
        .I2(s_axis_video_tdata[1]),
        .I3(s_axis_video_tdata[3]),
        .O(\rStoredData[6]_i_6__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \rStoredData[6]_i_7__1 
       (.I0(s_axis_video_tdata[3]),
        .I1(s_axis_video_tdata[1]),
        .I2(s_axis_video_tdata[2]),
        .I3(s_axis_video_tdata[0]),
        .I4(s_axis_video_tdata[4]),
        .O(\rStoredData[6]_i_7__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFEA55FFFFEA00AA)) 
    \rStoredData[6]_i_8__0 
       (.I0(s_axis_video_tdata[7]),
        .I1(s_axis_video_tdata[6]),
        .I2(\rStoredData[6]_i_11__0_n_0 ),
        .I3(s_axis_video_tdata[8]),
        .I4(s_axis_video_tdata[9]),
        .I5(\rStoredData[6]_i_12_n_0 ),
        .O(\rStoredData[6]_i_8__0_n_0 ));
  LUT6 #(
    .INIT(64'hCCEEFFFFF0000000)) 
    \rStoredData[6]_i_9__0 
       (.I0(\rStoredData[6]_i_13_n_0 ),
        .I1(s_axis_video_tdata[9]),
        .I2(\rStoredData[6]_i_14__0_n_0 ),
        .I3(s_axis_video_tdata[6]),
        .I4(s_axis_video_tdata[7]),
        .I5(s_axis_video_tdata[8]),
        .O(\rStoredData[6]_i_9__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rStoredData[7]_i_10 
       (.I0(s_axis_video_tdata[1]),
        .I1(s_axis_video_tdata[2]),
        .O(\rStoredData[7]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFEAFFEAFFFF0000)) 
    \rStoredData[7]_i_1__1 
       (.I0(s_axis_video_tdata[9]),
        .I1(\rStoredData[7]_i_2__0_n_0 ),
        .I2(s_axis_video_tdata[7]),
        .I3(s_axis_video_tdata[8]),
        .I4(\rStoredData[7]_i_3__1_n_0 ),
        .I5(sGammaReg[2]),
        .O(\rStoredData[7]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hEAAAAAAA00000000)) 
    \rStoredData[7]_i_2__0 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[3]),
        .I2(\rStoredData[7]_i_4__0_n_0 ),
        .I3(s_axis_video_tdata[0]),
        .I4(s_axis_video_tdata[4]),
        .I5(s_axis_video_tdata[6]),
        .O(\rStoredData[7]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBBBB8888888)) 
    \rStoredData[7]_i_3__1 
       (.I0(\rStoredData[7]_i_5__0_n_0 ),
        .I1(sGammaReg[0]),
        .I2(s_axis_video_tdata[8]),
        .I3(\rStoredData[7]_i_6__0_n_0 ),
        .I4(sGammaReg[1]),
        .I5(s_axis_video_tdata[9]),
        .O(\rStoredData[7]_i_3__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rStoredData[7]_i_4__0 
       (.I0(s_axis_video_tdata[2]),
        .I1(s_axis_video_tdata[1]),
        .O(\rStoredData[7]_i_4__0_n_0 ));
  LUT6 #(
    .INIT(64'hFCFFFFFFFC008800)) 
    \rStoredData[7]_i_5__0 
       (.I0(\rStoredData[7]_i_7__0_n_0 ),
        .I1(sGammaReg[1]),
        .I2(\rStoredData[7]_i_8__0_n_0 ),
        .I3(s_axis_video_tdata[8]),
        .I4(s_axis_video_tdata[7]),
        .I5(s_axis_video_tdata[9]),
        .O(\rStoredData[7]_i_5__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFA8880000)) 
    \rStoredData[7]_i_6__0 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(\rStoredData[7]_i_9__0_n_0 ),
        .I3(s_axis_video_tdata[3]),
        .I4(s_axis_video_tdata[6]),
        .I5(s_axis_video_tdata[7]),
        .O(\rStoredData[7]_i_6__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAAAA888)) 
    \rStoredData[7]_i_7__0 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[3]),
        .I2(s_axis_video_tdata[1]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[4]),
        .I5(s_axis_video_tdata[6]),
        .O(\rStoredData[7]_i_7__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEAAAAAAA)) 
    \rStoredData[7]_i_8__0 
       (.I0(s_axis_video_tdata[9]),
        .I1(s_axis_video_tdata[4]),
        .I2(\rStoredData[7]_i_10_n_0 ),
        .I3(s_axis_video_tdata[3]),
        .I4(s_axis_video_tdata[5]),
        .I5(s_axis_video_tdata[6]),
        .O(\rStoredData[7]_i_8__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \rStoredData[7]_i_9__0 
       (.I0(s_axis_video_tdata[2]),
        .I1(s_axis_video_tdata[1]),
        .O(\rStoredData[7]_i_9__0_n_0 ));
  FDRE \rStoredData_reg[0] 
       (.C(StreamClk),
        .CE(E),
        .D(\rStoredData[0]_i_1__0_n_0 ),
        .Q(m_axis_video_tdata[0]),
        .R(1'b0));
  MUXF7 \rStoredData_reg[0]_i_11__0 
       (.I0(\rStoredData[0]_i_31__0_n_0 ),
        .I1(\rStoredData[0]_i_32__0_n_0 ),
        .O(\rStoredData_reg[0]_i_11__0_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF7 \rStoredData_reg[0]_i_12__0 
       (.I0(\rStoredData[0]_i_33__0_n_0 ),
        .I1(\rStoredData[0]_i_34__0_n_0 ),
        .O(\rStoredData_reg[0]_i_12__0_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF7 \rStoredData_reg[0]_i_13__0 
       (.I0(\rStoredData[0]_i_35__0_n_0 ),
        .I1(\rStoredData[0]_i_36__0_n_0 ),
        .O(\rStoredData_reg[0]_i_13__0_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF7 \rStoredData_reg[0]_i_14__0 
       (.I0(\rStoredData[0]_i_37__0_n_0 ),
        .I1(\rStoredData[0]_i_38__0_n_0 ),
        .O(\rStoredData_reg[0]_i_14__0_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF7 \rStoredData_reg[0]_i_15__0 
       (.I0(\rStoredData[0]_i_39__0_n_0 ),
        .I1(\rStoredData[0]_i_40__0_n_0 ),
        .O(\rStoredData_reg[0]_i_15__0_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF7 \rStoredData_reg[0]_i_16__0 
       (.I0(\rStoredData[0]_i_41__0_n_0 ),
        .I1(\rStoredData[0]_i_42__0_n_0 ),
        .O(\rStoredData_reg[0]_i_16__0_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF7 \rStoredData_reg[0]_i_17__0 
       (.I0(\rStoredData[0]_i_43__0_n_0 ),
        .I1(\rStoredData[0]_i_44__0_n_0 ),
        .O(\rStoredData_reg[0]_i_17__0_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF7 \rStoredData_reg[0]_i_18__0 
       (.I0(\rStoredData[0]_i_45__0_n_0 ),
        .I1(\rStoredData[0]_i_46__0_n_0 ),
        .O(\rStoredData_reg[0]_i_18__0_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF8 \rStoredData_reg[0]_i_19__0 
       (.I0(\rStoredData_reg[0]_i_47__0_n_0 ),
        .I1(\rStoredData_reg[0]_i_48__0_n_0 ),
        .O(\rStoredData_reg[0]_i_19__0_n_0 ),
        .S(s_axis_video_tdata[8]));
  MUXF8 \rStoredData_reg[0]_i_20__0 
       (.I0(\rStoredData_reg[0]_i_49__0_n_0 ),
        .I1(\rStoredData_reg[0]_i_50__0_n_0 ),
        .O(\rStoredData_reg[0]_i_20__0_n_0 ),
        .S(s_axis_video_tdata[8]));
  MUXF8 \rStoredData_reg[0]_i_21__0 
       (.I0(\rStoredData_reg[0]_i_51__0_n_0 ),
        .I1(\rStoredData_reg[0]_i_52__0_n_0 ),
        .O(\rStoredData_reg[0]_i_21__0_n_0 ),
        .S(s_axis_video_tdata[8]));
  MUXF8 \rStoredData_reg[0]_i_22__0 
       (.I0(\rStoredData_reg[0]_i_53__0_n_0 ),
        .I1(\rStoredData_reg[0]_i_54__0_n_0 ),
        .O(\rStoredData_reg[0]_i_22__0_n_0 ),
        .S(s_axis_video_tdata[8]));
  MUXF8 \rStoredData_reg[0]_i_23__0 
       (.I0(\rStoredData_reg[0]_i_55__0_n_0 ),
        .I1(\rStoredData_reg[0]_i_56__0_n_0 ),
        .O(\rStoredData_reg[0]_i_23__0_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF8 \rStoredData_reg[0]_i_24__0 
       (.I0(\rStoredData_reg[0]_i_57__0_n_0 ),
        .I1(\rStoredData_reg[0]_i_58__0_n_0 ),
        .O(\rStoredData_reg[0]_i_24__0_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF8 \rStoredData_reg[0]_i_25__0 
       (.I0(\rStoredData_reg[0]_i_59__0_n_0 ),
        .I1(\rStoredData_reg[0]_i_60__0_n_0 ),
        .O(\rStoredData_reg[0]_i_25__0_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF8 \rStoredData_reg[0]_i_26__0 
       (.I0(\rStoredData_reg[0]_i_61__0_n_0 ),
        .I1(\rStoredData_reg[0]_i_62__0_n_0 ),
        .O(\rStoredData_reg[0]_i_26__0_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF8 \rStoredData_reg[0]_i_27__0 
       (.I0(\rStoredData_reg[0]_i_63__0_n_0 ),
        .I1(\rStoredData_reg[0]_i_64__0_n_0 ),
        .O(\rStoredData_reg[0]_i_27__0_n_0 ),
        .S(s_axis_video_tdata[7]));
  MUXF8 \rStoredData_reg[0]_i_28__0 
       (.I0(\rStoredData_reg[0]_i_65__0_n_0 ),
        .I1(\rStoredData_reg[0]_i_66__0_n_0 ),
        .O(\rStoredData_reg[0]_i_28__0_n_0 ),
        .S(s_axis_video_tdata[7]));
  MUXF8 \rStoredData_reg[0]_i_29__0 
       (.I0(\rStoredData_reg[0]_i_67__0_n_0 ),
        .I1(\rStoredData_reg[0]_i_68__0_n_0 ),
        .O(\rStoredData_reg[0]_i_29__0_n_0 ),
        .S(s_axis_video_tdata[7]));
  MUXF8 \rStoredData_reg[0]_i_30__0 
       (.I0(\rStoredData_reg[0]_i_69__0_n_0 ),
        .I1(\rStoredData_reg[0]_i_70__0_n_0 ),
        .O(\rStoredData_reg[0]_i_30__0_n_0 ),
        .S(s_axis_video_tdata[7]));
  MUXF7 \rStoredData_reg[0]_i_47__0 
       (.I0(\rStoredData[0]_i_71__0_n_0 ),
        .I1(\rStoredData[0]_i_72__0_n_0 ),
        .O(\rStoredData_reg[0]_i_47__0_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF7 \rStoredData_reg[0]_i_48__0 
       (.I0(\rStoredData[0]_i_73__0_n_0 ),
        .I1(\rStoredData[0]_i_74__0_n_0 ),
        .O(\rStoredData_reg[0]_i_48__0_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF7 \rStoredData_reg[0]_i_49__0 
       (.I0(\rStoredData[0]_i_75__0_n_0 ),
        .I1(\rStoredData[0]_i_76__0_n_0 ),
        .O(\rStoredData_reg[0]_i_49__0_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF8 \rStoredData_reg[0]_i_4__0 
       (.I0(\rStoredData_reg[0]_i_11__0_n_0 ),
        .I1(\rStoredData_reg[0]_i_12__0_n_0 ),
        .O(\rStoredData_reg[0]_i_4__0_n_0 ),
        .S(s_axis_video_tdata[7]));
  MUXF7 \rStoredData_reg[0]_i_50__0 
       (.I0(\rStoredData[0]_i_77__0_n_0 ),
        .I1(\rStoredData[0]_i_78__0_n_0 ),
        .O(\rStoredData_reg[0]_i_50__0_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF7 \rStoredData_reg[0]_i_51__0 
       (.I0(\rStoredData[0]_i_79__0_n_0 ),
        .I1(\rStoredData[0]_i_80__0_n_0 ),
        .O(\rStoredData_reg[0]_i_51__0_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF7 \rStoredData_reg[0]_i_52__0 
       (.I0(\rStoredData[0]_i_81__0_n_0 ),
        .I1(\rStoredData[0]_i_82__0_n_0 ),
        .O(\rStoredData_reg[0]_i_52__0_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF7 \rStoredData_reg[0]_i_53__0 
       (.I0(\rStoredData[0]_i_83__0_n_0 ),
        .I1(\rStoredData[0]_i_84__0_n_0 ),
        .O(\rStoredData_reg[0]_i_53__0_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF7 \rStoredData_reg[0]_i_54__0 
       (.I0(\rStoredData[0]_i_85__0_n_0 ),
        .I1(\rStoredData[0]_i_86__0_n_0 ),
        .O(\rStoredData_reg[0]_i_54__0_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF7 \rStoredData_reg[0]_i_55__0 
       (.I0(\rStoredData[0]_i_87__0_n_0 ),
        .I1(\rStoredData[0]_i_88__0_n_0 ),
        .O(\rStoredData_reg[0]_i_55__0_n_0 ),
        .S(s_axis_video_tdata[9]));
  MUXF7 \rStoredData_reg[0]_i_56__0 
       (.I0(\rStoredData[0]_i_89__0_n_0 ),
        .I1(\rStoredData[0]_i_90__0_n_0 ),
        .O(\rStoredData_reg[0]_i_56__0_n_0 ),
        .S(s_axis_video_tdata[9]));
  MUXF7 \rStoredData_reg[0]_i_57__0 
       (.I0(\rStoredData[0]_i_91__0_n_0 ),
        .I1(\rStoredData[0]_i_92__0_n_0 ),
        .O(\rStoredData_reg[0]_i_57__0_n_0 ),
        .S(s_axis_video_tdata[9]));
  MUXF7 \rStoredData_reg[0]_i_58__0 
       (.I0(\rStoredData[0]_i_93__0_n_0 ),
        .I1(\rStoredData[0]_i_94__0_n_0 ),
        .O(\rStoredData_reg[0]_i_58__0_n_0 ),
        .S(s_axis_video_tdata[9]));
  MUXF7 \rStoredData_reg[0]_i_59__0 
       (.I0(\rStoredData[0]_i_95__0_n_0 ),
        .I1(\rStoredData[0]_i_96__0_n_0 ),
        .O(\rStoredData_reg[0]_i_59__0_n_0 ),
        .S(s_axis_video_tdata[9]));
  MUXF8 \rStoredData_reg[0]_i_5__0 
       (.I0(\rStoredData_reg[0]_i_13__0_n_0 ),
        .I1(\rStoredData_reg[0]_i_14__0_n_0 ),
        .O(\rStoredData_reg[0]_i_5__0_n_0 ),
        .S(s_axis_video_tdata[7]));
  MUXF7 \rStoredData_reg[0]_i_60__0 
       (.I0(\rStoredData[0]_i_97__0_n_0 ),
        .I1(\rStoredData[0]_i_98__0_n_0 ),
        .O(\rStoredData_reg[0]_i_60__0_n_0 ),
        .S(s_axis_video_tdata[9]));
  MUXF7 \rStoredData_reg[0]_i_61__0 
       (.I0(\rStoredData[0]_i_99__0_n_0 ),
        .I1(\rStoredData[0]_i_100__0_n_0 ),
        .O(\rStoredData_reg[0]_i_61__0_n_0 ),
        .S(s_axis_video_tdata[9]));
  MUXF7 \rStoredData_reg[0]_i_62__0 
       (.I0(\rStoredData[0]_i_101__0_n_0 ),
        .I1(\rStoredData[0]_i_102__0_n_0 ),
        .O(\rStoredData_reg[0]_i_62__0_n_0 ),
        .S(s_axis_video_tdata[9]));
  MUXF7 \rStoredData_reg[0]_i_63__0 
       (.I0(\rStoredData[0]_i_103__0_n_0 ),
        .I1(\rStoredData[0]_i_104__0_n_0 ),
        .O(\rStoredData_reg[0]_i_63__0_n_0 ),
        .S(s_axis_video_tdata[5]));
  MUXF7 \rStoredData_reg[0]_i_64__0 
       (.I0(\rStoredData[0]_i_105__0_n_0 ),
        .I1(\rStoredData[0]_i_106__0_n_0 ),
        .O(\rStoredData_reg[0]_i_64__0_n_0 ),
        .S(s_axis_video_tdata[5]));
  MUXF7 \rStoredData_reg[0]_i_65__0 
       (.I0(\rStoredData[0]_i_107__0_n_0 ),
        .I1(\rStoredData[0]_i_108__0_n_0 ),
        .O(\rStoredData_reg[0]_i_65__0_n_0 ),
        .S(s_axis_video_tdata[5]));
  MUXF7 \rStoredData_reg[0]_i_66__0 
       (.I0(\rStoredData[0]_i_109__0_n_0 ),
        .I1(\rStoredData[0]_i_110__0_n_0 ),
        .O(\rStoredData_reg[0]_i_66__0_n_0 ),
        .S(s_axis_video_tdata[5]));
  MUXF7 \rStoredData_reg[0]_i_67__0 
       (.I0(\rStoredData[0]_i_111__0_n_0 ),
        .I1(\rStoredData[0]_i_112__0_n_0 ),
        .O(\rStoredData_reg[0]_i_67__0_n_0 ),
        .S(s_axis_video_tdata[5]));
  MUXF7 \rStoredData_reg[0]_i_68__0 
       (.I0(\rStoredData[0]_i_113__0_n_0 ),
        .I1(\rStoredData[0]_i_114__0_n_0 ),
        .O(\rStoredData_reg[0]_i_68__0_n_0 ),
        .S(s_axis_video_tdata[5]));
  MUXF7 \rStoredData_reg[0]_i_69__0 
       (.I0(\rStoredData[0]_i_115__0_n_0 ),
        .I1(\rStoredData[0]_i_116__0_n_0 ),
        .O(\rStoredData_reg[0]_i_69__0_n_0 ),
        .S(s_axis_video_tdata[5]));
  MUXF8 \rStoredData_reg[0]_i_6__0 
       (.I0(\rStoredData_reg[0]_i_15__0_n_0 ),
        .I1(\rStoredData_reg[0]_i_16__0_n_0 ),
        .O(\rStoredData_reg[0]_i_6__0_n_0 ),
        .S(s_axis_video_tdata[7]));
  MUXF7 \rStoredData_reg[0]_i_70__0 
       (.I0(\rStoredData[0]_i_117__0_n_0 ),
        .I1(\rStoredData[0]_i_118__0_n_0 ),
        .O(\rStoredData_reg[0]_i_70__0_n_0 ),
        .S(s_axis_video_tdata[5]));
  MUXF8 \rStoredData_reg[0]_i_7__0 
       (.I0(\rStoredData_reg[0]_i_17__0_n_0 ),
        .I1(\rStoredData_reg[0]_i_18__0_n_0 ),
        .O(\rStoredData_reg[0]_i_7__0_n_0 ),
        .S(s_axis_video_tdata[7]));
  FDRE \rStoredData_reg[1] 
       (.C(StreamClk),
        .CE(E),
        .D(\rStoredData[1]_i_1__0_n_0 ),
        .Q(m_axis_video_tdata[1]),
        .R(1'b0));
  MUXF7 \rStoredData_reg[1]_i_11 
       (.I0(\rStoredData[1]_i_31_n_0 ),
        .I1(\rStoredData[1]_i_32__0_n_0 ),
        .O(\rStoredData_reg[1]_i_11_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF7 \rStoredData_reg[1]_i_12 
       (.I0(\rStoredData[1]_i_33__0_n_0 ),
        .I1(\rStoredData[1]_i_34__0_n_0 ),
        .O(\rStoredData_reg[1]_i_12_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF7 \rStoredData_reg[1]_i_13 
       (.I0(\rStoredData[1]_i_35__0_n_0 ),
        .I1(\rStoredData[1]_i_36__0_n_0 ),
        .O(\rStoredData_reg[1]_i_13_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF7 \rStoredData_reg[1]_i_14 
       (.I0(\rStoredData[1]_i_37__0_n_0 ),
        .I1(\rStoredData[1]_i_38__0_n_0 ),
        .O(\rStoredData_reg[1]_i_14_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF7 \rStoredData_reg[1]_i_15__0 
       (.I0(\rStoredData[1]_i_39__0_n_0 ),
        .I1(\rStoredData[1]_i_40__0_n_0 ),
        .O(\rStoredData_reg[1]_i_15__0_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF7 \rStoredData_reg[1]_i_16__0 
       (.I0(\rStoredData[1]_i_41__0_n_0 ),
        .I1(\rStoredData[1]_i_42__0_n_0 ),
        .O(\rStoredData_reg[1]_i_16__0_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF7 \rStoredData_reg[1]_i_17__0 
       (.I0(\rStoredData[1]_i_43__0_n_0 ),
        .I1(\rStoredData[1]_i_44__0_n_0 ),
        .O(\rStoredData_reg[1]_i_17__0_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF7 \rStoredData_reg[1]_i_18__0 
       (.I0(\rStoredData[1]_i_45_n_0 ),
        .I1(\rStoredData[1]_i_46_n_0 ),
        .O(\rStoredData_reg[1]_i_18__0_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF8 \rStoredData_reg[1]_i_19__0 
       (.I0(\rStoredData_reg[1]_i_47__0_n_0 ),
        .I1(\rStoredData_reg[1]_i_48__0_n_0 ),
        .O(\rStoredData_reg[1]_i_19__0_n_0 ),
        .S(s_axis_video_tdata[8]));
  MUXF8 \rStoredData_reg[1]_i_20__0 
       (.I0(\rStoredData_reg[1]_i_49__0_n_0 ),
        .I1(\rStoredData_reg[1]_i_50__0_n_0 ),
        .O(\rStoredData_reg[1]_i_20__0_n_0 ),
        .S(s_axis_video_tdata[8]));
  MUXF8 \rStoredData_reg[1]_i_21__0 
       (.I0(\rStoredData_reg[1]_i_51__0_n_0 ),
        .I1(\rStoredData_reg[1]_i_52__0_n_0 ),
        .O(\rStoredData_reg[1]_i_21__0_n_0 ),
        .S(s_axis_video_tdata[8]));
  MUXF8 \rStoredData_reg[1]_i_22__0 
       (.I0(\rStoredData_reg[1]_i_53__0_n_0 ),
        .I1(\rStoredData_reg[1]_i_54__0_n_0 ),
        .O(\rStoredData_reg[1]_i_22__0_n_0 ),
        .S(s_axis_video_tdata[8]));
  MUXF8 \rStoredData_reg[1]_i_23__0 
       (.I0(\rStoredData_reg[1]_i_55__0_n_0 ),
        .I1(\rStoredData_reg[1]_i_56__0_n_0 ),
        .O(\rStoredData_reg[1]_i_23__0_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF8 \rStoredData_reg[1]_i_24__0 
       (.I0(\rStoredData_reg[1]_i_57__0_n_0 ),
        .I1(\rStoredData_reg[1]_i_58__0_n_0 ),
        .O(\rStoredData_reg[1]_i_24__0_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF8 \rStoredData_reg[1]_i_25__0 
       (.I0(\rStoredData_reg[1]_i_59__0_n_0 ),
        .I1(\rStoredData_reg[1]_i_60__0_n_0 ),
        .O(\rStoredData_reg[1]_i_25__0_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF8 \rStoredData_reg[1]_i_26__0 
       (.I0(\rStoredData_reg[1]_i_61__0_n_0 ),
        .I1(\rStoredData_reg[1]_i_62__0_n_0 ),
        .O(\rStoredData_reg[1]_i_26__0_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF8 \rStoredData_reg[1]_i_27__0 
       (.I0(\rStoredData_reg[1]_i_63__0_n_0 ),
        .I1(\rStoredData_reg[1]_i_64__0_n_0 ),
        .O(\rStoredData_reg[1]_i_27__0_n_0 ),
        .S(s_axis_video_tdata[7]));
  MUXF8 \rStoredData_reg[1]_i_28__0 
       (.I0(\rStoredData_reg[1]_i_65__0_n_0 ),
        .I1(\rStoredData_reg[1]_i_66__0_n_0 ),
        .O(\rStoredData_reg[1]_i_28__0_n_0 ),
        .S(s_axis_video_tdata[7]));
  MUXF8 \rStoredData_reg[1]_i_29__0 
       (.I0(\rStoredData_reg[1]_i_67__0_n_0 ),
        .I1(\rStoredData_reg[1]_i_68__0_n_0 ),
        .O(\rStoredData_reg[1]_i_29__0_n_0 ),
        .S(s_axis_video_tdata[7]));
  MUXF8 \rStoredData_reg[1]_i_30__0 
       (.I0(\rStoredData_reg[1]_i_69_n_0 ),
        .I1(\rStoredData_reg[1]_i_70_n_0 ),
        .O(\rStoredData_reg[1]_i_30__0_n_0 ),
        .S(s_axis_video_tdata[7]));
  MUXF8 \rStoredData_reg[1]_i_4 
       (.I0(\rStoredData_reg[1]_i_11_n_0 ),
        .I1(\rStoredData_reg[1]_i_12_n_0 ),
        .O(\rStoredData_reg[1]_i_4_n_0 ),
        .S(s_axis_video_tdata[7]));
  MUXF7 \rStoredData_reg[1]_i_47__0 
       (.I0(\rStoredData[1]_i_71__0_n_0 ),
        .I1(\rStoredData[1]_i_72__0_n_0 ),
        .O(\rStoredData_reg[1]_i_47__0_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF7 \rStoredData_reg[1]_i_48__0 
       (.I0(\rStoredData[1]_i_73__0_n_0 ),
        .I1(\rStoredData[1]_i_74__0_n_0 ),
        .O(\rStoredData_reg[1]_i_48__0_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF7 \rStoredData_reg[1]_i_49__0 
       (.I0(\rStoredData[1]_i_75__0_n_0 ),
        .I1(\rStoredData[1]_i_76__0_n_0 ),
        .O(\rStoredData_reg[1]_i_49__0_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF7 \rStoredData_reg[1]_i_50__0 
       (.I0(\rStoredData[1]_i_77__0_n_0 ),
        .I1(\rStoredData[1]_i_78__0_n_0 ),
        .O(\rStoredData_reg[1]_i_50__0_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF7 \rStoredData_reg[1]_i_51__0 
       (.I0(\rStoredData[1]_i_79__0_n_0 ),
        .I1(\rStoredData[1]_i_80__0_n_0 ),
        .O(\rStoredData_reg[1]_i_51__0_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF7 \rStoredData_reg[1]_i_52__0 
       (.I0(\rStoredData[1]_i_81__0_n_0 ),
        .I1(\rStoredData[1]_i_82__0_n_0 ),
        .O(\rStoredData_reg[1]_i_52__0_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF7 \rStoredData_reg[1]_i_53__0 
       (.I0(\rStoredData[1]_i_83__0_n_0 ),
        .I1(\rStoredData[1]_i_84__0_n_0 ),
        .O(\rStoredData_reg[1]_i_53__0_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF7 \rStoredData_reg[1]_i_54__0 
       (.I0(\rStoredData[1]_i_85__0_n_0 ),
        .I1(\rStoredData[1]_i_86__0_n_0 ),
        .O(\rStoredData_reg[1]_i_54__0_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF7 \rStoredData_reg[1]_i_55__0 
       (.I0(\rStoredData[1]_i_87__0_n_0 ),
        .I1(\rStoredData[1]_i_88__0_n_0 ),
        .O(\rStoredData_reg[1]_i_55__0_n_0 ),
        .S(s_axis_video_tdata[9]));
  MUXF7 \rStoredData_reg[1]_i_56__0 
       (.I0(\rStoredData[1]_i_89__0_n_0 ),
        .I1(\rStoredData[1]_i_90__0_n_0 ),
        .O(\rStoredData_reg[1]_i_56__0_n_0 ),
        .S(s_axis_video_tdata[9]));
  MUXF7 \rStoredData_reg[1]_i_57__0 
       (.I0(\rStoredData[1]_i_91__0_n_0 ),
        .I1(\rStoredData[1]_i_92__0_n_0 ),
        .O(\rStoredData_reg[1]_i_57__0_n_0 ),
        .S(s_axis_video_tdata[9]));
  MUXF7 \rStoredData_reg[1]_i_58__0 
       (.I0(\rStoredData[1]_i_93__0_n_0 ),
        .I1(\rStoredData[1]_i_94__0_n_0 ),
        .O(\rStoredData_reg[1]_i_58__0_n_0 ),
        .S(s_axis_video_tdata[9]));
  MUXF7 \rStoredData_reg[1]_i_59__0 
       (.I0(\rStoredData[1]_i_95__0_n_0 ),
        .I1(\rStoredData[1]_i_96__0_n_0 ),
        .O(\rStoredData_reg[1]_i_59__0_n_0 ),
        .S(s_axis_video_tdata[9]));
  MUXF8 \rStoredData_reg[1]_i_5__0 
       (.I0(\rStoredData_reg[1]_i_13_n_0 ),
        .I1(\rStoredData_reg[1]_i_14_n_0 ),
        .O(\rStoredData_reg[1]_i_5__0_n_0 ),
        .S(s_axis_video_tdata[7]));
  MUXF7 \rStoredData_reg[1]_i_60__0 
       (.I0(\rStoredData[1]_i_97__0_n_0 ),
        .I1(\rStoredData[1]_i_98__0_n_0 ),
        .O(\rStoredData_reg[1]_i_60__0_n_0 ),
        .S(s_axis_video_tdata[9]));
  MUXF7 \rStoredData_reg[1]_i_61__0 
       (.I0(\rStoredData[1]_i_99__0_n_0 ),
        .I1(\rStoredData[1]_i_100__0_n_0 ),
        .O(\rStoredData_reg[1]_i_61__0_n_0 ),
        .S(s_axis_video_tdata[9]));
  MUXF7 \rStoredData_reg[1]_i_62__0 
       (.I0(\rStoredData[1]_i_101__0_n_0 ),
        .I1(\rStoredData[1]_i_102__0_n_0 ),
        .O(\rStoredData_reg[1]_i_62__0_n_0 ),
        .S(s_axis_video_tdata[9]));
  MUXF7 \rStoredData_reg[1]_i_63__0 
       (.I0(\rStoredData[1]_i_103__0_n_0 ),
        .I1(\rStoredData[1]_i_104__0_n_0 ),
        .O(\rStoredData_reg[1]_i_63__0_n_0 ),
        .S(s_axis_video_tdata[5]));
  MUXF7 \rStoredData_reg[1]_i_64__0 
       (.I0(\rStoredData[1]_i_105__0_n_0 ),
        .I1(\rStoredData[1]_i_106__0_n_0 ),
        .O(\rStoredData_reg[1]_i_64__0_n_0 ),
        .S(s_axis_video_tdata[5]));
  MUXF7 \rStoredData_reg[1]_i_65__0 
       (.I0(\rStoredData[1]_i_107__0_n_0 ),
        .I1(\rStoredData[1]_i_108__0_n_0 ),
        .O(\rStoredData_reg[1]_i_65__0_n_0 ),
        .S(s_axis_video_tdata[5]));
  MUXF7 \rStoredData_reg[1]_i_66__0 
       (.I0(\rStoredData[1]_i_109__0_n_0 ),
        .I1(\rStoredData[1]_i_110__0_n_0 ),
        .O(\rStoredData_reg[1]_i_66__0_n_0 ),
        .S(s_axis_video_tdata[5]));
  MUXF7 \rStoredData_reg[1]_i_67__0 
       (.I0(\rStoredData[1]_i_111__0_n_0 ),
        .I1(\rStoredData[1]_i_112__0_n_0 ),
        .O(\rStoredData_reg[1]_i_67__0_n_0 ),
        .S(s_axis_video_tdata[5]));
  MUXF7 \rStoredData_reg[1]_i_68__0 
       (.I0(\rStoredData[1]_i_113__0_n_0 ),
        .I1(\rStoredData[1]_i_114__0_n_0 ),
        .O(\rStoredData_reg[1]_i_68__0_n_0 ),
        .S(s_axis_video_tdata[5]));
  MUXF7 \rStoredData_reg[1]_i_69 
       (.I0(\rStoredData[1]_i_115__0_n_0 ),
        .I1(\rStoredData[1]_i_116__0_n_0 ),
        .O(\rStoredData_reg[1]_i_69_n_0 ),
        .S(s_axis_video_tdata[5]));
  MUXF8 \rStoredData_reg[1]_i_6__0 
       (.I0(\rStoredData_reg[1]_i_15__0_n_0 ),
        .I1(\rStoredData_reg[1]_i_16__0_n_0 ),
        .O(\rStoredData_reg[1]_i_6__0_n_0 ),
        .S(s_axis_video_tdata[7]));
  MUXF7 \rStoredData_reg[1]_i_70 
       (.I0(\rStoredData[1]_i_117_n_0 ),
        .I1(\rStoredData[1]_i_118_n_0 ),
        .O(\rStoredData_reg[1]_i_70_n_0 ),
        .S(s_axis_video_tdata[5]));
  MUXF8 \rStoredData_reg[1]_i_7__0 
       (.I0(\rStoredData_reg[1]_i_17__0_n_0 ),
        .I1(\rStoredData_reg[1]_i_18__0_n_0 ),
        .O(\rStoredData_reg[1]_i_7__0_n_0 ),
        .S(s_axis_video_tdata[7]));
  FDRE \rStoredData_reg[2] 
       (.C(StreamClk),
        .CE(E),
        .D(\rStoredData[2]_i_1__0_n_0 ),
        .Q(m_axis_video_tdata[2]),
        .R(1'b0));
  MUXF7 \rStoredData_reg[2]_i_18__0 
       (.I0(\rStoredData[2]_i_44_n_0 ),
        .I1(\rStoredData[2]_i_45__0_n_0 ),
        .O(\rStoredData_reg[2]_i_18__0_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF7 \rStoredData_reg[2]_i_19 
       (.I0(\rStoredData[2]_i_46_n_0 ),
        .I1(\rStoredData[2]_i_47_n_0 ),
        .O(\rStoredData_reg[2]_i_19_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF7 \rStoredData_reg[2]_i_20 
       (.I0(\rStoredData[2]_i_48_n_0 ),
        .I1(\rStoredData[2]_i_49_n_0 ),
        .O(\rStoredData_reg[2]_i_20_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF7 \rStoredData_reg[2]_i_21__0 
       (.I0(\rStoredData[2]_i_50_n_0 ),
        .I1(\rStoredData[2]_i_51_n_0 ),
        .O(\rStoredData_reg[2]_i_21__0_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF7 \rStoredData_reg[2]_i_22__0 
       (.I0(\rStoredData[2]_i_52_n_0 ),
        .I1(\rStoredData[2]_i_53__0_n_0 ),
        .O(\rStoredData_reg[2]_i_22__0_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF7 \rStoredData_reg[2]_i_23 
       (.I0(\rStoredData[2]_i_54__0_n_0 ),
        .I1(\rStoredData[2]_i_55__0_n_0 ),
        .O(\rStoredData_reg[2]_i_23_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF7 \rStoredData_reg[2]_i_25__0 
       (.I0(\rStoredData[2]_i_56_n_0 ),
        .I1(\rStoredData[2]_i_57_n_0 ),
        .O(\rStoredData_reg[2]_i_25__0_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF7 \rStoredData_reg[2]_i_26__0 
       (.I0(\rStoredData[2]_i_58_n_0 ),
        .I1(\rStoredData[2]_i_59_n_0 ),
        .O(\rStoredData_reg[2]_i_26__0_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF7 \rStoredData_reg[2]_i_27__0 
       (.I0(\rStoredData[2]_i_60_n_0 ),
        .I1(\rStoredData[2]_i_61_n_0 ),
        .O(\rStoredData_reg[2]_i_27__0_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF7 \rStoredData_reg[2]_i_28__0 
       (.I0(\rStoredData[2]_i_62_n_0 ),
        .I1(\rStoredData[2]_i_63_n_0 ),
        .O(\rStoredData_reg[2]_i_28__0_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF7 \rStoredData_reg[2]_i_29 
       (.I0(\rStoredData[2]_i_64_n_0 ),
        .I1(\rStoredData[2]_i_65_n_0 ),
        .O(\rStoredData_reg[2]_i_29_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF7 \rStoredData_reg[2]_i_30 
       (.I0(\rStoredData[2]_i_66__0_n_0 ),
        .I1(\rStoredData[2]_i_67__0_n_0 ),
        .O(\rStoredData_reg[2]_i_30_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF7 \rStoredData_reg[2]_i_31 
       (.I0(\rStoredData[2]_i_68__0_n_0 ),
        .I1(\rStoredData[2]_i_69__0_n_0 ),
        .O(\rStoredData_reg[2]_i_31_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF8 \rStoredData_reg[2]_i_32 
       (.I0(\rStoredData_reg[2]_i_70_n_0 ),
        .I1(\rStoredData_reg[2]_i_71_n_0 ),
        .O(\rStoredData_reg[2]_i_32_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF8 \rStoredData_reg[2]_i_33 
       (.I0(\rStoredData_reg[2]_i_72_n_0 ),
        .I1(\rStoredData_reg[2]_i_73_n_0 ),
        .O(\rStoredData_reg[2]_i_33_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF8 \rStoredData_reg[2]_i_34 
       (.I0(\rStoredData_reg[2]_i_74_n_0 ),
        .I1(\rStoredData_reg[2]_i_75_n_0 ),
        .O(\rStoredData_reg[2]_i_34_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF8 \rStoredData_reg[2]_i_35 
       (.I0(\rStoredData_reg[2]_i_76_n_0 ),
        .I1(\rStoredData_reg[2]_i_77_n_0 ),
        .O(\rStoredData_reg[2]_i_35_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF7 \rStoredData_reg[2]_i_36 
       (.I0(\rStoredData[2]_i_78__0_n_0 ),
        .I1(\rStoredData[2]_i_79__0_n_0 ),
        .O(\rStoredData_reg[2]_i_36_n_0 ),
        .S(s_axis_video_tdata[5]));
  MUXF7 \rStoredData_reg[2]_i_37 
       (.I0(\rStoredData[2]_i_80__0_n_0 ),
        .I1(\rStoredData[2]_i_81__0_n_0 ),
        .O(\rStoredData_reg[2]_i_37_n_0 ),
        .S(s_axis_video_tdata[5]));
  MUXF7 \rStoredData_reg[2]_i_38 
       (.I0(\rStoredData[2]_i_82__0_n_0 ),
        .I1(\rStoredData[2]_i_83__0_n_0 ),
        .O(\rStoredData_reg[2]_i_38_n_0 ),
        .S(s_axis_video_tdata[5]));
  MUXF7 \rStoredData_reg[2]_i_39 
       (.I0(\rStoredData[2]_i_84__0_n_0 ),
        .I1(\rStoredData[2]_i_85__0_n_0 ),
        .O(\rStoredData_reg[2]_i_39_n_0 ),
        .S(s_axis_video_tdata[5]));
  MUXF7 \rStoredData_reg[2]_i_42__0 
       (.I0(\rStoredData[2]_i_88__0_n_0 ),
        .I1(\rStoredData[2]_i_89__0_n_0 ),
        .O(\rStoredData_reg[2]_i_42__0_n_0 ),
        .S(s_axis_video_tdata[5]));
  MUXF7 \rStoredData_reg[2]_i_43__0 
       (.I0(\rStoredData[2]_i_90__0_n_0 ),
        .I1(\rStoredData[2]_i_91__0_n_0 ),
        .O(\rStoredData_reg[2]_i_43__0_n_0 ),
        .S(s_axis_video_tdata[5]));
  MUXF8 \rStoredData_reg[2]_i_6__0 
       (.I0(\rStoredData_reg[2]_i_18__0_n_0 ),
        .I1(\rStoredData_reg[2]_i_19_n_0 ),
        .O(\rStoredData_reg[2]_i_6__0_n_0 ),
        .S(s_axis_video_tdata[7]));
  MUXF7 \rStoredData_reg[2]_i_70 
       (.I0(\rStoredData[2]_i_92__0_n_0 ),
        .I1(\rStoredData[2]_i_93__0_n_0 ),
        .O(\rStoredData_reg[2]_i_70_n_0 ),
        .S(s_axis_video_tdata[9]));
  MUXF7 \rStoredData_reg[2]_i_71 
       (.I0(\rStoredData[2]_i_94__0_n_0 ),
        .I1(\rStoredData[2]_i_95__0_n_0 ),
        .O(\rStoredData_reg[2]_i_71_n_0 ),
        .S(s_axis_video_tdata[9]));
  MUXF7 \rStoredData_reg[2]_i_72 
       (.I0(\rStoredData[2]_i_96__0_n_0 ),
        .I1(\rStoredData[2]_i_97__0_n_0 ),
        .O(\rStoredData_reg[2]_i_72_n_0 ),
        .S(s_axis_video_tdata[9]));
  MUXF7 \rStoredData_reg[2]_i_73 
       (.I0(\rStoredData[2]_i_98__0_n_0 ),
        .I1(\rStoredData[2]_i_99__0_n_0 ),
        .O(\rStoredData_reg[2]_i_73_n_0 ),
        .S(s_axis_video_tdata[9]));
  MUXF7 \rStoredData_reg[2]_i_74 
       (.I0(\rStoredData[2]_i_100__0_n_0 ),
        .I1(\rStoredData[2]_i_101__0_n_0 ),
        .O(\rStoredData_reg[2]_i_74_n_0 ),
        .S(s_axis_video_tdata[9]));
  MUXF7 \rStoredData_reg[2]_i_75 
       (.I0(\rStoredData[2]_i_102__0_n_0 ),
        .I1(\rStoredData[2]_i_103__0_n_0 ),
        .O(\rStoredData_reg[2]_i_75_n_0 ),
        .S(s_axis_video_tdata[9]));
  MUXF7 \rStoredData_reg[2]_i_76 
       (.I0(\rStoredData[2]_i_104__0_n_0 ),
        .I1(\rStoredData[2]_i_105__0_n_0 ),
        .O(\rStoredData_reg[2]_i_76_n_0 ),
        .S(s_axis_video_tdata[9]));
  MUXF7 \rStoredData_reg[2]_i_77 
       (.I0(\rStoredData[2]_i_106__0_n_0 ),
        .I1(\rStoredData[2]_i_107__0_n_0 ),
        .O(\rStoredData_reg[2]_i_77_n_0 ),
        .S(s_axis_video_tdata[9]));
  MUXF8 \rStoredData_reg[2]_i_7__0 
       (.I0(\rStoredData_reg[2]_i_20_n_0 ),
        .I1(\rStoredData_reg[2]_i_21__0_n_0 ),
        .O(\rStoredData_reg[2]_i_7__0_n_0 ),
        .S(s_axis_video_tdata[7]));
  MUXF8 \rStoredData_reg[2]_i_8__0 
       (.I0(\rStoredData_reg[2]_i_22__0_n_0 ),
        .I1(\rStoredData_reg[2]_i_23_n_0 ),
        .O(\rStoredData_reg[2]_i_8__0_n_0 ),
        .S(s_axis_video_tdata[7]));
  FDRE \rStoredData_reg[3] 
       (.C(StreamClk),
        .CE(E),
        .D(\rStoredData[3]_i_1__0_n_0 ),
        .Q(m_axis_video_tdata[3]),
        .R(1'b0));
  MUXF7 \rStoredData_reg[3]_i_21__0 
       (.I0(\rStoredData[3]_i_48_n_0 ),
        .I1(\rStoredData[3]_i_49_n_0 ),
        .O(\rStoredData_reg[3]_i_21__0_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF7 \rStoredData_reg[3]_i_22__0 
       (.I0(\rStoredData[3]_i_50__0_n_0 ),
        .I1(\rStoredData[3]_i_51_n_0 ),
        .O(\rStoredData_reg[3]_i_22__0_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF7 \rStoredData_reg[3]_i_25 
       (.I0(\rStoredData[3]_i_52_n_0 ),
        .I1(\rStoredData[3]_i_53_n_0 ),
        .O(\rStoredData_reg[3]_i_25_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF7 \rStoredData_reg[3]_i_26__0 
       (.I0(\rStoredData[3]_i_54_n_0 ),
        .I1(\rStoredData[3]_i_55__0_n_0 ),
        .O(\rStoredData_reg[3]_i_26__0_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF7 \rStoredData_reg[3]_i_30 
       (.I0(\rStoredData[3]_i_59__0_n_0 ),
        .I1(\rStoredData[3]_i_60__0_n_0 ),
        .O(\rStoredData_reg[3]_i_30_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF8 \rStoredData_reg[3]_i_32__0 
       (.I0(\rStoredData_reg[3]_i_63_n_0 ),
        .I1(\rStoredData_reg[3]_i_64_n_0 ),
        .O(\rStoredData_reg[3]_i_32__0_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF8 \rStoredData_reg[3]_i_33__0 
       (.I0(\rStoredData_reg[3]_i_65_n_0 ),
        .I1(\rStoredData_reg[3]_i_66_n_0 ),
        .O(\rStoredData_reg[3]_i_33__0_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF8 \rStoredData_reg[3]_i_34 
       (.I0(\rStoredData_reg[3]_i_67_n_0 ),
        .I1(\rStoredData_reg[3]_i_68_n_0 ),
        .O(\rStoredData_reg[3]_i_34_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF7 \rStoredData_reg[3]_i_35 
       (.I0(\rStoredData[3]_i_69__0_n_0 ),
        .I1(\rStoredData[3]_i_70__0_n_0 ),
        .O(\rStoredData_reg[3]_i_35_n_0 ),
        .S(s_axis_video_tdata[5]));
  MUXF7 \rStoredData_reg[3]_i_36 
       (.I0(\rStoredData[3]_i_71__0_n_0 ),
        .I1(\rStoredData[3]_i_72__0_n_0 ),
        .O(\rStoredData_reg[3]_i_36_n_0 ),
        .S(s_axis_video_tdata[5]));
  MUXF7 \rStoredData_reg[3]_i_37 
       (.I0(\rStoredData[3]_i_73_n_0 ),
        .I1(\rStoredData[3]_i_74__0_n_0 ),
        .O(\rStoredData_reg[3]_i_37_n_0 ),
        .S(s_axis_video_tdata[5]));
  MUXF7 \rStoredData_reg[3]_i_38 
       (.I0(\rStoredData[3]_i_75__0_n_0 ),
        .I1(\rStoredData[3]_i_76__0_n_0 ),
        .O(\rStoredData_reg[3]_i_38_n_0 ),
        .S(s_axis_video_tdata[5]));
  MUXF7 \rStoredData_reg[3]_i_41 
       (.I0(\rStoredData[3]_i_78__0_n_0 ),
        .I1(\rStoredData[3]_i_79__0_n_0 ),
        .O(\rStoredData_reg[3]_i_41_n_0 ),
        .S(s_axis_video_tdata[5]));
  MUXF7 \rStoredData_reg[3]_i_42 
       (.I0(\rStoredData[3]_i_80__0_n_0 ),
        .I1(\rStoredData[3]_i_81__0_n_0 ),
        .O(\rStoredData_reg[3]_i_42_n_0 ),
        .S(s_axis_video_tdata[5]));
  MUXF7 \rStoredData_reg[3]_i_63 
       (.I0(\rStoredData[3]_i_82__0_n_0 ),
        .I1(\rStoredData[3]_i_83__0_n_0 ),
        .O(\rStoredData_reg[3]_i_63_n_0 ),
        .S(s_axis_video_tdata[9]));
  MUXF7 \rStoredData_reg[3]_i_64 
       (.I0(\rStoredData[3]_i_84__0_n_0 ),
        .I1(\rStoredData[3]_i_85__0_n_0 ),
        .O(\rStoredData_reg[3]_i_64_n_0 ),
        .S(s_axis_video_tdata[9]));
  MUXF7 \rStoredData_reg[3]_i_65 
       (.I0(\rStoredData[3]_i_86__0_n_0 ),
        .I1(\rStoredData[3]_i_87__0_n_0 ),
        .O(\rStoredData_reg[3]_i_65_n_0 ),
        .S(s_axis_video_tdata[9]));
  MUXF7 \rStoredData_reg[3]_i_66 
       (.I0(\rStoredData[2]_i_16__0_n_0 ),
        .I1(\rStoredData[3]_i_88__0_n_0 ),
        .O(\rStoredData_reg[3]_i_66_n_0 ),
        .S(s_axis_video_tdata[9]));
  MUXF7 \rStoredData_reg[3]_i_67 
       (.I0(\rStoredData[3]_i_89__0_n_0 ),
        .I1(\rStoredData[3]_i_90_n_0 ),
        .O(\rStoredData_reg[3]_i_67_n_0 ),
        .S(s_axis_video_tdata[9]));
  MUXF7 \rStoredData_reg[3]_i_68 
       (.I0(\rStoredData[3]_i_91_n_0 ),
        .I1(\rStoredData[3]_i_92_n_0 ),
        .O(\rStoredData_reg[3]_i_68_n_0 ),
        .S(s_axis_video_tdata[9]));
  MUXF7 \rStoredData_reg[3]_i_7 
       (.I0(\rStoredData[3]_i_19_n_0 ),
        .I1(\rStoredData[3]_i_20__0_n_0 ),
        .O(\rStoredData_reg[3]_i_7_n_0 ),
        .S(s_axis_video_tdata[7]));
  MUXF8 \rStoredData_reg[3]_i_8 
       (.I0(\rStoredData_reg[3]_i_21__0_n_0 ),
        .I1(\rStoredData_reg[3]_i_22__0_n_0 ),
        .O(\rStoredData_reg[3]_i_8_n_0 ),
        .S(s_axis_video_tdata[7]));
  FDRE \rStoredData_reg[4] 
       (.C(StreamClk),
        .CE(E),
        .D(\rStoredData[4]_i_1__0_n_0 ),
        .Q(m_axis_video_tdata[4]),
        .R(1'b0));
  MUXF8 \rStoredData_reg[4]_i_10__0 
       (.I0(\rStoredData_reg[4]_i_21__0_n_0 ),
        .I1(\rStoredData_reg[4]_i_22__0_n_0 ),
        .O(\rStoredData_reg[4]_i_10__0_n_0 ),
        .S(s_axis_video_tdata[7]));
  MUXF8 \rStoredData_reg[4]_i_11__0 
       (.I0(\rStoredData_reg[4]_i_23__0_n_0 ),
        .I1(\rStoredData_reg[4]_i_24__0_n_0 ),
        .O(\rStoredData_reg[4]_i_11__0_n_0 ),
        .S(s_axis_video_tdata[9]));
  MUXF7 \rStoredData_reg[4]_i_16__0 
       (.I0(\rStoredData[4]_i_26__0_n_0 ),
        .I1(\rStoredData[4]_i_27__0_n_0 ),
        .O(\rStoredData_reg[4]_i_16__0_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF7 \rStoredData_reg[4]_i_19__0 
       (.I0(\rStoredData[4]_i_28__0_n_0 ),
        .I1(\rStoredData[4]_i_29__0_n_0 ),
        .O(\rStoredData_reg[4]_i_19__0_n_0 ),
        .S(s_axis_video_tdata[9]));
  MUXF7 \rStoredData_reg[4]_i_20__0 
       (.I0(\rStoredData[4]_i_30__0_n_0 ),
        .I1(\rStoredData[4]_i_31__0_n_0 ),
        .O(\rStoredData_reg[4]_i_20__0_n_0 ),
        .S(s_axis_video_tdata[9]));
  MUXF7 \rStoredData_reg[4]_i_21__0 
       (.I0(\rStoredData[4]_i_32__0_n_0 ),
        .I1(\rStoredData[4]_i_33__0_n_0 ),
        .O(\rStoredData_reg[4]_i_21__0_n_0 ),
        .S(s_axis_video_tdata[8]));
  MUXF7 \rStoredData_reg[4]_i_22__0 
       (.I0(\rStoredData[4]_i_34__0_n_0 ),
        .I1(\rStoredData[4]_i_35__0_n_0 ),
        .O(\rStoredData_reg[4]_i_22__0_n_0 ),
        .S(s_axis_video_tdata[8]));
  MUXF7 \rStoredData_reg[4]_i_23__0 
       (.I0(\rStoredData[4]_i_36__0_n_0 ),
        .I1(\rStoredData[4]_i_37__0_n_0 ),
        .O(\rStoredData_reg[4]_i_23__0_n_0 ),
        .S(s_axis_video_tdata[8]));
  MUXF7 \rStoredData_reg[4]_i_24__0 
       (.I0(\rStoredData[4]_i_38__0_n_0 ),
        .I1(\rStoredData[4]_i_39__0_n_0 ),
        .O(\rStoredData_reg[4]_i_24__0_n_0 ),
        .S(s_axis_video_tdata[8]));
  MUXF7 \rStoredData_reg[4]_i_2__0 
       (.I0(\rStoredData[4]_i_5__0_n_0 ),
        .I1(\rStoredData[4]_i_6__0_n_0 ),
        .O(\rStoredData_reg[4]_i_2__0_n_0 ),
        .S(s_axis_video_tdata[9]));
  MUXF7 \rStoredData_reg[4]_i_3__0 
       (.I0(\rStoredData[4]_i_7__0_n_0 ),
        .I1(\rStoredData[4]_i_8__0_n_0 ),
        .O(\rStoredData_reg[4]_i_3__0_n_0 ),
        .S(s_axis_video_tdata[9]));
  MUXF8 \rStoredData_reg[4]_i_9__0 
       (.I0(\rStoredData_reg[4]_i_19__0_n_0 ),
        .I1(\rStoredData_reg[4]_i_20__0_n_0 ),
        .O(\rStoredData_reg[4]_i_9__0_n_0 ),
        .S(s_axis_video_tdata[7]));
  FDRE \rStoredData_reg[5] 
       (.C(StreamClk),
        .CE(E),
        .D(\rStoredData[5]_i_1__0_n_0 ),
        .Q(m_axis_video_tdata[5]),
        .R(1'b0));
  MUXF7 \rStoredData_reg[5]_i_11__0 
       (.I0(\rStoredData[5]_i_24__0_n_0 ),
        .I1(\rStoredData[5]_i_25__0_n_0 ),
        .O(\rStoredData_reg[5]_i_11__0_n_0 ),
        .S(s_axis_video_tdata[8]));
  MUXF7 \rStoredData_reg[5]_i_13__0 
       (.I0(\rStoredData[5]_i_28__0_n_0 ),
        .I1(\rStoredData[5]_i_29__0_n_0 ),
        .O(\rStoredData_reg[5]_i_13__0_n_0 ),
        .S(s_axis_video_tdata[8]));
  MUXF7 \rStoredData_reg[5]_i_9 
       (.I0(\rStoredData[5]_i_20__0_n_0 ),
        .I1(\rStoredData[5]_i_21__0_n_0 ),
        .O(\rStoredData_reg[5]_i_9_n_0 ),
        .S(s_axis_video_tdata[9]));
  FDRE \rStoredData_reg[6] 
       (.C(StreamClk),
        .CE(E),
        .D(\rStoredData[6]_i_1__0_n_0 ),
        .Q(m_axis_video_tdata[6]),
        .R(1'b0));
  MUXF7 \rStoredData_reg[6]_i_10 
       (.I0(\rStoredData[6]_i_15__0_n_0 ),
        .I1(\rStoredData[6]_i_16__0_n_0 ),
        .O(\rStoredData_reg[6]_i_10_n_0 ),
        .S(s_axis_video_tdata[9]));
  FDRE \rStoredData_reg[7] 
       (.C(StreamClk),
        .CE(E),
        .D(\rStoredData[7]_i_1__1_n_0 ),
        .Q(m_axis_video_tdata[7]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "StoredGammaCoefs" *) 
module system_AXI_GammaCorrection_0_0_StoredGammaCoefs_1
   (E,
    m_axis_video_tdata,
    s_axis_video_tdata,
    s_axis_video_tvalid,
    m_axis_video_tready,
    sGammaReg,
    StreamClk);
  output [0:0]E;
  output [7:0]m_axis_video_tdata;
  input [9:0]s_axis_video_tdata;
  input s_axis_video_tvalid;
  input m_axis_video_tready;
  input [2:0]sGammaReg;
  input StreamClk;

  wire [0:0]E;
  wire StreamClk;
  wire [7:0]m_axis_video_tdata;
  wire m_axis_video_tready;
  wire \rStoredData[0]_i_100__1_n_0 ;
  wire \rStoredData[0]_i_101__1_n_0 ;
  wire \rStoredData[0]_i_102__1_n_0 ;
  wire \rStoredData[0]_i_103__1_n_0 ;
  wire \rStoredData[0]_i_104__1_n_0 ;
  wire \rStoredData[0]_i_105__1_n_0 ;
  wire \rStoredData[0]_i_106__1_n_0 ;
  wire \rStoredData[0]_i_107__1_n_0 ;
  wire \rStoredData[0]_i_108__1_n_0 ;
  wire \rStoredData[0]_i_109__1_n_0 ;
  wire \rStoredData[0]_i_10__1_n_0 ;
  wire \rStoredData[0]_i_110__1_n_0 ;
  wire \rStoredData[0]_i_111__1_n_0 ;
  wire \rStoredData[0]_i_112__1_n_0 ;
  wire \rStoredData[0]_i_113__1_n_0 ;
  wire \rStoredData[0]_i_114__1_n_0 ;
  wire \rStoredData[0]_i_115__1_n_0 ;
  wire \rStoredData[0]_i_116__1_n_0 ;
  wire \rStoredData[0]_i_117__1_n_0 ;
  wire \rStoredData[0]_i_118__1_n_0 ;
  wire \rStoredData[0]_i_1__1_n_0 ;
  wire \rStoredData[0]_i_2__1_n_0 ;
  wire \rStoredData[0]_i_31__1_n_0 ;
  wire \rStoredData[0]_i_32__1_n_0 ;
  wire \rStoredData[0]_i_33__1_n_0 ;
  wire \rStoredData[0]_i_34__1_n_0 ;
  wire \rStoredData[0]_i_35__1_n_0 ;
  wire \rStoredData[0]_i_36__1_n_0 ;
  wire \rStoredData[0]_i_37__1_n_0 ;
  wire \rStoredData[0]_i_38__1_n_0 ;
  wire \rStoredData[0]_i_39__1_n_0 ;
  wire \rStoredData[0]_i_3__1_n_0 ;
  wire \rStoredData[0]_i_40__1_n_0 ;
  wire \rStoredData[0]_i_41__1_n_0 ;
  wire \rStoredData[0]_i_42__1_n_0 ;
  wire \rStoredData[0]_i_43__1_n_0 ;
  wire \rStoredData[0]_i_44__1_n_0 ;
  wire \rStoredData[0]_i_45__1_n_0 ;
  wire \rStoredData[0]_i_46__1_n_0 ;
  wire \rStoredData[0]_i_71__1_n_0 ;
  wire \rStoredData[0]_i_72__1_n_0 ;
  wire \rStoredData[0]_i_73__1_n_0 ;
  wire \rStoredData[0]_i_74__1_n_0 ;
  wire \rStoredData[0]_i_75__1_n_0 ;
  wire \rStoredData[0]_i_76__1_n_0 ;
  wire \rStoredData[0]_i_77__1_n_0 ;
  wire \rStoredData[0]_i_78__1_n_0 ;
  wire \rStoredData[0]_i_79__1_n_0 ;
  wire \rStoredData[0]_i_80__1_n_0 ;
  wire \rStoredData[0]_i_81__1_n_0 ;
  wire \rStoredData[0]_i_82__1_n_0 ;
  wire \rStoredData[0]_i_83__1_n_0 ;
  wire \rStoredData[0]_i_84__1_n_0 ;
  wire \rStoredData[0]_i_85__1_n_0 ;
  wire \rStoredData[0]_i_86__1_n_0 ;
  wire \rStoredData[0]_i_87__1_n_0 ;
  wire \rStoredData[0]_i_88__1_n_0 ;
  wire \rStoredData[0]_i_89__1_n_0 ;
  wire \rStoredData[0]_i_8__1_n_0 ;
  wire \rStoredData[0]_i_90__1_n_0 ;
  wire \rStoredData[0]_i_91__1_n_0 ;
  wire \rStoredData[0]_i_92__1_n_0 ;
  wire \rStoredData[0]_i_93__1_n_0 ;
  wire \rStoredData[0]_i_94__1_n_0 ;
  wire \rStoredData[0]_i_95__1_n_0 ;
  wire \rStoredData[0]_i_96__1_n_0 ;
  wire \rStoredData[0]_i_97__1_n_0 ;
  wire \rStoredData[0]_i_98__1_n_0 ;
  wire \rStoredData[0]_i_99__1_n_0 ;
  wire \rStoredData[0]_i_9__1_n_0 ;
  wire \rStoredData[1]_i_100__1_n_0 ;
  wire \rStoredData[1]_i_101__1_n_0 ;
  wire \rStoredData[1]_i_102__1_n_0 ;
  wire \rStoredData[1]_i_103__1_n_0 ;
  wire \rStoredData[1]_i_104__1_n_0 ;
  wire \rStoredData[1]_i_105__1_n_0 ;
  wire \rStoredData[1]_i_106__1_n_0 ;
  wire \rStoredData[1]_i_107__1_n_0 ;
  wire \rStoredData[1]_i_108__1_n_0 ;
  wire \rStoredData[1]_i_109__1_n_0 ;
  wire \rStoredData[1]_i_10__1_n_0 ;
  wire \rStoredData[1]_i_110__1_n_0 ;
  wire \rStoredData[1]_i_111__1_n_0 ;
  wire \rStoredData[1]_i_112__1_n_0 ;
  wire \rStoredData[1]_i_113__1_n_0 ;
  wire \rStoredData[1]_i_114__1_n_0 ;
  wire \rStoredData[1]_i_115__1_n_0 ;
  wire \rStoredData[1]_i_116__1_n_0 ;
  wire \rStoredData[1]_i_117__0_n_0 ;
  wire \rStoredData[1]_i_118__0_n_0 ;
  wire \rStoredData[1]_i_1__1_n_0 ;
  wire \rStoredData[1]_i_2__1_n_0 ;
  wire \rStoredData[1]_i_31__0_n_0 ;
  wire \rStoredData[1]_i_32_n_0 ;
  wire \rStoredData[1]_i_33__1_n_0 ;
  wire \rStoredData[1]_i_34__1_n_0 ;
  wire \rStoredData[1]_i_35__1_n_0 ;
  wire \rStoredData[1]_i_36__1_n_0 ;
  wire \rStoredData[1]_i_37__1_n_0 ;
  wire \rStoredData[1]_i_38__1_n_0 ;
  wire \rStoredData[1]_i_39__1_n_0 ;
  wire \rStoredData[1]_i_3__1_n_0 ;
  wire \rStoredData[1]_i_40__1_n_0 ;
  wire \rStoredData[1]_i_41__1_n_0 ;
  wire \rStoredData[1]_i_42__1_n_0 ;
  wire \rStoredData[1]_i_43__1_n_0 ;
  wire \rStoredData[1]_i_44__1_n_0 ;
  wire \rStoredData[1]_i_45__0_n_0 ;
  wire \rStoredData[1]_i_46__0_n_0 ;
  wire \rStoredData[1]_i_71__1_n_0 ;
  wire \rStoredData[1]_i_72__1_n_0 ;
  wire \rStoredData[1]_i_73__1_n_0 ;
  wire \rStoredData[1]_i_74__1_n_0 ;
  wire \rStoredData[1]_i_75__1_n_0 ;
  wire \rStoredData[1]_i_76__1_n_0 ;
  wire \rStoredData[1]_i_77__1_n_0 ;
  wire \rStoredData[1]_i_78__1_n_0 ;
  wire \rStoredData[1]_i_79__1_n_0 ;
  wire \rStoredData[1]_i_80__1_n_0 ;
  wire \rStoredData[1]_i_81__1_n_0 ;
  wire \rStoredData[1]_i_82__1_n_0 ;
  wire \rStoredData[1]_i_83__1_n_0 ;
  wire \rStoredData[1]_i_84__1_n_0 ;
  wire \rStoredData[1]_i_85__1_n_0 ;
  wire \rStoredData[1]_i_86__1_n_0 ;
  wire \rStoredData[1]_i_87__1_n_0 ;
  wire \rStoredData[1]_i_88__1_n_0 ;
  wire \rStoredData[1]_i_89__1_n_0 ;
  wire \rStoredData[1]_i_8__1_n_0 ;
  wire \rStoredData[1]_i_90__1_n_0 ;
  wire \rStoredData[1]_i_91__1_n_0 ;
  wire \rStoredData[1]_i_92__1_n_0 ;
  wire \rStoredData[1]_i_93__1_n_0 ;
  wire \rStoredData[1]_i_94__1_n_0 ;
  wire \rStoredData[1]_i_95__1_n_0 ;
  wire \rStoredData[1]_i_96__1_n_0 ;
  wire \rStoredData[1]_i_97__1_n_0 ;
  wire \rStoredData[1]_i_98__1_n_0 ;
  wire \rStoredData[1]_i_99__1_n_0 ;
  wire \rStoredData[1]_i_9__1_n_0 ;
  wire \rStoredData[2]_i_100__1_n_0 ;
  wire \rStoredData[2]_i_101__1_n_0 ;
  wire \rStoredData[2]_i_102__1_n_0 ;
  wire \rStoredData[2]_i_103__1_n_0 ;
  wire \rStoredData[2]_i_104__1_n_0 ;
  wire \rStoredData[2]_i_105__1_n_0 ;
  wire \rStoredData[2]_i_106__1_n_0 ;
  wire \rStoredData[2]_i_107__1_n_0 ;
  wire \rStoredData[2]_i_10__1_n_0 ;
  wire \rStoredData[2]_i_11__1_n_0 ;
  wire \rStoredData[2]_i_12__1_n_0 ;
  wire \rStoredData[2]_i_13__0_n_0 ;
  wire \rStoredData[2]_i_14__0_n_0 ;
  wire \rStoredData[2]_i_15__0_n_0 ;
  wire \rStoredData[2]_i_16_n_0 ;
  wire \rStoredData[2]_i_17__0_n_0 ;
  wire \rStoredData[2]_i_1__1_n_0 ;
  wire \rStoredData[2]_i_24__0_n_0 ;
  wire \rStoredData[2]_i_2__1_n_0 ;
  wire \rStoredData[2]_i_3__1_n_0 ;
  wire \rStoredData[2]_i_40__1_n_0 ;
  wire \rStoredData[2]_i_41__0_n_0 ;
  wire \rStoredData[2]_i_44__0_n_0 ;
  wire \rStoredData[2]_i_45__1_n_0 ;
  wire \rStoredData[2]_i_46__0_n_0 ;
  wire \rStoredData[2]_i_47__0_n_0 ;
  wire \rStoredData[2]_i_48__0_n_0 ;
  wire \rStoredData[2]_i_49__0_n_0 ;
  wire \rStoredData[2]_i_4__0_n_0 ;
  wire \rStoredData[2]_i_50__0_n_0 ;
  wire \rStoredData[2]_i_51__0_n_0 ;
  wire \rStoredData[2]_i_52__0_n_0 ;
  wire \rStoredData[2]_i_53__1_n_0 ;
  wire \rStoredData[2]_i_54__1_n_0 ;
  wire \rStoredData[2]_i_55__1_n_0 ;
  wire \rStoredData[2]_i_56__0_n_0 ;
  wire \rStoredData[2]_i_57__0_n_0 ;
  wire \rStoredData[2]_i_58__0_n_0 ;
  wire \rStoredData[2]_i_59__0_n_0 ;
  wire \rStoredData[2]_i_5__0_n_0 ;
  wire \rStoredData[2]_i_60__0_n_0 ;
  wire \rStoredData[2]_i_61__0_n_0 ;
  wire \rStoredData[2]_i_62__0_n_0 ;
  wire \rStoredData[2]_i_63__0_n_0 ;
  wire \rStoredData[2]_i_64__0_n_0 ;
  wire \rStoredData[2]_i_65__0_n_0 ;
  wire \rStoredData[2]_i_66__1_n_0 ;
  wire \rStoredData[2]_i_67__1_n_0 ;
  wire \rStoredData[2]_i_68__1_n_0 ;
  wire \rStoredData[2]_i_69__1_n_0 ;
  wire \rStoredData[2]_i_78__1_n_0 ;
  wire \rStoredData[2]_i_79__1_n_0 ;
  wire \rStoredData[2]_i_80__1_n_0 ;
  wire \rStoredData[2]_i_81__1_n_0 ;
  wire \rStoredData[2]_i_82__1_n_0 ;
  wire \rStoredData[2]_i_83__1_n_0 ;
  wire \rStoredData[2]_i_84__1_n_0 ;
  wire \rStoredData[2]_i_85__1_n_0 ;
  wire \rStoredData[2]_i_86__1_n_0 ;
  wire \rStoredData[2]_i_87__1_n_0 ;
  wire \rStoredData[2]_i_88__1_n_0 ;
  wire \rStoredData[2]_i_89__1_n_0 ;
  wire \rStoredData[2]_i_90__1_n_0 ;
  wire \rStoredData[2]_i_91__1_n_0 ;
  wire \rStoredData[2]_i_92__1_n_0 ;
  wire \rStoredData[2]_i_93__1_n_0 ;
  wire \rStoredData[2]_i_94__1_n_0 ;
  wire \rStoredData[2]_i_95__1_n_0 ;
  wire \rStoredData[2]_i_96__1_n_0 ;
  wire \rStoredData[2]_i_97__1_n_0 ;
  wire \rStoredData[2]_i_98__1_n_0 ;
  wire \rStoredData[2]_i_99__1_n_0 ;
  wire \rStoredData[2]_i_9__1_n_0 ;
  wire \rStoredData[3]_i_10__1_n_0 ;
  wire \rStoredData[3]_i_11__1_n_0 ;
  wire \rStoredData[3]_i_12__1_n_0 ;
  wire \rStoredData[3]_i_13__0_n_0 ;
  wire \rStoredData[3]_i_14__0_n_0 ;
  wire \rStoredData[3]_i_15__1_n_0 ;
  wire \rStoredData[3]_i_16__0_n_0 ;
  wire \rStoredData[3]_i_17__1_n_0 ;
  wire \rStoredData[3]_i_18__1_n_0 ;
  wire \rStoredData[3]_i_19__0_n_0 ;
  wire \rStoredData[3]_i_1__1_n_0 ;
  wire \rStoredData[3]_i_20__1_n_0 ;
  wire \rStoredData[3]_i_23__0_n_0 ;
  wire \rStoredData[3]_i_24__1_n_0 ;
  wire \rStoredData[3]_i_27__0_n_0 ;
  wire \rStoredData[3]_i_28__0_n_0 ;
  wire \rStoredData[3]_i_29__0_n_0 ;
  wire \rStoredData[3]_i_2__0_n_0 ;
  wire \rStoredData[3]_i_31__1_n_0 ;
  wire \rStoredData[3]_i_39__1_n_0 ;
  wire \rStoredData[3]_i_3__0_n_0 ;
  wire \rStoredData[3]_i_40__1_n_0 ;
  wire \rStoredData[3]_i_43_n_0 ;
  wire \rStoredData[3]_i_44_n_0 ;
  wire \rStoredData[3]_i_45__0_n_0 ;
  wire \rStoredData[3]_i_46__0_n_0 ;
  wire \rStoredData[3]_i_47__0_n_0 ;
  wire \rStoredData[3]_i_48__0_n_0 ;
  wire \rStoredData[3]_i_49__0_n_0 ;
  wire \rStoredData[3]_i_4__1_n_0 ;
  wire \rStoredData[3]_i_50__1_n_0 ;
  wire \rStoredData[3]_i_51__0_n_0 ;
  wire \rStoredData[3]_i_52__0_n_0 ;
  wire \rStoredData[3]_i_53__0_n_0 ;
  wire \rStoredData[3]_i_54__0_n_0 ;
  wire \rStoredData[3]_i_55__1_n_0 ;
  wire \rStoredData[3]_i_56__1_n_0 ;
  wire \rStoredData[3]_i_57__0_n_0 ;
  wire \rStoredData[3]_i_58__0_n_0 ;
  wire \rStoredData[3]_i_59__1_n_0 ;
  wire \rStoredData[3]_i_5__1_n_0 ;
  wire \rStoredData[3]_i_60__1_n_0 ;
  wire \rStoredData[3]_i_61__1_n_0 ;
  wire \rStoredData[3]_i_62__0_n_0 ;
  wire \rStoredData[3]_i_69__1_n_0 ;
  wire \rStoredData[3]_i_6__1_n_0 ;
  wire \rStoredData[3]_i_70__1_n_0 ;
  wire \rStoredData[3]_i_71__1_n_0 ;
  wire \rStoredData[3]_i_72__1_n_0 ;
  wire \rStoredData[3]_i_73__0_n_0 ;
  wire \rStoredData[3]_i_74__1_n_0 ;
  wire \rStoredData[3]_i_75__1_n_0 ;
  wire \rStoredData[3]_i_76__1_n_0 ;
  wire \rStoredData[3]_i_77__1_n_0 ;
  wire \rStoredData[3]_i_78__1_n_0 ;
  wire \rStoredData[3]_i_79__1_n_0 ;
  wire \rStoredData[3]_i_80__1_n_0 ;
  wire \rStoredData[3]_i_81__1_n_0 ;
  wire \rStoredData[3]_i_82__1_n_0 ;
  wire \rStoredData[3]_i_83__1_n_0 ;
  wire \rStoredData[3]_i_84__1_n_0 ;
  wire \rStoredData[3]_i_85__1_n_0 ;
  wire \rStoredData[3]_i_86__1_n_0 ;
  wire \rStoredData[3]_i_87__1_n_0 ;
  wire \rStoredData[3]_i_88__1_n_0 ;
  wire \rStoredData[3]_i_89__1_n_0 ;
  wire \rStoredData[3]_i_90__0_n_0 ;
  wire \rStoredData[3]_i_91__0_n_0 ;
  wire \rStoredData[3]_i_92__0_n_0 ;
  wire \rStoredData[3]_i_9__1_n_0 ;
  wire \rStoredData[4]_i_12__0_n_0 ;
  wire \rStoredData[4]_i_13__0_n_0 ;
  wire \rStoredData[4]_i_14__0_n_0 ;
  wire \rStoredData[4]_i_15__1_n_0 ;
  wire \rStoredData[4]_i_17_n_0 ;
  wire \rStoredData[4]_i_18__1_n_0 ;
  wire \rStoredData[4]_i_1__1_n_0 ;
  wire \rStoredData[4]_i_25__1_n_0 ;
  wire \rStoredData[4]_i_26__1_n_0 ;
  wire \rStoredData[4]_i_27__1_n_0 ;
  wire \rStoredData[4]_i_28__1_n_0 ;
  wire \rStoredData[4]_i_29__1_n_0 ;
  wire \rStoredData[4]_i_30__1_n_0 ;
  wire \rStoredData[4]_i_31__1_n_0 ;
  wire \rStoredData[4]_i_32__1_n_0 ;
  wire \rStoredData[4]_i_33__1_n_0 ;
  wire \rStoredData[4]_i_34__1_n_0 ;
  wire \rStoredData[4]_i_35__1_n_0 ;
  wire \rStoredData[4]_i_36__1_n_0 ;
  wire \rStoredData[4]_i_37__1_n_0 ;
  wire \rStoredData[4]_i_38__1_n_0 ;
  wire \rStoredData[4]_i_39__1_n_0 ;
  wire \rStoredData[4]_i_40__1_n_0 ;
  wire \rStoredData[4]_i_41__1_n_0 ;
  wire \rStoredData[4]_i_42__1_n_0 ;
  wire \rStoredData[4]_i_43__0_n_0 ;
  wire \rStoredData[4]_i_44__1_n_0 ;
  wire \rStoredData[4]_i_45__1_n_0 ;
  wire \rStoredData[4]_i_46__1_n_0 ;
  wire \rStoredData[4]_i_47__1_n_0 ;
  wire \rStoredData[4]_i_48__1_n_0 ;
  wire \rStoredData[4]_i_49__1_n_0 ;
  wire \rStoredData[4]_i_4__1_n_0 ;
  wire \rStoredData[4]_i_50__1_n_0 ;
  wire \rStoredData[4]_i_51__0_n_0 ;
  wire \rStoredData[4]_i_52__0_n_0 ;
  wire \rStoredData[4]_i_53__1_n_0 ;
  wire \rStoredData[4]_i_54__1_n_0 ;
  wire \rStoredData[4]_i_55__1_n_0 ;
  wire \rStoredData[4]_i_56__1_n_0 ;
  wire \rStoredData[4]_i_57__1_n_0 ;
  wire \rStoredData[4]_i_58__1_n_0 ;
  wire \rStoredData[4]_i_59__1_n_0 ;
  wire \rStoredData[4]_i_5__1_n_0 ;
  wire \rStoredData[4]_i_60_n_0 ;
  wire \rStoredData[4]_i_61_n_0 ;
  wire \rStoredData[4]_i_6__1_n_0 ;
  wire \rStoredData[4]_i_7__1_n_0 ;
  wire \rStoredData[4]_i_8__1_n_0 ;
  wire \rStoredData[5]_i_10__1_n_0 ;
  wire \rStoredData[5]_i_12__1_n_0 ;
  wire \rStoredData[5]_i_14__0_n_0 ;
  wire \rStoredData[5]_i_15_n_0 ;
  wire \rStoredData[5]_i_16__0_n_0 ;
  wire \rStoredData[5]_i_17__0_n_0 ;
  wire \rStoredData[5]_i_18__0_n_0 ;
  wire \rStoredData[5]_i_19__1_n_0 ;
  wire \rStoredData[5]_i_1__1_n_0 ;
  wire \rStoredData[5]_i_20__1_n_0 ;
  wire \rStoredData[5]_i_21__1_n_0 ;
  wire \rStoredData[5]_i_22__0_n_0 ;
  wire \rStoredData[5]_i_23__1_n_0 ;
  wire \rStoredData[5]_i_24__1_n_0 ;
  wire \rStoredData[5]_i_25__1_n_0 ;
  wire \rStoredData[5]_i_26__0_n_0 ;
  wire \rStoredData[5]_i_27__1_n_0 ;
  wire \rStoredData[5]_i_28__1_n_0 ;
  wire \rStoredData[5]_i_29__1_n_0 ;
  wire \rStoredData[5]_i_2__1_n_0 ;
  wire \rStoredData[5]_i_30_n_0 ;
  wire \rStoredData[5]_i_31__0_n_0 ;
  wire \rStoredData[5]_i_32__0_n_0 ;
  wire \rStoredData[5]_i_33__0_n_0 ;
  wire \rStoredData[5]_i_34__0_n_0 ;
  wire \rStoredData[5]_i_35__0_n_0 ;
  wire \rStoredData[5]_i_36__1_n_0 ;
  wire \rStoredData[5]_i_37__0_n_0 ;
  wire \rStoredData[5]_i_38_n_0 ;
  wire \rStoredData[5]_i_39__0_n_0 ;
  wire \rStoredData[5]_i_3__1_n_0 ;
  wire \rStoredData[5]_i_40__0_n_0 ;
  wire \rStoredData[5]_i_41_n_0 ;
  wire \rStoredData[5]_i_4__1_n_0 ;
  wire \rStoredData[5]_i_5__1_n_0 ;
  wire \rStoredData[5]_i_6__1_n_0 ;
  wire \rStoredData[5]_i_7__1_n_0 ;
  wire \rStoredData[5]_i_8__1_n_0 ;
  wire \rStoredData[6]_i_11__1_n_0 ;
  wire \rStoredData[6]_i_12__0_n_0 ;
  wire \rStoredData[6]_i_13__0_n_0 ;
  wire \rStoredData[6]_i_14__1_n_0 ;
  wire \rStoredData[6]_i_15__1_n_0 ;
  wire \rStoredData[6]_i_16__1_n_0 ;
  wire \rStoredData[6]_i_17__0_n_0 ;
  wire \rStoredData[6]_i_18__0_n_0 ;
  wire \rStoredData[6]_i_19__1_n_0 ;
  wire \rStoredData[6]_i_1__1_n_0 ;
  wire \rStoredData[6]_i_20_n_0 ;
  wire \rStoredData[6]_i_21_n_0 ;
  wire \rStoredData[6]_i_2__1_n_0 ;
  wire \rStoredData[6]_i_3__0_n_0 ;
  wire \rStoredData[6]_i_4__1_n_0 ;
  wire \rStoredData[6]_i_5__0_n_0 ;
  wire \rStoredData[6]_i_6__1_n_0 ;
  wire \rStoredData[6]_i_7__0_n_0 ;
  wire \rStoredData[6]_i_8__1_n_0 ;
  wire \rStoredData[6]_i_9__1_n_0 ;
  wire \rStoredData[7]_i_10__0_n_0 ;
  wire \rStoredData[7]_i_11_n_0 ;
  wire \rStoredData[7]_i_2__1_n_0 ;
  wire \rStoredData[7]_i_3_n_0 ;
  wire \rStoredData[7]_i_4_n_0 ;
  wire \rStoredData[7]_i_5__1_n_0 ;
  wire \rStoredData[7]_i_6__1_n_0 ;
  wire \rStoredData[7]_i_7__1_n_0 ;
  wire \rStoredData[7]_i_8__1_n_0 ;
  wire \rStoredData[7]_i_9_n_0 ;
  wire \rStoredData_reg[0]_i_11__1_n_0 ;
  wire \rStoredData_reg[0]_i_12__1_n_0 ;
  wire \rStoredData_reg[0]_i_13__1_n_0 ;
  wire \rStoredData_reg[0]_i_14__1_n_0 ;
  wire \rStoredData_reg[0]_i_15__1_n_0 ;
  wire \rStoredData_reg[0]_i_16__1_n_0 ;
  wire \rStoredData_reg[0]_i_17__1_n_0 ;
  wire \rStoredData_reg[0]_i_18__1_n_0 ;
  wire \rStoredData_reg[0]_i_19__1_n_0 ;
  wire \rStoredData_reg[0]_i_20__1_n_0 ;
  wire \rStoredData_reg[0]_i_21__1_n_0 ;
  wire \rStoredData_reg[0]_i_22__1_n_0 ;
  wire \rStoredData_reg[0]_i_23__1_n_0 ;
  wire \rStoredData_reg[0]_i_24__1_n_0 ;
  wire \rStoredData_reg[0]_i_25__1_n_0 ;
  wire \rStoredData_reg[0]_i_26__1_n_0 ;
  wire \rStoredData_reg[0]_i_27__1_n_0 ;
  wire \rStoredData_reg[0]_i_28__1_n_0 ;
  wire \rStoredData_reg[0]_i_29__1_n_0 ;
  wire \rStoredData_reg[0]_i_30__1_n_0 ;
  wire \rStoredData_reg[0]_i_47__1_n_0 ;
  wire \rStoredData_reg[0]_i_48__1_n_0 ;
  wire \rStoredData_reg[0]_i_49__1_n_0 ;
  wire \rStoredData_reg[0]_i_4__1_n_0 ;
  wire \rStoredData_reg[0]_i_50__1_n_0 ;
  wire \rStoredData_reg[0]_i_51__1_n_0 ;
  wire \rStoredData_reg[0]_i_52__1_n_0 ;
  wire \rStoredData_reg[0]_i_53__1_n_0 ;
  wire \rStoredData_reg[0]_i_54__1_n_0 ;
  wire \rStoredData_reg[0]_i_55__1_n_0 ;
  wire \rStoredData_reg[0]_i_56__1_n_0 ;
  wire \rStoredData_reg[0]_i_57__1_n_0 ;
  wire \rStoredData_reg[0]_i_58__1_n_0 ;
  wire \rStoredData_reg[0]_i_59__1_n_0 ;
  wire \rStoredData_reg[0]_i_5__1_n_0 ;
  wire \rStoredData_reg[0]_i_60__1_n_0 ;
  wire \rStoredData_reg[0]_i_61__1_n_0 ;
  wire \rStoredData_reg[0]_i_62__1_n_0 ;
  wire \rStoredData_reg[0]_i_63__1_n_0 ;
  wire \rStoredData_reg[0]_i_64__1_n_0 ;
  wire \rStoredData_reg[0]_i_65__1_n_0 ;
  wire \rStoredData_reg[0]_i_66__1_n_0 ;
  wire \rStoredData_reg[0]_i_67__1_n_0 ;
  wire \rStoredData_reg[0]_i_68__1_n_0 ;
  wire \rStoredData_reg[0]_i_69__1_n_0 ;
  wire \rStoredData_reg[0]_i_6__1_n_0 ;
  wire \rStoredData_reg[0]_i_70__1_n_0 ;
  wire \rStoredData_reg[0]_i_7__1_n_0 ;
  wire \rStoredData_reg[1]_i_11__0_n_0 ;
  wire \rStoredData_reg[1]_i_12__0_n_0 ;
  wire \rStoredData_reg[1]_i_13__0_n_0 ;
  wire \rStoredData_reg[1]_i_14__0_n_0 ;
  wire \rStoredData_reg[1]_i_15__1_n_0 ;
  wire \rStoredData_reg[1]_i_16__1_n_0 ;
  wire \rStoredData_reg[1]_i_17__1_n_0 ;
  wire \rStoredData_reg[1]_i_18__1_n_0 ;
  wire \rStoredData_reg[1]_i_19__1_n_0 ;
  wire \rStoredData_reg[1]_i_20__1_n_0 ;
  wire \rStoredData_reg[1]_i_21__1_n_0 ;
  wire \rStoredData_reg[1]_i_22__1_n_0 ;
  wire \rStoredData_reg[1]_i_23__1_n_0 ;
  wire \rStoredData_reg[1]_i_24__1_n_0 ;
  wire \rStoredData_reg[1]_i_25__1_n_0 ;
  wire \rStoredData_reg[1]_i_26__1_n_0 ;
  wire \rStoredData_reg[1]_i_27__1_n_0 ;
  wire \rStoredData_reg[1]_i_28__1_n_0 ;
  wire \rStoredData_reg[1]_i_29__1_n_0 ;
  wire \rStoredData_reg[1]_i_30__1_n_0 ;
  wire \rStoredData_reg[1]_i_47__1_n_0 ;
  wire \rStoredData_reg[1]_i_48__1_n_0 ;
  wire \rStoredData_reg[1]_i_49__1_n_0 ;
  wire \rStoredData_reg[1]_i_4__0_n_0 ;
  wire \rStoredData_reg[1]_i_50__1_n_0 ;
  wire \rStoredData_reg[1]_i_51__1_n_0 ;
  wire \rStoredData_reg[1]_i_52__1_n_0 ;
  wire \rStoredData_reg[1]_i_53__1_n_0 ;
  wire \rStoredData_reg[1]_i_54__1_n_0 ;
  wire \rStoredData_reg[1]_i_55__1_n_0 ;
  wire \rStoredData_reg[1]_i_56__1_n_0 ;
  wire \rStoredData_reg[1]_i_57__1_n_0 ;
  wire \rStoredData_reg[1]_i_58__1_n_0 ;
  wire \rStoredData_reg[1]_i_59__1_n_0 ;
  wire \rStoredData_reg[1]_i_5__1_n_0 ;
  wire \rStoredData_reg[1]_i_60__1_n_0 ;
  wire \rStoredData_reg[1]_i_61__1_n_0 ;
  wire \rStoredData_reg[1]_i_62__1_n_0 ;
  wire \rStoredData_reg[1]_i_63__1_n_0 ;
  wire \rStoredData_reg[1]_i_64__1_n_0 ;
  wire \rStoredData_reg[1]_i_65__1_n_0 ;
  wire \rStoredData_reg[1]_i_66__1_n_0 ;
  wire \rStoredData_reg[1]_i_67__1_n_0 ;
  wire \rStoredData_reg[1]_i_68__1_n_0 ;
  wire \rStoredData_reg[1]_i_69__0_n_0 ;
  wire \rStoredData_reg[1]_i_6__1_n_0 ;
  wire \rStoredData_reg[1]_i_70__0_n_0 ;
  wire \rStoredData_reg[1]_i_7__1_n_0 ;
  wire \rStoredData_reg[2]_i_18__1_n_0 ;
  wire \rStoredData_reg[2]_i_19__0_n_0 ;
  wire \rStoredData_reg[2]_i_20__0_n_0 ;
  wire \rStoredData_reg[2]_i_21__1_n_0 ;
  wire \rStoredData_reg[2]_i_22__1_n_0 ;
  wire \rStoredData_reg[2]_i_23__0_n_0 ;
  wire \rStoredData_reg[2]_i_25__1_n_0 ;
  wire \rStoredData_reg[2]_i_26__1_n_0 ;
  wire \rStoredData_reg[2]_i_27__1_n_0 ;
  wire \rStoredData_reg[2]_i_28__1_n_0 ;
  wire \rStoredData_reg[2]_i_29__0_n_0 ;
  wire \rStoredData_reg[2]_i_30__0_n_0 ;
  wire \rStoredData_reg[2]_i_31__0_n_0 ;
  wire \rStoredData_reg[2]_i_32__0_n_0 ;
  wire \rStoredData_reg[2]_i_33__0_n_0 ;
  wire \rStoredData_reg[2]_i_34__0_n_0 ;
  wire \rStoredData_reg[2]_i_35__0_n_0 ;
  wire \rStoredData_reg[2]_i_36__0_n_0 ;
  wire \rStoredData_reg[2]_i_37__0_n_0 ;
  wire \rStoredData_reg[2]_i_38__0_n_0 ;
  wire \rStoredData_reg[2]_i_39__0_n_0 ;
  wire \rStoredData_reg[2]_i_42__1_n_0 ;
  wire \rStoredData_reg[2]_i_43__1_n_0 ;
  wire \rStoredData_reg[2]_i_6__1_n_0 ;
  wire \rStoredData_reg[2]_i_70__0_n_0 ;
  wire \rStoredData_reg[2]_i_71__0_n_0 ;
  wire \rStoredData_reg[2]_i_72__0_n_0 ;
  wire \rStoredData_reg[2]_i_73__0_n_0 ;
  wire \rStoredData_reg[2]_i_74__0_n_0 ;
  wire \rStoredData_reg[2]_i_75__0_n_0 ;
  wire \rStoredData_reg[2]_i_76__0_n_0 ;
  wire \rStoredData_reg[2]_i_77__0_n_0 ;
  wire \rStoredData_reg[2]_i_7__1_n_0 ;
  wire \rStoredData_reg[2]_i_8__1_n_0 ;
  wire \rStoredData_reg[3]_i_21__1_n_0 ;
  wire \rStoredData_reg[3]_i_22__1_n_0 ;
  wire \rStoredData_reg[3]_i_25__0_n_0 ;
  wire \rStoredData_reg[3]_i_26__1_n_0 ;
  wire \rStoredData_reg[3]_i_30__0_n_0 ;
  wire \rStoredData_reg[3]_i_32__1_n_0 ;
  wire \rStoredData_reg[3]_i_33__1_n_0 ;
  wire \rStoredData_reg[3]_i_34__0_n_0 ;
  wire \rStoredData_reg[3]_i_35__0_n_0 ;
  wire \rStoredData_reg[3]_i_36__0_n_0 ;
  wire \rStoredData_reg[3]_i_37__0_n_0 ;
  wire \rStoredData_reg[3]_i_38__0_n_0 ;
  wire \rStoredData_reg[3]_i_41__0_n_0 ;
  wire \rStoredData_reg[3]_i_42__0_n_0 ;
  wire \rStoredData_reg[3]_i_63__0_n_0 ;
  wire \rStoredData_reg[3]_i_64__0_n_0 ;
  wire \rStoredData_reg[3]_i_65__0_n_0 ;
  wire \rStoredData_reg[3]_i_66__0_n_0 ;
  wire \rStoredData_reg[3]_i_67__0_n_0 ;
  wire \rStoredData_reg[3]_i_68__0_n_0 ;
  wire \rStoredData_reg[3]_i_7__0_n_0 ;
  wire \rStoredData_reg[3]_i_8__0_n_0 ;
  wire \rStoredData_reg[4]_i_10__1_n_0 ;
  wire \rStoredData_reg[4]_i_11__1_n_0 ;
  wire \rStoredData_reg[4]_i_16__1_n_0 ;
  wire \rStoredData_reg[4]_i_19__1_n_0 ;
  wire \rStoredData_reg[4]_i_20__1_n_0 ;
  wire \rStoredData_reg[4]_i_21__1_n_0 ;
  wire \rStoredData_reg[4]_i_22__1_n_0 ;
  wire \rStoredData_reg[4]_i_23__1_n_0 ;
  wire \rStoredData_reg[4]_i_24__1_n_0 ;
  wire \rStoredData_reg[4]_i_2__1_n_0 ;
  wire \rStoredData_reg[4]_i_3__1_n_0 ;
  wire \rStoredData_reg[4]_i_9__1_n_0 ;
  wire \rStoredData_reg[5]_i_11__1_n_0 ;
  wire \rStoredData_reg[5]_i_13__1_n_0 ;
  wire \rStoredData_reg[5]_i_9__0_n_0 ;
  wire \rStoredData_reg[6]_i_10__0_n_0 ;
  wire [2:0]sGammaReg;
  wire [9:0]s_axis_video_tdata;
  wire s_axis_video_tvalid;

  LUT6 #(
    .INIT(64'h1051EEAE8A8875F7)) 
    \rStoredData[0]_i_100__1 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[3]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[1]),
        .O(\rStoredData[0]_i_100__1_n_0 ));
  LUT6 #(
    .INIT(64'hC43C63CCC3BC33C3)) 
    \rStoredData[0]_i_101__1 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[0]),
        .O(\rStoredData[0]_i_101__1_n_0 ));
  LUT6 #(
    .INIT(64'h769155A8578815EA)) 
    \rStoredData[0]_i_102__1 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[0]),
        .O(\rStoredData[0]_i_102__1_n_0 ));
  LUT6 #(
    .INIT(64'h36B693CB9293C949)) 
    \rStoredData[0]_i_103__1 
       (.I0(s_axis_video_tdata[6]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[0]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[1]),
        .O(\rStoredData[0]_i_103__1_n_0 ));
  LUT6 #(
    .INIT(64'h969293DBC949696C)) 
    \rStoredData[0]_i_104__1 
       (.I0(s_axis_video_tdata[6]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[0]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[2]),
        .O(\rStoredData[0]_i_104__1_n_0 ));
  LUT6 #(
    .INIT(64'h65E6A686969E9A19)) 
    \rStoredData[0]_i_105__1 
       (.I0(s_axis_video_tdata[6]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[0]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[2]),
        .O(\rStoredData[0]_i_105__1_n_0 ));
  LUT6 #(
    .INIT(64'h899966E817769999)) 
    \rStoredData[0]_i_106__1 
       (.I0(s_axis_video_tdata[6]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[3]),
        .I5(s_axis_video_tdata[2]),
        .O(\rStoredData[0]_i_106__1_n_0 ));
  LUT6 #(
    .INIT(64'h665D2666999A5999)) 
    \rStoredData[0]_i_107__1 
       (.I0(s_axis_video_tdata[6]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[3]),
        .I5(s_axis_video_tdata[2]),
        .O(\rStoredData[0]_i_107__1_n_0 ));
  LUT6 #(
    .INIT(64'h296B626646D6949D)) 
    \rStoredData[0]_i_108__1 
       (.I0(s_axis_video_tdata[6]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[0]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[2]),
        .O(\rStoredData[0]_i_108__1_n_0 ));
  LUT6 #(
    .INIT(64'hD3CC323333D9CC33)) 
    \rStoredData[0]_i_109__1 
       (.I0(s_axis_video_tdata[6]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[3]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[1]),
        .O(\rStoredData[0]_i_109__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rStoredData[0]_i_10__1 
       (.I0(\rStoredData_reg[0]_i_27__1_n_0 ),
        .I1(\rStoredData_reg[0]_i_28__1_n_0 ),
        .I2(s_axis_video_tdata[9]),
        .I3(\rStoredData_reg[0]_i_29__1_n_0 ),
        .I4(s_axis_video_tdata[8]),
        .I5(\rStoredData_reg[0]_i_30__1_n_0 ),
        .O(\rStoredData[0]_i_10__1_n_0 ));
  LUT6 #(
    .INIT(64'h4C3C33333C33C3C3)) 
    \rStoredData[0]_i_110__1 
       (.I0(s_axis_video_tdata[6]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[0]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[1]),
        .O(\rStoredData[0]_i_110__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF40000000FD)) 
    \rStoredData[0]_i_111__1 
       (.I0(s_axis_video_tdata[6]),
        .I1(s_axis_video_tdata[3]),
        .I2(s_axis_video_tdata[4]),
        .I3(s_axis_video_tdata[0]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[2]),
        .O(\rStoredData[0]_i_111__1_n_0 ));
  LUT6 #(
    .INIT(64'h4F00FFFF30FF0000)) 
    \rStoredData[0]_i_112__1 
       (.I0(s_axis_video_tdata[3]),
        .I1(s_axis_video_tdata[0]),
        .I2(s_axis_video_tdata[4]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[6]),
        .I5(s_axis_video_tdata[2]),
        .O(\rStoredData[0]_i_112__1_n_0 ));
  LUT6 #(
    .INIT(64'h00CD204CFF33DFFB)) 
    \rStoredData[0]_i_113__1 
       (.I0(s_axis_video_tdata[6]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[3]),
        .I5(s_axis_video_tdata[2]),
        .O(\rStoredData[0]_i_113__1_n_0 ));
  LUT6 #(
    .INIT(64'hFE377F33038080C8)) 
    \rStoredData[0]_i_114__1 
       (.I0(s_axis_video_tdata[6]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[0]),
        .I5(s_axis_video_tdata[2]),
        .O(\rStoredData[0]_i_114__1_n_0 ));
  LUT6 #(
    .INIT(64'h52E5BD3F1F06A4E8)) 
    \rStoredData[0]_i_115__1 
       (.I0(s_axis_video_tdata[6]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[1]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[3]),
        .I5(s_axis_video_tdata[0]),
        .O(\rStoredData[0]_i_115__1_n_0 ));
  LUT6 #(
    .INIT(64'hA37DC222DE821DD7)) 
    \rStoredData[0]_i_116__1 
       (.I0(s_axis_video_tdata[6]),
        .I1(s_axis_video_tdata[3]),
        .I2(s_axis_video_tdata[2]),
        .I3(s_axis_video_tdata[4]),
        .I4(s_axis_video_tdata[0]),
        .I5(s_axis_video_tdata[1]),
        .O(\rStoredData[0]_i_116__1_n_0 ));
  LUT6 #(
    .INIT(64'h1446B998676B9404)) 
    \rStoredData[0]_i_117__1 
       (.I0(s_axis_video_tdata[6]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[0]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[1]),
        .O(\rStoredData[0]_i_117__1_n_0 ));
  LUT6 #(
    .INIT(64'hFECC40011337BEEE)) 
    \rStoredData[0]_i_118__1 
       (.I0(s_axis_video_tdata[6]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[0]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[2]),
        .O(\rStoredData[0]_i_118__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \rStoredData[0]_i_1__1 
       (.I0(\rStoredData[0]_i_2__1_n_0 ),
        .I1(\rStoredData[0]_i_3__1_n_0 ),
        .I2(sGammaReg[2]),
        .O(\rStoredData[0]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rStoredData[0]_i_2__1 
       (.I0(\rStoredData_reg[0]_i_4__1_n_0 ),
        .I1(\rStoredData_reg[0]_i_5__1_n_0 ),
        .I2(s_axis_video_tdata[8]),
        .I3(\rStoredData_reg[0]_i_6__1_n_0 ),
        .I4(s_axis_video_tdata[9]),
        .I5(\rStoredData_reg[0]_i_7__1_n_0 ),
        .O(\rStoredData[0]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'h0F0F70F00F1AF0F0)) 
    \rStoredData[0]_i_31__1 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[0]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[1]),
        .O(\rStoredData[0]_i_31__1_n_0 ));
  LUT6 #(
    .INIT(64'h0F0F0F0F87F0F0F0)) 
    \rStoredData[0]_i_32__1 
       (.I0(s_axis_video_tdata[4]),
        .I1(s_axis_video_tdata[5]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[0]),
        .I5(s_axis_video_tdata[2]),
        .O(\rStoredData[0]_i_32__1_n_0 ));
  LUT6 #(
    .INIT(64'h0B0AF5FDFFFF0000)) 
    \rStoredData[0]_i_33__1 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[0]),
        .I2(s_axis_video_tdata[1]),
        .I3(s_axis_video_tdata[4]),
        .I4(s_axis_video_tdata[3]),
        .I5(s_axis_video_tdata[2]),
        .O(\rStoredData[0]_i_33__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFF7FF551000008A)) 
    \rStoredData[0]_i_34__1 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[0]_i_34__1_n_0 ));
  LUT6 #(
    .INIT(64'h7655579581A888AA)) 
    \rStoredData[0]_i_35__1 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[0]),
        .I5(s_axis_video_tdata[2]),
        .O(\rStoredData[0]_i_35__1_n_0 ));
  LUT6 #(
    .INIT(64'hC4DC9DBD392B2362)) 
    \rStoredData[0]_i_36__1 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[0]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[2]),
        .O(\rStoredData[0]_i_36__1_n_0 ));
  LUT6 #(
    .INIT(64'hC3CBCC4C3C3C3C33)) 
    \rStoredData[0]_i_37__1 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[0]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[2]),
        .O(\rStoredData[0]_i_37__1_n_0 ));
  LUT6 #(
    .INIT(64'h4AF00F52AD4AB52F)) 
    \rStoredData[0]_i_38__1 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[0]),
        .I2(s_axis_video_tdata[4]),
        .I3(s_axis_video_tdata[3]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[2]),
        .O(\rStoredData[0]_i_38__1_n_0 ));
  LUT6 #(
    .INIT(64'h5969496D65A4A4B6)) 
    \rStoredData[0]_i_39__1 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[0]),
        .I5(s_axis_video_tdata[2]),
        .O(\rStoredData[0]_i_39__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rStoredData[0]_i_3__1 
       (.I0(\rStoredData[0]_i_8__1_n_0 ),
        .I1(\rStoredData[0]_i_9__1_n_0 ),
        .I2(sGammaReg[0]),
        .I3(\rStoredData[0]_i_10__1_n_0 ),
        .I4(sGammaReg[1]),
        .I5(s_axis_video_tdata[2]),
        .O(\rStoredData[0]_i_3__1_n_0 ));
  LUT6 #(
    .INIT(64'h5961E5A779E5A586)) 
    \rStoredData[0]_i_40__1 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[0]),
        .O(\rStoredData[0]_i_40__1_n_0 ));
  LUT6 #(
    .INIT(64'hEAA8575F0111EEEA)) 
    \rStoredData[0]_i_41__1 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[1]),
        .I3(s_axis_video_tdata[0]),
        .I4(s_axis_video_tdata[3]),
        .I5(s_axis_video_tdata[2]),
        .O(\rStoredData[0]_i_41__1_n_0 ));
  LUT6 #(
    .INIT(64'h5AF078F0F0E1F1A5)) 
    \rStoredData[0]_i_42__1 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[0]),
        .I5(s_axis_video_tdata[2]),
        .O(\rStoredData[0]_i_42__1_n_0 ));
  LUT6 #(
    .INIT(64'h34CF4A9D9125E10E)) 
    \rStoredData[0]_i_43__1 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[0]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[1]),
        .O(\rStoredData[0]_i_43__1_n_0 ));
  LUT6 #(
    .INIT(64'hDD8819FD297F6222)) 
    \rStoredData[0]_i_44__1 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[3]),
        .I2(s_axis_video_tdata[2]),
        .I3(s_axis_video_tdata[4]),
        .I4(s_axis_video_tdata[0]),
        .I5(s_axis_video_tdata[1]),
        .O(\rStoredData[0]_i_44__1_n_0 ));
  LUT6 #(
    .INIT(64'hCCC53ABC43338DCD)) 
    \rStoredData[0]_i_45__1 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[0]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[1]),
        .O(\rStoredData[0]_i_45__1_n_0 ));
  LUT6 #(
    .INIT(64'h15FFFFFEEA000111)) 
    \rStoredData[0]_i_46__1 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[0]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[2]),
        .O(\rStoredData[0]_i_46__1_n_0 ));
  LUT5 #(
    .INIT(32'h9D462B9D)) 
    \rStoredData[0]_i_71__1 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[1]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[3]),
        .O(\rStoredData[0]_i_71__1_n_0 ));
  LUT6 #(
    .INIT(64'hAB999D546662AAB9)) 
    \rStoredData[0]_i_72__1 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[0]_i_72__1_n_0 ));
  LUT6 #(
    .INIT(64'h5577FEEAA8811155)) 
    \rStoredData[0]_i_73__1 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[0]_i_73__1_n_0 ));
  LUT6 #(
    .INIT(64'hEA880011557FFEEA)) 
    \rStoredData[0]_i_74__1 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[0]_i_74__1_n_0 ));
  LUT6 #(
    .INIT(64'h533A32ECCCD3D932)) 
    \rStoredData[0]_i_75__1 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[3]),
        .I5(s_axis_video_tdata[2]),
        .O(\rStoredData[0]_i_75__1_n_0 ));
  LUT6 #(
    .INIT(64'h5756EEEAA8811515)) 
    \rStoredData[0]_i_76__1 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[3]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[2]),
        .O(\rStoredData[0]_i_76__1_n_0 ));
  LUT6 #(
    .INIT(64'h9DB99D392B626246)) 
    \rStoredData[0]_i_77__1 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[0]),
        .I5(s_axis_video_tdata[2]),
        .O(\rStoredData[0]_i_77__1_n_0 ));
  LUT6 #(
    .INIT(64'hCC32CC4CD3CC33DB)) 
    \rStoredData[0]_i_78__1 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[3]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[2]),
        .O(\rStoredData[0]_i_78__1_n_0 ));
  LUT6 #(
    .INIT(64'hCCCC339C4333CCC4)) 
    \rStoredData[0]_i_79__1 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[3]),
        .I5(s_axis_video_tdata[2]),
        .O(\rStoredData[0]_i_79__1_n_0 ));
  LUT6 #(
    .INIT(64'h4623DCC43BB94623)) 
    \rStoredData[0]_i_80__1 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[3]),
        .I5(s_axis_video_tdata[2]),
        .O(\rStoredData[0]_i_80__1_n_0 ));
  LUT6 #(
    .INIT(64'hAA9956669155AAA9)) 
    \rStoredData[0]_i_81__1 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[3]),
        .I5(s_axis_video_tdata[2]),
        .O(\rStoredData[0]_i_81__1_n_0 ));
  LUT6 #(
    .INIT(64'h89116EEA5577A899)) 
    \rStoredData[0]_i_82__1 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[3]),
        .I5(s_axis_video_tdata[2]),
        .O(\rStoredData[0]_i_82__1_n_0 ));
  LUT6 #(
    .INIT(64'h40FC43DC17A9249E)) 
    \rStoredData[0]_i_83__1 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[3]),
        .I5(s_axis_video_tdata[2]),
        .O(\rStoredData[0]_i_83__1_n_0 ));
  LUT6 #(
    .INIT(64'h11A1DE14EB4E11B9)) 
    \rStoredData[0]_i_84__1 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[0]_i_84__1_n_0 ));
  LUT6 #(
    .INIT(64'hB200FFFFDDFF0000)) 
    \rStoredData[0]_i_85__1 
       (.I0(s_axis_video_tdata[4]),
        .I1(s_axis_video_tdata[0]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[5]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[2]),
        .O(\rStoredData[0]_i_85__1_n_0 ));
  LUT6 #(
    .INIT(64'h5598AA6675598AA6)) 
    \rStoredData[0]_i_86__1 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[0]_i_86__1_n_0 ));
  LUT6 #(
    .INIT(64'h080F0000F7F0FFFF)) 
    \rStoredData[0]_i_87__1 
       (.I0(s_axis_video_tdata[3]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[1]),
        .I3(s_axis_video_tdata[0]),
        .I4(s_axis_video_tdata[5]),
        .I5(s_axis_video_tdata[2]),
        .O(\rStoredData[0]_i_87__1_n_0 ));
  LUT6 #(
    .INIT(64'h46B9D4A9952B9D62)) 
    \rStoredData[0]_i_88__1 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[0]),
        .I5(s_axis_video_tdata[1]),
        .O(\rStoredData[0]_i_88__1_n_0 ));
  LUT6 #(
    .INIT(64'hEFAE5151F7F70808)) 
    \rStoredData[0]_i_89__1 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[3]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[1]),
        .O(\rStoredData[0]_i_89__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rStoredData[0]_i_8__1 
       (.I0(\rStoredData_reg[0]_i_19__1_n_0 ),
        .I1(\rStoredData_reg[0]_i_20__1_n_0 ),
        .I2(s_axis_video_tdata[7]),
        .I3(\rStoredData_reg[0]_i_21__1_n_0 ),
        .I4(s_axis_video_tdata[9]),
        .I5(\rStoredData_reg[0]_i_22__1_n_0 ),
        .O(\rStoredData[0]_i_8__1_n_0 ));
  LUT6 #(
    .INIT(64'h9BB2D99B6464A626)) 
    \rStoredData[0]_i_90__1 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[1]),
        .I3(s_axis_video_tdata[0]),
        .I4(s_axis_video_tdata[3]),
        .I5(s_axis_video_tdata[2]),
        .O(\rStoredData[0]_i_90__1_n_0 ));
  LUT6 #(
    .INIT(64'hB995666A5556ABB9)) 
    \rStoredData[0]_i_91__1 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[0]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[1]),
        .O(\rStoredData[0]_i_91__1_n_0 ));
  LUT6 #(
    .INIT(64'hEA6E7657559599A9)) 
    \rStoredData[0]_i_92__1 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[0]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[2]),
        .O(\rStoredData[0]_i_92__1_n_0 ));
  LUT6 #(
    .INIT(64'h11EA55A87F80FE11)) 
    \rStoredData[0]_i_93__1 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[0]),
        .I5(s_axis_video_tdata[1]),
        .O(\rStoredData[0]_i_93__1_n_0 ));
  LUT6 #(
    .INIT(64'hA665AA6659995559)) 
    \rStoredData[0]_i_94__1 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[3]),
        .I5(s_axis_video_tdata[2]),
        .O(\rStoredData[0]_i_94__1_n_0 ));
  LUT6 #(
    .INIT(64'hA87700FF00FF01EE)) 
    \rStoredData[0]_i_95__1 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[0]),
        .O(\rStoredData[0]_i_95__1_n_0 ));
  LUT6 #(
    .INIT(64'h2665AA66599B55D9)) 
    \rStoredData[0]_i_96__1 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[3]),
        .I5(s_axis_video_tdata[2]),
        .O(\rStoredData[0]_i_96__1_n_0 ));
  LUT6 #(
    .INIT(64'h3F8000FF00FF00FF)) 
    \rStoredData[0]_i_97__1 
       (.I0(s_axis_video_tdata[3]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[5]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[0]),
        .I5(s_axis_video_tdata[1]),
        .O(\rStoredData[0]_i_97__1_n_0 ));
  LUT6 #(
    .INIT(64'h665D266499BA5D99)) 
    \rStoredData[0]_i_98__1 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[3]),
        .I5(s_axis_video_tdata[2]),
        .O(\rStoredData[0]_i_98__1_n_0 ));
  LUT6 #(
    .INIT(64'h860E71B3F09F69E0)) 
    \rStoredData[0]_i_99__1 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[0]),
        .O(\rStoredData[0]_i_99__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rStoredData[0]_i_9__1 
       (.I0(\rStoredData_reg[0]_i_23__1_n_0 ),
        .I1(\rStoredData_reg[0]_i_24__1_n_0 ),
        .I2(s_axis_video_tdata[7]),
        .I3(\rStoredData_reg[0]_i_25__1_n_0 ),
        .I4(s_axis_video_tdata[8]),
        .I5(\rStoredData_reg[0]_i_26__1_n_0 ),
        .O(\rStoredData[0]_i_9__1_n_0 ));
  LUT6 #(
    .INIT(64'hFF005DA005BA00FF)) 
    \rStoredData[1]_i_100__1 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[0]),
        .I2(s_axis_video_tdata[4]),
        .I3(s_axis_video_tdata[3]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[2]),
        .O(\rStoredData[1]_i_100__1_n_0 ));
  LUT6 #(
    .INIT(64'h5A6559E579A569A6)) 
    \rStoredData[1]_i_101__1 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[0]),
        .I5(s_axis_video_tdata[1]),
        .O(\rStoredData[1]_i_101__1_n_0 ));
  LUT6 #(
    .INIT(64'h080A080EEFF7F7F5)) 
    \rStoredData[1]_i_102__1 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[2]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[0]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[1]_i_102__1_n_0 ));
  LUT6 #(
    .INIT(64'h088C88CCEEF7EF77)) 
    \rStoredData[1]_i_103__1 
       (.I0(s_axis_video_tdata[6]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[1]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[0]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[1]_i_103__1_n_0 ));
  LUT6 #(
    .INIT(64'h5F4F0F050520A0B0)) 
    \rStoredData[1]_i_104__1 
       (.I0(s_axis_video_tdata[6]),
        .I1(s_axis_video_tdata[0]),
        .I2(s_axis_video_tdata[4]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[1]_i_104__1_n_0 ));
  LUT6 #(
    .INIT(64'hE361717961617978)) 
    \rStoredData[1]_i_105__1 
       (.I0(s_axis_video_tdata[6]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[0]),
        .O(\rStoredData[1]_i_105__1_n_0 ));
  LUT6 #(
    .INIT(64'h9888E6E68EEE7777)) 
    \rStoredData[1]_i_106__1 
       (.I0(s_axis_video_tdata[6]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[1]),
        .I3(s_axis_video_tdata[0]),
        .I4(s_axis_video_tdata[3]),
        .I5(s_axis_video_tdata[2]),
        .O(\rStoredData[1]_i_106__1_n_0 ));
  LUT6 #(
    .INIT(64'h5075EFAFF5F78A0A)) 
    \rStoredData[1]_i_107__1 
       (.I0(s_axis_video_tdata[6]),
        .I1(s_axis_video_tdata[0]),
        .I2(s_axis_video_tdata[4]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[3]),
        .I5(s_axis_video_tdata[2]),
        .O(\rStoredData[1]_i_107__1_n_0 ));
  LUT6 #(
    .INIT(64'hF2B4B024B024B42D)) 
    \rStoredData[1]_i_108__1 
       (.I0(s_axis_video_tdata[6]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[0]),
        .O(\rStoredData[1]_i_108__1_n_0 ));
  LUT6 #(
    .INIT(64'h080000F0F0F3FFFF)) 
    \rStoredData[1]_i_109__1 
       (.I0(s_axis_video_tdata[0]),
        .I1(s_axis_video_tdata[6]),
        .I2(s_axis_video_tdata[4]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[1]_i_109__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rStoredData[1]_i_10__1 
       (.I0(\rStoredData_reg[1]_i_27__1_n_0 ),
        .I1(\rStoredData_reg[1]_i_28__1_n_0 ),
        .I2(s_axis_video_tdata[9]),
        .I3(\rStoredData_reg[1]_i_29__1_n_0 ),
        .I4(s_axis_video_tdata[8]),
        .I5(\rStoredData_reg[1]_i_30__1_n_0 ),
        .O(\rStoredData[1]_i_10__1_n_0 ));
  LUT5 #(
    .INIT(32'h9DCCDC44)) 
    \rStoredData[1]_i_110__1 
       (.I0(s_axis_video_tdata[4]),
        .I1(s_axis_video_tdata[3]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[1]),
        .O(\rStoredData[1]_i_110__1_n_0 ));
  LUT6 #(
    .INIT(64'h0F0F0F0F0F0F0FF4)) 
    \rStoredData[1]_i_111__1 
       (.I0(s_axis_video_tdata[4]),
        .I1(s_axis_video_tdata[6]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[0]),
        .O(\rStoredData[1]_i_111__1_n_0 ));
  LUT6 #(
    .INIT(64'h004F0000FFB0FFFF)) 
    \rStoredData[1]_i_112__1 
       (.I0(s_axis_video_tdata[0]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[1]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[6]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[1]_i_112__1_n_0 ));
  LUT6 #(
    .INIT(64'hAA67551955558AAA)) 
    \rStoredData[1]_i_113__1 
       (.I0(s_axis_video_tdata[6]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[3]),
        .I5(s_axis_video_tdata[2]),
        .O(\rStoredData[1]_i_113__1_n_0 ));
  LUT6 #(
    .INIT(64'h555D55D9BAAAAAA2)) 
    \rStoredData[1]_i_114__1 
       (.I0(s_axis_video_tdata[6]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[1]_i_114__1_n_0 ));
  LUT6 #(
    .INIT(64'h3232C4C817C799B8)) 
    \rStoredData[1]_i_115__1 
       (.I0(s_axis_video_tdata[6]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[0]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[1]),
        .O(\rStoredData[1]_i_115__1_n_0 ));
  LUT6 #(
    .INIT(64'h8ACAD2D7F7F53520)) 
    \rStoredData[1]_i_116__1 
       (.I0(s_axis_video_tdata[6]),
        .I1(s_axis_video_tdata[3]),
        .I2(s_axis_video_tdata[4]),
        .I3(s_axis_video_tdata[0]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[2]),
        .O(\rStoredData[1]_i_116__1_n_0 ));
  LUT6 #(
    .INIT(64'h40FDAF500AD0AF00)) 
    \rStoredData[1]_i_117__0 
       (.I0(s_axis_video_tdata[6]),
        .I1(s_axis_video_tdata[0]),
        .I2(s_axis_video_tdata[4]),
        .I3(s_axis_video_tdata[3]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[1]),
        .O(\rStoredData[1]_i_117__0_n_0 ));
  LUT6 #(
    .INIT(64'h5A5A496D5A5BE5A5)) 
    \rStoredData[1]_i_118__0 
       (.I0(s_axis_video_tdata[6]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[0]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[1]),
        .O(\rStoredData[1]_i_118__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \rStoredData[1]_i_1__1 
       (.I0(\rStoredData[1]_i_2__1_n_0 ),
        .I1(\rStoredData[1]_i_3__1_n_0 ),
        .I2(sGammaReg[2]),
        .O(\rStoredData[1]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rStoredData[1]_i_2__1 
       (.I0(\rStoredData_reg[1]_i_4__0_n_0 ),
        .I1(\rStoredData_reg[1]_i_5__1_n_0 ),
        .I2(s_axis_video_tdata[8]),
        .I3(\rStoredData_reg[1]_i_6__1_n_0 ),
        .I4(s_axis_video_tdata[9]),
        .I5(\rStoredData_reg[1]_i_7__1_n_0 ),
        .O(\rStoredData[1]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'h334C32CCCCCCCCCC)) 
    \rStoredData[1]_i_31__0 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[1]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[0]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[1]_i_31__0_n_0 ));
  LUT6 #(
    .INIT(64'h3B3C3C3CCCCCCCCC)) 
    \rStoredData[1]_i_32 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[2]),
        .I3(s_axis_video_tdata[0]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[1]_i_32_n_0 ));
  LUT6 #(
    .INIT(64'h23DDFF00FF00FF00)) 
    \rStoredData[1]_i_33__1 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[1]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[4]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[1]_i_33__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFCFFFF00010000)) 
    \rStoredData[1]_i_34__1 
       (.I0(s_axis_video_tdata[0]),
        .I1(s_axis_video_tdata[1]),
        .I2(s_axis_video_tdata[2]),
        .I3(s_axis_video_tdata[3]),
        .I4(s_axis_video_tdata[5]),
        .I5(s_axis_video_tdata[4]),
        .O(\rStoredData[1]_i_34__1_n_0 ));
  LUT6 #(
    .INIT(64'hFF77F7551008008A)) 
    \rStoredData[1]_i_35__1 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[1]_i_35__1_n_0 ));
  LUT6 #(
    .INIT(64'h98E6AA758A77AE55)) 
    \rStoredData[1]_i_36__1 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[3]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[1]),
        .O(\rStoredData[1]_i_36__1_n_0 ));
  LUT6 #(
    .INIT(64'h9AA696A692A696A5)) 
    \rStoredData[1]_i_37__1 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[0]),
        .O(\rStoredData[1]_i_37__1_n_0 ));
  LUT6 #(
    .INIT(64'hAF5AAA580A501A75)) 
    \rStoredData[1]_i_38__1 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[0]),
        .I2(s_axis_video_tdata[4]),
        .I3(s_axis_video_tdata[3]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[2]),
        .O(\rStoredData[1]_i_38__1_n_0 ));
  LUT6 #(
    .INIT(64'h66444CCDDDD9999B)) 
    \rStoredData[1]_i_39__1 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[1]_i_39__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rStoredData[1]_i_3__1 
       (.I0(\rStoredData[1]_i_8__1_n_0 ),
        .I1(\rStoredData[1]_i_9__1_n_0 ),
        .I2(sGammaReg[0]),
        .I3(\rStoredData[1]_i_10__1_n_0 ),
        .I4(sGammaReg[1]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[1]_i_3__1_n_0 ));
  LUT6 #(
    .INIT(64'hA0807FFF0515A8A8)) 
    \rStoredData[1]_i_40__1 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[1]),
        .I2(s_axis_video_tdata[2]),
        .I3(s_axis_video_tdata[0]),
        .I4(s_axis_video_tdata[4]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[1]_i_40__1_n_0 ));
  LUT6 #(
    .INIT(64'hCCCDCDCD9393B333)) 
    \rStoredData[1]_i_41__1 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[2]),
        .I3(s_axis_video_tdata[0]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[1]_i_41__1_n_0 ));
  LUT6 #(
    .INIT(64'h6C4CCCCCCCCDCDC9)) 
    \rStoredData[1]_i_42__1 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[2]),
        .I3(s_axis_video_tdata[0]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[1]_i_42__1_n_0 ));
  LUT6 #(
    .INIT(64'h2387F973E813DC6C)) 
    \rStoredData[1]_i_43__1 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[0]),
        .O(\rStoredData[1]_i_43__1_n_0 ));
  LUT6 #(
    .INIT(64'hD2F5D5B52D2A280A)) 
    \rStoredData[1]_i_44__1 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[3]),
        .I2(s_axis_video_tdata[4]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[0]),
        .I5(s_axis_video_tdata[2]),
        .O(\rStoredData[1]_i_44__1_n_0 ));
  LUT6 #(
    .INIT(64'hA5A4A6969E1A1B5B)) 
    \rStoredData[1]_i_45__0 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[0]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[2]),
        .O(\rStoredData[1]_i_45__0_n_0 ));
  LUT6 #(
    .INIT(64'h1FA0FF00FF00FE11)) 
    \rStoredData[1]_i_46__0 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[3]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[2]),
        .O(\rStoredData[1]_i_46__0_n_0 ));
  LUT5 #(
    .INIT(32'hD99BB226)) 
    \rStoredData[1]_i_71__1 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[2]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[3]),
        .O(\rStoredData[1]_i_71__1_n_0 ));
  LUT6 #(
    .INIT(64'h324426CC224466DD)) 
    \rStoredData[1]_i_72__1 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[3]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[1]),
        .O(\rStoredData[1]_i_72__1_n_0 ));
  LUT6 #(
    .INIT(64'h9933BB3333223266)) 
    \rStoredData[1]_i_73__1 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[1]_i_73__1_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0F0F3C38F0F0F)) 
    \rStoredData[1]_i_74__1 
       (.I0(s_axis_video_tdata[0]),
        .I1(s_axis_video_tdata[5]),
        .I2(s_axis_video_tdata[4]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[1]_i_74__1_n_0 ));
  LUT6 #(
    .INIT(64'h347CCCCBC333303C)) 
    \rStoredData[1]_i_75__1 
       (.I0(s_axis_video_tdata[0]),
        .I1(s_axis_video_tdata[5]),
        .I2(s_axis_video_tdata[4]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[1]_i_75__1_n_0 ));
  LUT6 #(
    .INIT(64'hA800001557FFFEEA)) 
    \rStoredData[1]_i_76__1 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[1]_i_76__1_n_0 ));
  LUT6 #(
    .INIT(64'h5540F555AAAB00AA)) 
    \rStoredData[1]_i_77__1 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[0]),
        .I2(s_axis_video_tdata[1]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[4]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[1]_i_77__1_n_0 ));
  LUT6 #(
    .INIT(64'h3C3C3B333343C3C4)) 
    \rStoredData[1]_i_78__1 
       (.I0(s_axis_video_tdata[0]),
        .I1(s_axis_video_tdata[5]),
        .I2(s_axis_video_tdata[4]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[1]_i_78__1_n_0 ));
  LUT6 #(
    .INIT(64'h666665555D599999)) 
    \rStoredData[1]_i_79__1 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[1]),
        .I3(s_axis_video_tdata[0]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[1]_i_79__1_n_0 ));
  LUT6 #(
    .INIT(64'h644599995DDD9BBA)) 
    \rStoredData[1]_i_80__1 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[3]),
        .I5(s_axis_video_tdata[2]),
        .O(\rStoredData[1]_i_80__1_n_0 ));
  LUT6 #(
    .INIT(64'hCCDD9BBBDD993332)) 
    \rStoredData[1]_i_81__1 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[3]),
        .I5(s_axis_video_tdata[2]),
        .O(\rStoredData[1]_i_81__1_n_0 ));
  LUT6 #(
    .INIT(64'h324C66CC22CC44DD)) 
    \rStoredData[1]_i_82__1 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[3]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[1]),
        .O(\rStoredData[1]_i_82__1_n_0 ));
  LUT6 #(
    .INIT(64'hAA55ED0043BA36E8)) 
    \rStoredData[1]_i_83__1 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[3]),
        .I5(s_axis_video_tdata[2]),
        .O(\rStoredData[1]_i_83__1_n_0 ));
  LUT6 #(
    .INIT(64'h2232EC22CD6CD9DD)) 
    \rStoredData[1]_i_84__1 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[3]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[2]),
        .O(\rStoredData[1]_i_84__1_n_0 ));
  LUT6 #(
    .INIT(64'h4F00000020FFFFFF)) 
    \rStoredData[1]_i_85__1 
       (.I0(s_axis_video_tdata[4]),
        .I1(s_axis_video_tdata[0]),
        .I2(s_axis_video_tdata[5]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[1]_i_85__1_n_0 ));
  LUT6 #(
    .INIT(64'h0AAF00AAFD54FFD5)) 
    \rStoredData[1]_i_86__1 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[0]),
        .I2(s_axis_video_tdata[1]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[4]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[1]_i_86__1_n_0 ));
  LUT6 #(
    .INIT(64'h2300FCFFFFFF0000)) 
    \rStoredData[1]_i_87__1 
       (.I0(s_axis_video_tdata[4]),
        .I1(s_axis_video_tdata[1]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[5]),
        .I4(s_axis_video_tdata[3]),
        .I5(s_axis_video_tdata[2]),
        .O(\rStoredData[1]_i_87__1_n_0 ));
  LUT6 #(
    .INIT(64'hE7117708558851AA)) 
    \rStoredData[1]_i_88__1 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[3]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[2]),
        .O(\rStoredData[1]_i_88__1_n_0 ));
  LUT6 #(
    .INIT(64'hEF51FF00FF00F708)) 
    \rStoredData[1]_i_89__1 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[3]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[2]),
        .O(\rStoredData[1]_i_89__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rStoredData[1]_i_8__1 
       (.I0(\rStoredData_reg[1]_i_19__1_n_0 ),
        .I1(\rStoredData_reg[1]_i_20__1_n_0 ),
        .I2(s_axis_video_tdata[7]),
        .I3(\rStoredData_reg[1]_i_21__1_n_0 ),
        .I4(s_axis_video_tdata[9]),
        .I5(\rStoredData_reg[1]_i_22__1_n_0 ),
        .O(\rStoredData[1]_i_8__1_n_0 ));
  LUT6 #(
    .INIT(64'hCCFF4CCC3330FB33)) 
    \rStoredData[1]_i_90__1 
       (.I0(s_axis_video_tdata[0]),
        .I1(s_axis_video_tdata[5]),
        .I2(s_axis_video_tdata[1]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[4]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[1]_i_90__1_n_0 ));
  LUT6 #(
    .INIT(64'hEE15AA57887F01EE)) 
    \rStoredData[1]_i_91__1 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[3]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[2]),
        .O(\rStoredData[1]_i_91__1_n_0 ));
  LUT6 #(
    .INIT(64'hE5F1E1F0F0787058)) 
    \rStoredData[1]_i_92__1 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[0]),
        .I5(s_axis_video_tdata[2]),
        .O(\rStoredData[1]_i_92__1_n_0 ));
  LUT6 #(
    .INIT(64'h1E5A70F0F0F0F0E1)) 
    \rStoredData[1]_i_93__1 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[0]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[2]),
        .O(\rStoredData[1]_i_93__1_n_0 ));
  LUT6 #(
    .INIT(64'h5110AEAE0888FFF7)) 
    \rStoredData[1]_i_94__1 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[1]),
        .I3(s_axis_video_tdata[0]),
        .I4(s_axis_video_tdata[3]),
        .I5(s_axis_video_tdata[2]),
        .O(\rStoredData[1]_i_94__1_n_0 ));
  LUT6 #(
    .INIT(64'h0F0F0F0E78F0F0F0)) 
    \rStoredData[1]_i_95__1 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[0]),
        .I5(s_axis_video_tdata[2]),
        .O(\rStoredData[1]_i_95__1_n_0 ));
  LUT6 #(
    .INIT(64'hAEEF5511F7750088)) 
    \rStoredData[1]_i_96__1 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[3]),
        .I5(s_axis_video_tdata[2]),
        .O(\rStoredData[1]_i_96__1_n_0 ));
  LUT6 #(
    .INIT(64'h0F0F0F0F8FF0F0F0)) 
    \rStoredData[1]_i_97__1 
       (.I0(s_axis_video_tdata[4]),
        .I1(s_axis_video_tdata[5]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[0]),
        .I5(s_axis_video_tdata[2]),
        .O(\rStoredData[1]_i_97__1_n_0 ));
  LUT6 #(
    .INIT(64'h0520BAFAA0AADF5F)) 
    \rStoredData[1]_i_98__1 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[0]),
        .I2(s_axis_video_tdata[4]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[3]),
        .I5(s_axis_video_tdata[2]),
        .O(\rStoredData[1]_i_98__1_n_0 ));
  LUT6 #(
    .INIT(64'h4C333CA23D8235C2)) 
    \rStoredData[1]_i_99__1 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[0]),
        .I5(s_axis_video_tdata[1]),
        .O(\rStoredData[1]_i_99__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rStoredData[1]_i_9__1 
       (.I0(\rStoredData_reg[1]_i_23__1_n_0 ),
        .I1(\rStoredData_reg[1]_i_24__1_n_0 ),
        .I2(s_axis_video_tdata[7]),
        .I3(\rStoredData_reg[1]_i_25__1_n_0 ),
        .I4(s_axis_video_tdata[8]),
        .I5(\rStoredData_reg[1]_i_26__1_n_0 ),
        .O(\rStoredData[1]_i_9__1_n_0 ));
  LUT6 #(
    .INIT(64'h00FF7F00FF00FF00)) 
    \rStoredData[2]_i_100__1 
       (.I0(s_axis_video_tdata[1]),
        .I1(s_axis_video_tdata[0]),
        .I2(s_axis_video_tdata[5]),
        .I3(s_axis_video_tdata[4]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[2]_i_100__1_n_0 ));
  LUT6 #(
    .INIT(64'h9CDCDCCCCCCCC4C4)) 
    \rStoredData[2]_i_101__1 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[2]),
        .I3(s_axis_video_tdata[0]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[2]_i_101__1_n_0 ));
  LUT6 #(
    .INIT(64'h3B3C3C3CCCCCCCCC)) 
    \rStoredData[2]_i_102__1 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[2]),
        .I3(s_axis_video_tdata[0]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[2]_i_102__1_n_0 ));
  LUT6 #(
    .INIT(64'hFD00550A40AA00FF)) 
    \rStoredData[2]_i_103__1 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[0]),
        .I2(s_axis_video_tdata[1]),
        .I3(s_axis_video_tdata[4]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[2]_i_103__1_n_0 ));
  LUT6 #(
    .INIT(64'h659955885DAAD9AA)) 
    \rStoredData[2]_i_104__1 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[3]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[2]),
        .O(\rStoredData[2]_i_104__1_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0F0F0F04A500F)) 
    \rStoredData[2]_i_105__1 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[0]),
        .I2(s_axis_video_tdata[4]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[2]_i_105__1_n_0 ));
  LUT6 #(
    .INIT(64'h9B93B3B336262624)) 
    \rStoredData[2]_i_106__1 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[2]),
        .I3(s_axis_video_tdata[0]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[2]_i_106__1_n_0 ));
  LUT6 #(
    .INIT(64'hC4C6C4C223333333)) 
    \rStoredData[2]_i_107__1 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[2]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[0]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[2]_i_107__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rStoredData[2]_i_10__1 
       (.I0(\rStoredData_reg[2]_i_28__1_n_0 ),
        .I1(\rStoredData_reg[2]_i_29__0_n_0 ),
        .I2(s_axis_video_tdata[9]),
        .I3(\rStoredData_reg[2]_i_30__0_n_0 ),
        .I4(s_axis_video_tdata[8]),
        .I5(\rStoredData_reg[2]_i_31__0_n_0 ),
        .O(\rStoredData[2]_i_10__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rStoredData[2]_i_11__1 
       (.I0(\rStoredData_reg[2]_i_32__0_n_0 ),
        .I1(\rStoredData_reg[2]_i_33__0_n_0 ),
        .I2(s_axis_video_tdata[7]),
        .I3(\rStoredData_reg[2]_i_34__0_n_0 ),
        .I4(s_axis_video_tdata[8]),
        .I5(\rStoredData_reg[2]_i_35__0_n_0 ),
        .O(\rStoredData[2]_i_11__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rStoredData[2]_i_12__1 
       (.I0(\rStoredData_reg[2]_i_36__0_n_0 ),
        .I1(\rStoredData_reg[2]_i_37__0_n_0 ),
        .I2(s_axis_video_tdata[8]),
        .I3(\rStoredData_reg[2]_i_38__0_n_0 ),
        .I4(s_axis_video_tdata[7]),
        .I5(\rStoredData_reg[2]_i_39__0_n_0 ),
        .O(\rStoredData[2]_i_12__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rStoredData[2]_i_13__0 
       (.I0(\rStoredData[2]_i_40__1_n_0 ),
        .I1(\rStoredData[2]_i_41__0_n_0 ),
        .I2(s_axis_video_tdata[8]),
        .I3(\rStoredData_reg[2]_i_42__1_n_0 ),
        .I4(s_axis_video_tdata[7]),
        .I5(\rStoredData_reg[2]_i_43__1_n_0 ),
        .O(\rStoredData[2]_i_13__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \rStoredData[2]_i_14__0 
       (.I0(s_axis_video_tdata[4]),
        .I1(s_axis_video_tdata[0]),
        .I2(s_axis_video_tdata[2]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[3]),
        .I5(s_axis_video_tdata[5]),
        .O(\rStoredData[2]_i_14__0_n_0 ));
  LUT6 #(
    .INIT(64'h66AAEAAAAAAAAAAA)) 
    \rStoredData[2]_i_15__0 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[3]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[4]),
        .O(\rStoredData[2]_i_15__0_n_0 ));
  LUT6 #(
    .INIT(64'h6666EAAAAAAAAAAA)) 
    \rStoredData[2]_i_16 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[3]),
        .I2(s_axis_video_tdata[1]),
        .I3(s_axis_video_tdata[0]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[4]),
        .O(\rStoredData[2]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h0FF070F0F0F0F0F0)) 
    \rStoredData[2]_i_17__0 
       (.I0(s_axis_video_tdata[1]),
        .I1(s_axis_video_tdata[0]),
        .I2(s_axis_video_tdata[5]),
        .I3(s_axis_video_tdata[3]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[4]),
        .O(\rStoredData[2]_i_17__0_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \rStoredData[2]_i_1__1 
       (.I0(\rStoredData[2]_i_2__1_n_0 ),
        .I1(\rStoredData[2]_i_3__1_n_0 ),
        .I2(sGammaReg[0]),
        .I3(\rStoredData[2]_i_4__0_n_0 ),
        .I4(sGammaReg[2]),
        .O(\rStoredData[2]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCCCCDD99BB333)) 
    \rStoredData[2]_i_24__0 
       (.I0(s_axis_video_tdata[6]),
        .I1(s_axis_video_tdata[5]),
        .I2(s_axis_video_tdata[1]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[3]),
        .I5(s_axis_video_tdata[4]),
        .O(\rStoredData[2]_i_24__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rStoredData[2]_i_2__1 
       (.I0(\rStoredData[2]_i_5__0_n_0 ),
        .I1(\rStoredData_reg[2]_i_6__1_n_0 ),
        .I2(s_axis_video_tdata[8]),
        .I3(\rStoredData_reg[2]_i_7__1_n_0 ),
        .I4(s_axis_video_tdata[9]),
        .I5(\rStoredData_reg[2]_i_8__1_n_0 ),
        .O(\rStoredData[2]_i_2__1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \rStoredData[2]_i_3__1 
       (.I0(\rStoredData[2]_i_9__1_n_0 ),
        .I1(s_axis_video_tdata[7]),
        .I2(\rStoredData[2]_i_10__1_n_0 ),
        .I3(sGammaReg[1]),
        .I4(\rStoredData[2]_i_11__1_n_0 ),
        .O(\rStoredData[2]_i_3__1_n_0 ));
  LUT6 #(
    .INIT(64'hB0CFFFFFB0CF0000)) 
    \rStoredData[2]_i_40__1 
       (.I0(\rStoredData[3]_i_77__1_n_0 ),
        .I1(s_axis_video_tdata[3]),
        .I2(s_axis_video_tdata[6]),
        .I3(s_axis_video_tdata[4]),
        .I4(s_axis_video_tdata[5]),
        .I5(\rStoredData[2]_i_86__1_n_0 ),
        .O(\rStoredData[2]_i_40__1_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B88B8B8B8B8B)) 
    \rStoredData[2]_i_41__0 
       (.I0(\rStoredData[2]_i_87__1_n_0 ),
        .I1(s_axis_video_tdata[5]),
        .I2(s_axis_video_tdata[4]),
        .I3(s_axis_video_tdata[0]),
        .I4(\rStoredData[7]_i_10__0_n_0 ),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[2]_i_41__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFF8FFFF00010000)) 
    \rStoredData[2]_i_44__0 
       (.I0(s_axis_video_tdata[0]),
        .I1(s_axis_video_tdata[1]),
        .I2(s_axis_video_tdata[2]),
        .I3(s_axis_video_tdata[3]),
        .I4(s_axis_video_tdata[5]),
        .I5(s_axis_video_tdata[4]),
        .O(\rStoredData[2]_i_44__0_n_0 ));
  LUT6 #(
    .INIT(64'h50525A4A0A0F0F0F)) 
    \rStoredData[2]_i_45__1 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[0]),
        .I2(s_axis_video_tdata[4]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[2]_i_45__1_n_0 ));
  LUT6 #(
    .INIT(64'hBB99BB9999DDDDDC)) 
    \rStoredData[2]_i_46__0 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[2]_i_46__0_n_0 ));
  LUT6 #(
    .INIT(64'h5A5A5A4A0A0A0A2F)) 
    \rStoredData[2]_i_47__0 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[0]),
        .I2(s_axis_video_tdata[4]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[2]_i_47__0_n_0 ));
  LUT6 #(
    .INIT(64'hDDD5DD5544444442)) 
    \rStoredData[2]_i_48__0 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[3]),
        .I2(s_axis_video_tdata[1]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[0]),
        .I5(s_axis_video_tdata[4]),
        .O(\rStoredData[2]_i_48__0_n_0 ));
  LUT6 #(
    .INIT(64'hAABBABBBD5555555)) 
    \rStoredData[2]_i_49__0 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[3]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[4]),
        .O(\rStoredData[2]_i_49__0_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \rStoredData[2]_i_4__0 
       (.I0(\rStoredData[2]_i_12__1_n_0 ),
        .I1(s_axis_video_tdata[9]),
        .I2(\rStoredData[2]_i_13__0_n_0 ),
        .I3(sGammaReg[1]),
        .I4(s_axis_video_tdata[4]),
        .O(\rStoredData[2]_i_4__0_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAB9B99DDD)) 
    \rStoredData[2]_i_50__0 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[3]),
        .I2(s_axis_video_tdata[1]),
        .I3(s_axis_video_tdata[0]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[4]),
        .O(\rStoredData[2]_i_50__0_n_0 ));
  LUT6 #(
    .INIT(64'h2A2AAAAAAAAAABBB)) 
    \rStoredData[2]_i_51__0 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[3]),
        .I2(s_axis_video_tdata[1]),
        .I3(s_axis_video_tdata[0]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[4]),
        .O(\rStoredData[2]_i_51__0_n_0 ));
  LUT6 #(
    .INIT(64'h7CB4A5A1A2B3D2DE)) 
    \rStoredData[2]_i_52__0 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[0]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[2]),
        .O(\rStoredData[2]_i_52__0_n_0 ));
  LUT6 #(
    .INIT(64'h6178585A7078585A)) 
    \rStoredData[2]_i_53__1 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[0]),
        .O(\rStoredData[2]_i_53__1_n_0 ));
  LUT6 #(
    .INIT(64'hCC99DD33CDBBD922)) 
    \rStoredData[2]_i_54__1 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[3]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[1]),
        .O(\rStoredData[2]_i_54__1_n_0 ));
  LUT6 #(
    .INIT(64'h38F0F0F0F0F0F0F5)) 
    \rStoredData[2]_i_55__1 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[0]),
        .I2(s_axis_video_tdata[4]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[2]_i_55__1_n_0 ));
  LUT5 #(
    .INIT(32'hAAABFD55)) 
    \rStoredData[2]_i_56__0 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[1]),
        .I2(s_axis_video_tdata[2]),
        .I3(s_axis_video_tdata[3]),
        .I4(s_axis_video_tdata[4]),
        .O(\rStoredData[2]_i_56__0_n_0 ));
  LUT6 #(
    .INIT(64'h5A0A4AAA5A0A0AAF)) 
    \rStoredData[2]_i_57__0 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[0]),
        .I2(s_axis_video_tdata[4]),
        .I3(s_axis_video_tdata[3]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[1]),
        .O(\rStoredData[2]_i_57__0_n_0 ));
  LUT6 #(
    .INIT(64'h0A0A0A0BFFF5FFF5)) 
    \rStoredData[2]_i_58__0 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[0]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[4]),
        .O(\rStoredData[2]_i_58__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEF0F0F000010)) 
    \rStoredData[2]_i_59__0 
       (.I0(s_axis_video_tdata[1]),
        .I1(s_axis_video_tdata[0]),
        .I2(s_axis_video_tdata[5]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[3]),
        .I5(s_axis_video_tdata[4]),
        .O(\rStoredData[2]_i_59__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rStoredData[2]_i_5__0 
       (.I0(\rStoredData[2]_i_14__0_n_0 ),
        .I1(\rStoredData[2]_i_15__0_n_0 ),
        .I2(s_axis_video_tdata[7]),
        .I3(\rStoredData[2]_i_16_n_0 ),
        .I4(s_axis_video_tdata[6]),
        .I5(\rStoredData[2]_i_17__0_n_0 ),
        .O(\rStoredData[2]_i_5__0_n_0 ));
  LUT6 #(
    .INIT(64'hC78F0C3C0F0C3C30)) 
    \rStoredData[2]_i_60__0 
       (.I0(s_axis_video_tdata[0]),
        .I1(s_axis_video_tdata[5]),
        .I2(s_axis_video_tdata[4]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[3]),
        .I5(s_axis_video_tdata[2]),
        .O(\rStoredData[2]_i_60__0_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0F0E5A70F0F0F)) 
    \rStoredData[2]_i_61__0 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[0]),
        .I2(s_axis_video_tdata[4]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[2]_i_61__0_n_0 ));
  LUT6 #(
    .INIT(64'h33333333304C00CC)) 
    \rStoredData[2]_i_62__0 
       (.I0(s_axis_video_tdata[0]),
        .I1(s_axis_video_tdata[5]),
        .I2(s_axis_video_tdata[1]),
        .I3(s_axis_video_tdata[3]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[4]),
        .O(\rStoredData[2]_i_62__0_n_0 ));
  LUT6 #(
    .INIT(64'hC3F3B333C3F33330)) 
    \rStoredData[2]_i_63__0 
       (.I0(s_axis_video_tdata[0]),
        .I1(s_axis_video_tdata[5]),
        .I2(s_axis_video_tdata[4]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[3]),
        .I5(s_axis_video_tdata[1]),
        .O(\rStoredData[2]_i_63__0_n_0 ));
  LUT6 #(
    .INIT(64'h02022222BBBFBFBF)) 
    \rStoredData[2]_i_64__0 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[3]),
        .I2(s_axis_video_tdata[2]),
        .I3(s_axis_video_tdata[0]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[4]),
        .O(\rStoredData[2]_i_64__0_n_0 ));
  LUT6 #(
    .INIT(64'hF5D5F5555002400A)) 
    \rStoredData[2]_i_65__0 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[1]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[0]),
        .I5(s_axis_video_tdata[4]),
        .O(\rStoredData[2]_i_65__0_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0F0F0B00F0F0F)) 
    \rStoredData[2]_i_66__1 
       (.I0(s_axis_video_tdata[0]),
        .I1(s_axis_video_tdata[5]),
        .I2(s_axis_video_tdata[4]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[2]_i_66__1_n_0 ));
  LUT5 #(
    .INIT(32'hD40A00FF)) 
    \rStoredData[2]_i_67__1 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[1]),
        .I2(s_axis_video_tdata[2]),
        .I3(s_axis_video_tdata[4]),
        .I4(s_axis_video_tdata[3]),
        .O(\rStoredData[2]_i_67__1_n_0 ));
  LUT6 #(
    .INIT(64'hEE45BB55B86200BA)) 
    \rStoredData[2]_i_68__1 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[3]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[2]),
        .O(\rStoredData[2]_i_68__1_n_0 ));
  LUT6 #(
    .INIT(64'h55999888AAAAE677)) 
    \rStoredData[2]_i_69__1 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[2]_i_69__1_n_0 ));
  LUT6 #(
    .INIT(64'h0F0F0F7FFFF0F0F0)) 
    \rStoredData[2]_i_78__1 
       (.I0(s_axis_video_tdata[1]),
        .I1(s_axis_video_tdata[0]),
        .I2(s_axis_video_tdata[6]),
        .I3(s_axis_video_tdata[3]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[4]),
        .O(\rStoredData[2]_i_78__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFAAEA80AA00AA55)) 
    \rStoredData[2]_i_79__1 
       (.I0(s_axis_video_tdata[6]),
        .I1(s_axis_video_tdata[0]),
        .I2(s_axis_video_tdata[1]),
        .I3(s_axis_video_tdata[4]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[2]_i_79__1_n_0 ));
  LUT6 #(
    .INIT(64'h9115115577667666)) 
    \rStoredData[2]_i_80__1 
       (.I0(s_axis_video_tdata[6]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[1]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[0]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[2]_i_80__1_n_0 ));
  LUT6 #(
    .INIT(64'h55775776AAAAAAAA)) 
    \rStoredData[2]_i_81__1 
       (.I0(s_axis_video_tdata[6]),
        .I1(s_axis_video_tdata[3]),
        .I2(s_axis_video_tdata[1]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[0]),
        .I5(s_axis_video_tdata[4]),
        .O(\rStoredData[2]_i_81__1_n_0 ));
  LUT5 #(
    .INIT(32'h99955466)) 
    \rStoredData[2]_i_82__1 
       (.I0(s_axis_video_tdata[6]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[1]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[3]),
        .O(\rStoredData[2]_i_82__1_n_0 ));
  LUT6 #(
    .INIT(64'h555555556AAAAAAA)) 
    \rStoredData[2]_i_83__1 
       (.I0(s_axis_video_tdata[6]),
        .I1(s_axis_video_tdata[3]),
        .I2(s_axis_video_tdata[1]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[0]),
        .I5(s_axis_video_tdata[4]),
        .O(\rStoredData[2]_i_83__1_n_0 ));
  LUT6 #(
    .INIT(64'hF333B3333C0C0C4C)) 
    \rStoredData[2]_i_84__1 
       (.I0(s_axis_video_tdata[0]),
        .I1(s_axis_video_tdata[6]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[4]),
        .O(\rStoredData[2]_i_84__1_n_0 ));
  LUT6 #(
    .INIT(64'h666666666662222B)) 
    \rStoredData[2]_i_85__1 
       (.I0(s_axis_video_tdata[6]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[2]_i_85__1_n_0 ));
  LUT6 #(
    .INIT(64'h6233633333B93B99)) 
    \rStoredData[2]_i_86__1 
       (.I0(s_axis_video_tdata[6]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[1]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[0]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[2]_i_86__1_n_0 ));
  LUT6 #(
    .INIT(64'hECFF03000000FFFF)) 
    \rStoredData[2]_i_87__1 
       (.I0(s_axis_video_tdata[0]),
        .I1(s_axis_video_tdata[2]),
        .I2(s_axis_video_tdata[1]),
        .I3(s_axis_video_tdata[6]),
        .I4(s_axis_video_tdata[4]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[2]_i_87__1_n_0 ));
  LUT5 #(
    .INIT(32'hC70C3C3C)) 
    \rStoredData[2]_i_88__1 
       (.I0(s_axis_video_tdata[1]),
        .I1(s_axis_video_tdata[6]),
        .I2(s_axis_video_tdata[4]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[3]),
        .O(\rStoredData[2]_i_88__1_n_0 ));
  LUT6 #(
    .INIT(64'h999399B333263266)) 
    \rStoredData[2]_i_89__1 
       (.I0(s_axis_video_tdata[6]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[1]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[0]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[2]_i_89__1_n_0 ));
  LUT6 #(
    .INIT(64'hAF509F055F2558A0)) 
    \rStoredData[2]_i_90__1 
       (.I0(s_axis_video_tdata[6]),
        .I1(s_axis_video_tdata[0]),
        .I2(s_axis_video_tdata[4]),
        .I3(s_axis_video_tdata[3]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[2]),
        .O(\rStoredData[2]_i_90__1_n_0 ));
  LUT6 #(
    .INIT(64'h8FCFD2D2CBDAD2D2)) 
    \rStoredData[2]_i_91__1 
       (.I0(s_axis_video_tdata[6]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[0]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[1]),
        .O(\rStoredData[2]_i_91__1_n_0 ));
  LUT6 #(
    .INIT(64'h30EFFF00FF00FF00)) 
    \rStoredData[2]_i_92__1 
       (.I0(s_axis_video_tdata[0]),
        .I1(s_axis_video_tdata[1]),
        .I2(s_axis_video_tdata[5]),
        .I3(s_axis_video_tdata[4]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[2]_i_92__1_n_0 ));
  LUT6 #(
    .INIT(64'h00022222BFFFFFDD)) 
    \rStoredData[2]_i_93__1 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[3]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[4]),
        .O(\rStoredData[2]_i_93__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFD40000000)) 
    \rStoredData[2]_i_94__1 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[3]),
        .I2(s_axis_video_tdata[1]),
        .I3(s_axis_video_tdata[0]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[4]),
        .O(\rStoredData[2]_i_94__1_n_0 ));
  LUT6 #(
    .INIT(64'hF0FF8F0FFFFF0000)) 
    \rStoredData[2]_i_95__1 
       (.I0(s_axis_video_tdata[1]),
        .I1(s_axis_video_tdata[0]),
        .I2(s_axis_video_tdata[5]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[4]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[2]_i_95__1_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCCCCDDB9393B3)) 
    \rStoredData[2]_i_96__1 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[2]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[0]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[2]_i_96__1_n_0 ));
  LUT5 #(
    .INIT(32'h0002BFFF)) 
    \rStoredData[2]_i_97__1 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[3]),
        .I2(s_axis_video_tdata[2]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[4]),
        .O(\rStoredData[2]_i_97__1_n_0 ));
  LUT6 #(
    .INIT(64'h2C4C6CCCCCCCCCCD)) 
    \rStoredData[2]_i_98__1 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[2]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[0]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[2]_i_98__1_n_0 ));
  LUT6 #(
    .INIT(64'h00FF4CFFCF33FF00)) 
    \rStoredData[2]_i_99__1 
       (.I0(s_axis_video_tdata[0]),
        .I1(s_axis_video_tdata[5]),
        .I2(s_axis_video_tdata[1]),
        .I3(s_axis_video_tdata[4]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[2]_i_99__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rStoredData[2]_i_9__1 
       (.I0(\rStoredData[2]_i_24__0_n_0 ),
        .I1(\rStoredData_reg[2]_i_25__1_n_0 ),
        .I2(s_axis_video_tdata[9]),
        .I3(\rStoredData_reg[2]_i_26__1_n_0 ),
        .I4(s_axis_video_tdata[8]),
        .I5(\rStoredData_reg[2]_i_27__1_n_0 ),
        .O(\rStoredData[2]_i_9__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rStoredData[3]_i_10__1 
       (.I0(\rStoredData[3]_i_27__0_n_0 ),
        .I1(\rStoredData[3]_i_28__0_n_0 ),
        .I2(s_axis_video_tdata[9]),
        .I3(\rStoredData[3]_i_29__0_n_0 ),
        .I4(s_axis_video_tdata[8]),
        .I5(\rStoredData_reg[3]_i_30__0_n_0 ),
        .O(\rStoredData[3]_i_10__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rStoredData[3]_i_11__1 
       (.I0(\rStoredData[3]_i_31__1_n_0 ),
        .I1(\rStoredData_reg[3]_i_32__1_n_0 ),
        .I2(s_axis_video_tdata[7]),
        .I3(\rStoredData_reg[3]_i_33__1_n_0 ),
        .I4(s_axis_video_tdata[8]),
        .I5(\rStoredData_reg[3]_i_34__0_n_0 ),
        .O(\rStoredData[3]_i_11__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rStoredData[3]_i_12__1 
       (.I0(\rStoredData_reg[3]_i_35__0_n_0 ),
        .I1(\rStoredData_reg[3]_i_36__0_n_0 ),
        .I2(s_axis_video_tdata[8]),
        .I3(\rStoredData_reg[3]_i_37__0_n_0 ),
        .I4(s_axis_video_tdata[7]),
        .I5(\rStoredData_reg[3]_i_38__0_n_0 ),
        .O(\rStoredData[3]_i_12__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rStoredData[3]_i_13__0 
       (.I0(\rStoredData[3]_i_39__1_n_0 ),
        .I1(\rStoredData[3]_i_40__1_n_0 ),
        .I2(s_axis_video_tdata[8]),
        .I3(\rStoredData_reg[3]_i_41__0_n_0 ),
        .I4(s_axis_video_tdata[7]),
        .I5(\rStoredData_reg[3]_i_42__0_n_0 ),
        .O(\rStoredData[3]_i_13__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \rStoredData[3]_i_14__0 
       (.I0(s_axis_video_tdata[4]),
        .I1(s_axis_video_tdata[1]),
        .I2(s_axis_video_tdata[2]),
        .I3(s_axis_video_tdata[3]),
        .I4(s_axis_video_tdata[5]),
        .O(\rStoredData[3]_i_14__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \rStoredData[3]_i_15__1 
       (.I0(s_axis_video_tdata[3]),
        .I1(s_axis_video_tdata[2]),
        .I2(s_axis_video_tdata[4]),
        .O(\rStoredData[3]_i_15__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT5 #(
    .INIT(32'hAA800000)) 
    \rStoredData[3]_i_16__0 
       (.I0(s_axis_video_tdata[3]),
        .I1(s_axis_video_tdata[1]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[4]),
        .O(\rStoredData[3]_i_16__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFAFAFAF0FC000C0)) 
    \rStoredData[3]_i_17__1 
       (.I0(\rStoredData[6]_i_7__0_n_0 ),
        .I1(\rStoredData[3]_i_43_n_0 ),
        .I2(s_axis_video_tdata[6]),
        .I3(s_axis_video_tdata[4]),
        .I4(\rStoredData[5]_i_30_n_0 ),
        .I5(s_axis_video_tdata[5]),
        .O(\rStoredData[3]_i_17__1_n_0 ));
  LUT6 #(
    .INIT(64'h333333333FFC7CFC)) 
    \rStoredData[3]_i_18__1 
       (.I0(s_axis_video_tdata[0]),
        .I1(s_axis_video_tdata[5]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[4]),
        .O(\rStoredData[3]_i_18__1_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCCFCCF3F3B3B3)) 
    \rStoredData[3]_i_19__0 
       (.I0(\rStoredData[5]_i_17__0_n_0 ),
        .I1(s_axis_video_tdata[6]),
        .I2(s_axis_video_tdata[4]),
        .I3(\rStoredData[3]_i_44_n_0 ),
        .I4(s_axis_video_tdata[3]),
        .I5(s_axis_video_tdata[5]),
        .O(\rStoredData[3]_i_19__0_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \rStoredData[3]_i_1__1 
       (.I0(\rStoredData[3]_i_2__0_n_0 ),
        .I1(\rStoredData[3]_i_3__0_n_0 ),
        .I2(sGammaReg[0]),
        .I3(\rStoredData[3]_i_4__1_n_0 ),
        .I4(sGammaReg[2]),
        .O(\rStoredData[3]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hA0F0A0F0F0CFF0C0)) 
    \rStoredData[3]_i_20__1 
       (.I0(\rStoredData[3]_i_45__0_n_0 ),
        .I1(\rStoredData[3]_i_46__0_n_0 ),
        .I2(s_axis_video_tdata[6]),
        .I3(s_axis_video_tdata[4]),
        .I4(\rStoredData[3]_i_47__0_n_0 ),
        .I5(s_axis_video_tdata[5]),
        .O(\rStoredData[3]_i_20__1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAB9B9B99D)) 
    \rStoredData[3]_i_23__0 
       (.I0(s_axis_video_tdata[6]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[5]),
        .O(\rStoredData[3]_i_23__0_n_0 ));
  LUT6 #(
    .INIT(64'hDDD5DDD544444442)) 
    \rStoredData[3]_i_24__1 
       (.I0(s_axis_video_tdata[6]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[2]),
        .I3(s_axis_video_tdata[3]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[5]),
        .O(\rStoredData[3]_i_24__1_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFF0F08F0F8F0F)) 
    \rStoredData[3]_i_27__0 
       (.I0(s_axis_video_tdata[3]),
        .I1(s_axis_video_tdata[2]),
        .I2(s_axis_video_tdata[6]),
        .I3(s_axis_video_tdata[4]),
        .I4(\rStoredData[3]_i_56__1_n_0 ),
        .I5(s_axis_video_tdata[5]),
        .O(\rStoredData[3]_i_27__0_n_0 ));
  LUT6 #(
    .INIT(64'hB888B88888BB8888)) 
    \rStoredData[3]_i_28__0 
       (.I0(\rStoredData[5]_i_35__0_n_0 ),
        .I1(s_axis_video_tdata[6]),
        .I2(\rStoredData[3]_i_57__0_n_0 ),
        .I3(s_axis_video_tdata[5]),
        .I4(\rStoredData[3]_i_58__0_n_0 ),
        .I5(s_axis_video_tdata[4]),
        .O(\rStoredData[3]_i_28__0_n_0 ));
  LUT6 #(
    .INIT(64'h33333333393CBCBC)) 
    \rStoredData[3]_i_29__0 
       (.I0(s_axis_video_tdata[6]),
        .I1(s_axis_video_tdata[5]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[4]),
        .O(\rStoredData[3]_i_29__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rStoredData[3]_i_2__0 
       (.I0(\rStoredData[3]_i_5__1_n_0 ),
        .I1(\rStoredData[3]_i_6__1_n_0 ),
        .I2(s_axis_video_tdata[8]),
        .I3(\rStoredData_reg[3]_i_7__0_n_0 ),
        .I4(s_axis_video_tdata[9]),
        .I5(\rStoredData_reg[3]_i_8__0_n_0 ),
        .O(\rStoredData[3]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hEFEAE5E5EFEA4040)) 
    \rStoredData[3]_i_31__1 
       (.I0(s_axis_video_tdata[6]),
        .I1(\rStoredData[3]_i_61__1_n_0 ),
        .I2(s_axis_video_tdata[9]),
        .I3(\rStoredData[5]_i_22__0_n_0 ),
        .I4(s_axis_video_tdata[5]),
        .I5(\rStoredData[3]_i_62__0_n_0 ),
        .O(\rStoredData[3]_i_31__1_n_0 ));
  LUT6 #(
    .INIT(64'hB3F3B3C3CFCCCCCC)) 
    \rStoredData[3]_i_39__1 
       (.I0(\rStoredData[3]_i_77__1_n_0 ),
        .I1(s_axis_video_tdata[5]),
        .I2(s_axis_video_tdata[6]),
        .I3(s_axis_video_tdata[3]),
        .I4(\rStoredData[5]_i_17__0_n_0 ),
        .I5(s_axis_video_tdata[4]),
        .O(\rStoredData[3]_i_39__1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \rStoredData[3]_i_3__0 
       (.I0(\rStoredData[3]_i_9__1_n_0 ),
        .I1(s_axis_video_tdata[7]),
        .I2(\rStoredData[3]_i_10__1_n_0 ),
        .I3(sGammaReg[1]),
        .I4(\rStoredData[3]_i_11__1_n_0 ),
        .O(\rStoredData[3]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'h333333333CBC3C8C)) 
    \rStoredData[3]_i_40__1 
       (.I0(s_axis_video_tdata[6]),
        .I1(s_axis_video_tdata[5]),
        .I2(s_axis_video_tdata[3]),
        .I3(\rStoredData[7]_i_10__0_n_0 ),
        .I4(s_axis_video_tdata[0]),
        .I5(s_axis_video_tdata[4]),
        .O(\rStoredData[3]_i_40__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \rStoredData[3]_i_43 
       (.I0(s_axis_video_tdata[2]),
        .I1(s_axis_video_tdata[1]),
        .I2(s_axis_video_tdata[3]),
        .O(\rStoredData[3]_i_43_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \rStoredData[3]_i_44 
       (.I0(s_axis_video_tdata[2]),
        .I1(s_axis_video_tdata[1]),
        .I2(s_axis_video_tdata[0]),
        .O(\rStoredData[3]_i_44_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \rStoredData[3]_i_45__0 
       (.I0(s_axis_video_tdata[1]),
        .I1(s_axis_video_tdata[2]),
        .I2(s_axis_video_tdata[3]),
        .O(\rStoredData[3]_i_45__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT4 #(
    .INIT(16'hFFEA)) 
    \rStoredData[3]_i_46__0 
       (.I0(s_axis_video_tdata[2]),
        .I1(s_axis_video_tdata[0]),
        .I2(s_axis_video_tdata[1]),
        .I3(s_axis_video_tdata[3]),
        .O(\rStoredData[3]_i_46__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT4 #(
    .INIT(16'h15FF)) 
    \rStoredData[3]_i_47__0 
       (.I0(s_axis_video_tdata[2]),
        .I1(s_axis_video_tdata[0]),
        .I2(s_axis_video_tdata[1]),
        .I3(s_axis_video_tdata[3]),
        .O(\rStoredData[3]_i_47__0_n_0 ));
  LUT6 #(
    .INIT(64'hA724273526752678)) 
    \rStoredData[3]_i_48__0 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[0]),
        .I5(s_axis_video_tdata[1]),
        .O(\rStoredData[3]_i_48__0_n_0 ));
  LUT6 #(
    .INIT(64'h02220222BFFDFFFD)) 
    \rStoredData[3]_i_49__0 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[3]),
        .I2(s_axis_video_tdata[1]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[0]),
        .I5(s_axis_video_tdata[4]),
        .O(\rStoredData[3]_i_49__0_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \rStoredData[3]_i_4__1 
       (.I0(\rStoredData[3]_i_12__1_n_0 ),
        .I1(s_axis_video_tdata[9]),
        .I2(\rStoredData[3]_i_13__0_n_0 ),
        .I3(sGammaReg[1]),
        .I4(s_axis_video_tdata[5]),
        .O(\rStoredData[3]_i_4__1_n_0 ));
  LUT6 #(
    .INIT(64'h5555555544226222)) 
    \rStoredData[3]_i_50__1 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[3]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[4]),
        .O(\rStoredData[3]_i_50__1_n_0 ));
  LUT6 #(
    .INIT(64'h9555555555555550)) 
    \rStoredData[3]_i_51__0 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[0]),
        .I2(s_axis_video_tdata[4]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[3]_i_51__0_n_0 ));
  LUT6 #(
    .INIT(64'h55FF55FEAAAAAAAA)) 
    \rStoredData[3]_i_52__0 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[0]),
        .I2(s_axis_video_tdata[2]),
        .I3(s_axis_video_tdata[3]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[4]),
        .O(\rStoredData[3]_i_52__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \rStoredData[3]_i_53__0 
       (.I0(s_axis_video_tdata[4]),
        .I1(s_axis_video_tdata[1]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[0]),
        .I5(s_axis_video_tdata[5]),
        .O(\rStoredData[3]_i_53__0_n_0 ));
  LUT6 #(
    .INIT(64'h333030304CCCCCCC)) 
    \rStoredData[3]_i_54__0 
       (.I0(s_axis_video_tdata[0]),
        .I1(s_axis_video_tdata[5]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[4]),
        .O(\rStoredData[3]_i_54__0_n_0 ));
  LUT6 #(
    .INIT(64'h33333333334C30CC)) 
    \rStoredData[3]_i_55__1 
       (.I0(s_axis_video_tdata[0]),
        .I1(s_axis_video_tdata[5]),
        .I2(s_axis_video_tdata[2]),
        .I3(s_axis_video_tdata[3]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[4]),
        .O(\rStoredData[3]_i_55__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT4 #(
    .INIT(16'h007F)) 
    \rStoredData[3]_i_56__1 
       (.I0(s_axis_video_tdata[2]),
        .I1(s_axis_video_tdata[1]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[3]),
        .O(\rStoredData[3]_i_56__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \rStoredData[3]_i_57__0 
       (.I0(s_axis_video_tdata[2]),
        .I1(s_axis_video_tdata[1]),
        .I2(s_axis_video_tdata[3]),
        .O(\rStoredData[3]_i_57__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT4 #(
    .INIT(16'h07FF)) 
    \rStoredData[3]_i_58__0 
       (.I0(s_axis_video_tdata[1]),
        .I1(s_axis_video_tdata[0]),
        .I2(s_axis_video_tdata[2]),
        .I3(s_axis_video_tdata[3]),
        .O(\rStoredData[3]_i_58__0_n_0 ));
  LUT6 #(
    .INIT(64'h33222222677755CC)) 
    \rStoredData[3]_i_59__1 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[3]_i_59__1_n_0 ));
  LUT6 #(
    .INIT(64'hFCBBFC88FF88FF88)) 
    \rStoredData[3]_i_5__1 
       (.I0(\rStoredData[3]_i_14__0_n_0 ),
        .I1(s_axis_video_tdata[7]),
        .I2(\rStoredData[3]_i_15__1_n_0 ),
        .I3(s_axis_video_tdata[6]),
        .I4(\rStoredData[3]_i_16__0_n_0 ),
        .I5(s_axis_video_tdata[5]),
        .O(\rStoredData[3]_i_5__1_n_0 ));
  LUT5 #(
    .INIT(32'h3B9DBB9C)) 
    \rStoredData[3]_i_60__1 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[2]),
        .I3(s_axis_video_tdata[3]),
        .I4(s_axis_video_tdata[1]),
        .O(\rStoredData[3]_i_60__1_n_0 ));
  LUT6 #(
    .INIT(64'h55577777EAAAAAAA)) 
    \rStoredData[3]_i_61__1 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[3]),
        .I2(s_axis_video_tdata[1]),
        .I3(s_axis_video_tdata[0]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[4]),
        .O(\rStoredData[3]_i_61__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \rStoredData[3]_i_62__0 
       (.I0(s_axis_video_tdata[3]),
        .I1(s_axis_video_tdata[2]),
        .I2(s_axis_video_tdata[4]),
        .O(\rStoredData[3]_i_62__0_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA888FFFFFFFF)) 
    \rStoredData[3]_i_69__1 
       (.I0(s_axis_video_tdata[4]),
        .I1(s_axis_video_tdata[2]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[3]),
        .I5(s_axis_video_tdata[6]),
        .O(\rStoredData[3]_i_69__1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \rStoredData[3]_i_6__1 
       (.I0(\rStoredData[3]_i_17__1_n_0 ),
        .I1(s_axis_video_tdata[7]),
        .I2(\rStoredData[3]_i_18__1_n_0 ),
        .I3(s_axis_video_tdata[6]),
        .I4(\rStoredData[4]_i_18__1_n_0 ),
        .O(\rStoredData[3]_i_6__1_n_0 ));
  LUT4 #(
    .INIT(16'hFF01)) 
    \rStoredData[3]_i_70__1 
       (.I0(s_axis_video_tdata[4]),
        .I1(s_axis_video_tdata[2]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[6]),
        .O(\rStoredData[3]_i_70__1_n_0 ));
  LUT6 #(
    .INIT(64'h4444400022222222)) 
    \rStoredData[3]_i_71__1 
       (.I0(s_axis_video_tdata[6]),
        .I1(s_axis_video_tdata[3]),
        .I2(s_axis_video_tdata[1]),
        .I3(s_axis_video_tdata[0]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[4]),
        .O(\rStoredData[3]_i_71__1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA080FFFFFFFF)) 
    \rStoredData[3]_i_72__1 
       (.I0(s_axis_video_tdata[4]),
        .I1(s_axis_video_tdata[1]),
        .I2(s_axis_video_tdata[2]),
        .I3(s_axis_video_tdata[0]),
        .I4(s_axis_video_tdata[3]),
        .I5(s_axis_video_tdata[6]),
        .O(\rStoredData[3]_i_72__1_n_0 ));
  LUT5 #(
    .INIT(32'hBBBFFFDD)) 
    \rStoredData[3]_i_73__0 
       (.I0(s_axis_video_tdata[6]),
        .I1(s_axis_video_tdata[3]),
        .I2(s_axis_video_tdata[1]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[4]),
        .O(\rStoredData[3]_i_73__0_n_0 ));
  LUT6 #(
    .INIT(64'h1555555500000000)) 
    \rStoredData[3]_i_74__1 
       (.I0(s_axis_video_tdata[4]),
        .I1(s_axis_video_tdata[0]),
        .I2(s_axis_video_tdata[2]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[3]),
        .I5(s_axis_video_tdata[6]),
        .O(\rStoredData[3]_i_74__1_n_0 ));
  LUT6 #(
    .INIT(64'h0001555500000000)) 
    \rStoredData[3]_i_75__1 
       (.I0(s_axis_video_tdata[4]),
        .I1(s_axis_video_tdata[0]),
        .I2(s_axis_video_tdata[1]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[3]),
        .I5(s_axis_video_tdata[6]),
        .O(\rStoredData[3]_i_75__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFD55555554)) 
    \rStoredData[3]_i_76__1 
       (.I0(s_axis_video_tdata[6]),
        .I1(s_axis_video_tdata[3]),
        .I2(s_axis_video_tdata[1]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[0]),
        .I5(s_axis_video_tdata[4]),
        .O(\rStoredData[3]_i_76__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'h07)) 
    \rStoredData[3]_i_77__1 
       (.I0(s_axis_video_tdata[1]),
        .I1(s_axis_video_tdata[0]),
        .I2(s_axis_video_tdata[2]),
        .O(\rStoredData[3]_i_77__1_n_0 ));
  LUT5 #(
    .INIT(32'hFFF08000)) 
    \rStoredData[3]_i_78__1 
       (.I0(s_axis_video_tdata[2]),
        .I1(s_axis_video_tdata[1]),
        .I2(s_axis_video_tdata[6]),
        .I3(s_axis_video_tdata[3]),
        .I4(s_axis_video_tdata[4]),
        .O(\rStoredData[3]_i_78__1_n_0 ));
  LUT6 #(
    .INIT(64'h0000011177777FFF)) 
    \rStoredData[3]_i_79__1 
       (.I0(s_axis_video_tdata[6]),
        .I1(s_axis_video_tdata[3]),
        .I2(s_axis_video_tdata[1]),
        .I3(s_axis_video_tdata[0]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[4]),
        .O(\rStoredData[3]_i_79__1_n_0 ));
  LUT6 #(
    .INIT(64'h5F4F0F0F0F0A2AAA)) 
    \rStoredData[3]_i_80__1 
       (.I0(s_axis_video_tdata[6]),
        .I1(s_axis_video_tdata[0]),
        .I2(s_axis_video_tdata[4]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[3]_i_80__1_n_0 ));
  LUT6 #(
    .INIT(64'hEABBABBB99999999)) 
    \rStoredData[3]_i_81__1 
       (.I0(s_axis_video_tdata[6]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[1]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[0]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[3]_i_81__1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAABBB9999D)) 
    \rStoredData[3]_i_82__1 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[3]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[4]),
        .O(\rStoredData[3]_i_82__1_n_0 ));
  LUT5 #(
    .INIT(32'hAAA81555)) 
    \rStoredData[3]_i_83__1 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[3]),
        .I2(s_axis_video_tdata[2]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[4]),
        .O(\rStoredData[3]_i_83__1_n_0 ));
  LUT6 #(
    .INIT(64'h6A2A2AAAAAAAAAAB)) 
    \rStoredData[3]_i_84__1 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[2]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[0]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[3]_i_84__1_n_0 ));
  LUT6 #(
    .INIT(64'hC083C30333333333)) 
    \rStoredData[3]_i_85__1 
       (.I0(s_axis_video_tdata[0]),
        .I1(s_axis_video_tdata[5]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[1]),
        .I5(s_axis_video_tdata[4]),
        .O(\rStoredData[3]_i_85__1_n_0 ));
  LUT6 #(
    .INIT(64'h0FF070F0F0F0F0F0)) 
    \rStoredData[3]_i_86__1 
       (.I0(s_axis_video_tdata[0]),
        .I1(s_axis_video_tdata[1]),
        .I2(s_axis_video_tdata[5]),
        .I3(s_axis_video_tdata[3]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[4]),
        .O(\rStoredData[3]_i_86__1_n_0 ));
  LUT6 #(
    .INIT(64'h000000007FFFFFFF)) 
    \rStoredData[3]_i_87__1 
       (.I0(s_axis_video_tdata[4]),
        .I1(s_axis_video_tdata[2]),
        .I2(s_axis_video_tdata[1]),
        .I3(s_axis_video_tdata[0]),
        .I4(s_axis_video_tdata[3]),
        .I5(s_axis_video_tdata[5]),
        .O(\rStoredData[3]_i_87__1_n_0 ));
  LUT5 #(
    .INIT(32'h33333F7C)) 
    \rStoredData[3]_i_88__1 
       (.I0(s_axis_video_tdata[1]),
        .I1(s_axis_video_tdata[5]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[4]),
        .O(\rStoredData[3]_i_88__1_n_0 ));
  LUT6 #(
    .INIT(64'hDDDDD55540002222)) 
    \rStoredData[3]_i_89__1 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[3]),
        .I2(s_axis_video_tdata[1]),
        .I3(s_axis_video_tdata[0]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[4]),
        .O(\rStoredData[3]_i_89__1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAAA89)) 
    \rStoredData[3]_i_90__0 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[3]),
        .I2(s_axis_video_tdata[1]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[4]),
        .O(\rStoredData[3]_i_90__0_n_0 ));
  LUT5 #(
    .INIT(32'hCCCFB333)) 
    \rStoredData[3]_i_91__0 
       (.I0(s_axis_video_tdata[1]),
        .I1(s_axis_video_tdata[5]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[4]),
        .O(\rStoredData[3]_i_91__0_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA89999911)) 
    \rStoredData[3]_i_92__0 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[3]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[4]),
        .O(\rStoredData[3]_i_92__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rStoredData[3]_i_9__1 
       (.I0(\rStoredData[3]_i_23__0_n_0 ),
        .I1(\rStoredData[3]_i_24__1_n_0 ),
        .I2(s_axis_video_tdata[9]),
        .I3(\rStoredData_reg[3]_i_25__0_n_0 ),
        .I4(s_axis_video_tdata[8]),
        .I5(\rStoredData_reg[3]_i_26__1_n_0 ),
        .O(\rStoredData[3]_i_9__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \rStoredData[4]_i_12__0 
       (.I0(s_axis_video_tdata[1]),
        .I1(s_axis_video_tdata[2]),
        .I2(s_axis_video_tdata[3]),
        .O(\rStoredData[4]_i_12__0_n_0 ));
  LUT6 #(
    .INIT(64'h3B3B3F3CCCCCCCCC)) 
    \rStoredData[4]_i_13__0 
       (.I0(\rStoredData[4]_i_25__1_n_0 ),
        .I1(s_axis_video_tdata[6]),
        .I2(s_axis_video_tdata[4]),
        .I3(\rStoredData[6]_i_5__0_n_0 ),
        .I4(s_axis_video_tdata[3]),
        .I5(s_axis_video_tdata[5]),
        .O(\rStoredData[4]_i_13__0_n_0 ));
  LUT6 #(
    .INIT(64'h000000007FFFFFFF)) 
    \rStoredData[4]_i_14__0 
       (.I0(s_axis_video_tdata[4]),
        .I1(s_axis_video_tdata[0]),
        .I2(s_axis_video_tdata[2]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[3]),
        .I5(s_axis_video_tdata[5]),
        .O(\rStoredData[4]_i_14__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT4 #(
    .INIT(16'hFFEA)) 
    \rStoredData[4]_i_15__1 
       (.I0(s_axis_video_tdata[3]),
        .I1(s_axis_video_tdata[2]),
        .I2(s_axis_video_tdata[1]),
        .I3(s_axis_video_tdata[4]),
        .O(\rStoredData[4]_i_15__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT5 #(
    .INIT(32'hFFFFAA80)) 
    \rStoredData[4]_i_17 
       (.I0(s_axis_video_tdata[3]),
        .I1(s_axis_video_tdata[1]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[4]),
        .O(\rStoredData[4]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h00000001FFFFFFFF)) 
    \rStoredData[4]_i_18__1 
       (.I0(s_axis_video_tdata[4]),
        .I1(s_axis_video_tdata[0]),
        .I2(s_axis_video_tdata[1]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[3]),
        .I5(s_axis_video_tdata[5]),
        .O(\rStoredData[4]_i_18__1_n_0 ));
  LUT5 #(
    .INIT(32'hB8B8FF00)) 
    \rStoredData[4]_i_1__1 
       (.I0(\rStoredData_reg[4]_i_2__1_n_0 ),
        .I1(s_axis_video_tdata[8]),
        .I2(\rStoredData_reg[4]_i_3__1_n_0 ),
        .I3(\rStoredData[4]_i_4__1_n_0 ),
        .I4(sGammaReg[2]),
        .O(\rStoredData[4]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'h37)) 
    \rStoredData[4]_i_25__1 
       (.I0(s_axis_video_tdata[0]),
        .I1(s_axis_video_tdata[2]),
        .I2(s_axis_video_tdata[1]),
        .O(\rStoredData[4]_i_25__1_n_0 ));
  LUT6 #(
    .INIT(64'h636363636332723A)) 
    \rStoredData[4]_i_26__1 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[0]),
        .I5(s_axis_video_tdata[2]),
        .O(\rStoredData[4]_i_26__1_n_0 ));
  LUT6 #(
    .INIT(64'h57775777EAAAAAAA)) 
    \rStoredData[4]_i_27__1 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[3]),
        .I2(s_axis_video_tdata[1]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[0]),
        .I5(s_axis_video_tdata[4]),
        .O(\rStoredData[4]_i_27__1_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \rStoredData[4]_i_28__1 
       (.I0(\rStoredData[4]_i_40__1_n_0 ),
        .I1(s_axis_video_tdata[8]),
        .I2(\rStoredData[4]_i_41__1_n_0 ),
        .I3(s_axis_video_tdata[6]),
        .I4(\rStoredData[4]_i_42__1_n_0 ),
        .O(\rStoredData[4]_i_28__1_n_0 ));
  LUT6 #(
    .INIT(64'h0F00DFDF0F00D0D0)) 
    \rStoredData[4]_i_29__1 
       (.I0(s_axis_video_tdata[5]),
        .I1(\rStoredData[4]_i_43__0_n_0 ),
        .I2(s_axis_video_tdata[8]),
        .I3(\rStoredData[5]_i_35__0_n_0 ),
        .I4(s_axis_video_tdata[6]),
        .I5(\rStoredData[4]_i_44__1_n_0 ),
        .O(\rStoredData[4]_i_29__1_n_0 ));
  LUT6 #(
    .INIT(64'h3077304430FF30FF)) 
    \rStoredData[4]_i_30__1 
       (.I0(\rStoredData[5]_i_18__0_n_0 ),
        .I1(s_axis_video_tdata[8]),
        .I2(\rStoredData[4]_i_45__1_n_0 ),
        .I3(s_axis_video_tdata[6]),
        .I4(\rStoredData[4]_i_46__1_n_0 ),
        .I5(s_axis_video_tdata[5]),
        .O(\rStoredData[4]_i_30__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEAAA88888)) 
    \rStoredData[4]_i_31__1 
       (.I0(s_axis_video_tdata[8]),
        .I1(s_axis_video_tdata[5]),
        .I2(s_axis_video_tdata[1]),
        .I3(\rStoredData[6]_i_18__0_n_0 ),
        .I4(s_axis_video_tdata[4]),
        .I5(s_axis_video_tdata[6]),
        .O(\rStoredData[4]_i_31__1_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \rStoredData[4]_i_32__1 
       (.I0(\rStoredData[4]_i_43__0_n_0 ),
        .I1(s_axis_video_tdata[9]),
        .I2(\rStoredData[5]_i_33__0_n_0 ),
        .I3(s_axis_video_tdata[5]),
        .I4(s_axis_video_tdata[6]),
        .I5(\rStoredData[4]_i_47__1_n_0 ),
        .O(\rStoredData[4]_i_32__1_n_0 ));
  LUT6 #(
    .INIT(64'hB8BBB888B8BBB8BB)) 
    \rStoredData[4]_i_33__1 
       (.I0(\rStoredData[4]_i_48__1_n_0 ),
        .I1(s_axis_video_tdata[6]),
        .I2(\rStoredData[4]_i_49__1_n_0 ),
        .I3(s_axis_video_tdata[9]),
        .I4(\rStoredData[4]_i_50__1_n_0 ),
        .I5(s_axis_video_tdata[5]),
        .O(\rStoredData[4]_i_33__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rStoredData[4]_i_34__1 
       (.I0(\rStoredData[4]_i_51__0_n_0 ),
        .I1(\rStoredData[4]_i_52__0_n_0 ),
        .I2(s_axis_video_tdata[6]),
        .I3(\rStoredData[4]_i_53__1_n_0 ),
        .I4(s_axis_video_tdata[9]),
        .I5(\rStoredData[4]_i_54__1_n_0 ),
        .O(\rStoredData[4]_i_34__1_n_0 ));
  LUT6 #(
    .INIT(64'hE5A5E0A5A5A5A5A5)) 
    \rStoredData[4]_i_35__1 
       (.I0(s_axis_video_tdata[6]),
        .I1(\rStoredData[4]_i_55__1_n_0 ),
        .I2(s_axis_video_tdata[9]),
        .I3(s_axis_video_tdata[4]),
        .I4(\rStoredData[3]_i_45__0_n_0 ),
        .I5(s_axis_video_tdata[5]),
        .O(\rStoredData[4]_i_35__1_n_0 ));
  LUT6 #(
    .INIT(64'hBBB8FF33BBB8CC00)) 
    \rStoredData[4]_i_36__1 
       (.I0(\rStoredData[4]_i_56__1_n_0 ),
        .I1(s_axis_video_tdata[7]),
        .I2(\rStoredData[4]_i_57__1_n_0 ),
        .I3(s_axis_video_tdata[6]),
        .I4(s_axis_video_tdata[5]),
        .I5(\rStoredData[4]_i_58__1_n_0 ),
        .O(\rStoredData[4]_i_36__1_n_0 ));
  LUT6 #(
    .INIT(64'hBFC0FFFFBFC00000)) 
    \rStoredData[4]_i_37__1 
       (.I0(\rStoredData[3]_i_47__0_n_0 ),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[5]),
        .I3(s_axis_video_tdata[6]),
        .I4(s_axis_video_tdata[7]),
        .I5(\rStoredData[4]_i_59__1_n_0 ),
        .O(\rStoredData[4]_i_37__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFCFAFC000C000C0)) 
    \rStoredData[4]_i_38__1 
       (.I0(\rStoredData[4]_i_60_n_0 ),
        .I1(\rStoredData[5]_i_27__1_n_0 ),
        .I2(s_axis_video_tdata[7]),
        .I3(s_axis_video_tdata[5]),
        .I4(\rStoredData[4]_i_61_n_0 ),
        .I5(s_axis_video_tdata[6]),
        .O(\rStoredData[4]_i_38__1_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCCCCFF3F3F3B3)) 
    \rStoredData[4]_i_39__1 
       (.I0(s_axis_video_tdata[2]),
        .I1(s_axis_video_tdata[7]),
        .I2(s_axis_video_tdata[5]),
        .I3(s_axis_video_tdata[3]),
        .I4(s_axis_video_tdata[4]),
        .I5(s_axis_video_tdata[6]),
        .O(\rStoredData[4]_i_39__1_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8899955555555)) 
    \rStoredData[4]_i_40__1 
       (.I0(s_axis_video_tdata[6]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[2]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[3]),
        .I5(s_axis_video_tdata[5]),
        .O(\rStoredData[4]_i_40__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT5 #(
    .INIT(32'h80033333)) 
    \rStoredData[4]_i_41__1 
       (.I0(s_axis_video_tdata[1]),
        .I1(s_axis_video_tdata[5]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[4]),
        .O(\rStoredData[4]_i_41__1_n_0 ));
  LUT6 #(
    .INIT(64'h99999999DCC4CCC4)) 
    \rStoredData[4]_i_42__1 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[2]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[0]),
        .I5(s_axis_video_tdata[3]),
        .O(\rStoredData[4]_i_42__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT5 #(
    .INIT(32'h00001555)) 
    \rStoredData[4]_i_43__0 
       (.I0(s_axis_video_tdata[3]),
        .I1(s_axis_video_tdata[0]),
        .I2(s_axis_video_tdata[1]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[4]),
        .O(\rStoredData[4]_i_43__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFAAEAAA)) 
    \rStoredData[4]_i_44__1 
       (.I0(s_axis_video_tdata[4]),
        .I1(s_axis_video_tdata[1]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[3]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[5]),
        .O(\rStoredData[4]_i_44__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEAAA00000000)) 
    \rStoredData[4]_i_45__1 
       (.I0(s_axis_video_tdata[4]),
        .I1(s_axis_video_tdata[2]),
        .I2(s_axis_video_tdata[1]),
        .I3(s_axis_video_tdata[0]),
        .I4(s_axis_video_tdata[3]),
        .I5(s_axis_video_tdata[5]),
        .O(\rStoredData[4]_i_45__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT5 #(
    .INIT(32'h00007FFF)) 
    \rStoredData[4]_i_46__1 
       (.I0(s_axis_video_tdata[0]),
        .I1(s_axis_video_tdata[3]),
        .I2(s_axis_video_tdata[2]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[4]),
        .O(\rStoredData[4]_i_46__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFCCCCCCCC8)) 
    \rStoredData[4]_i_47__1 
       (.I0(s_axis_video_tdata[1]),
        .I1(s_axis_video_tdata[9]),
        .I2(s_axis_video_tdata[4]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[3]),
        .I5(s_axis_video_tdata[5]),
        .O(\rStoredData[4]_i_47__1_n_0 ));
  LUT6 #(
    .INIT(64'h30040C0CCCCCCCCC)) 
    \rStoredData[4]_i_48__1 
       (.I0(s_axis_video_tdata[1]),
        .I1(s_axis_video_tdata[9]),
        .I2(s_axis_video_tdata[4]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[3]),
        .I5(s_axis_video_tdata[5]),
        .O(\rStoredData[4]_i_48__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF80000000)) 
    \rStoredData[4]_i_49__1 
       (.I0(s_axis_video_tdata[4]),
        .I1(s_axis_video_tdata[2]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[3]),
        .I5(s_axis_video_tdata[5]),
        .O(\rStoredData[4]_i_49__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rStoredData[4]_i_4__1 
       (.I0(\rStoredData_reg[4]_i_9__1_n_0 ),
        .I1(\rStoredData_reg[4]_i_10__1_n_0 ),
        .I2(sGammaReg[0]),
        .I3(\rStoredData_reg[4]_i_11__1_n_0 ),
        .I4(sGammaReg[1]),
        .I5(s_axis_video_tdata[6]),
        .O(\rStoredData[4]_i_4__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT5 #(
    .INIT(32'h557FFFFF)) 
    \rStoredData[4]_i_50__1 
       (.I0(s_axis_video_tdata[3]),
        .I1(s_axis_video_tdata[0]),
        .I2(s_axis_video_tdata[1]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[4]),
        .O(\rStoredData[4]_i_50__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT5 #(
    .INIT(32'h0000557F)) 
    \rStoredData[4]_i_51__0 
       (.I0(s_axis_video_tdata[4]),
        .I1(s_axis_video_tdata[1]),
        .I2(s_axis_video_tdata[2]),
        .I3(s_axis_video_tdata[3]),
        .I4(s_axis_video_tdata[5]),
        .O(\rStoredData[4]_i_51__0_n_0 ));
  LUT6 #(
    .INIT(64'h8880000000000001)) 
    \rStoredData[4]_i_52__0 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[3]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[4]),
        .O(\rStoredData[4]_i_52__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT5 #(
    .INIT(32'hFFFFEAAA)) 
    \rStoredData[4]_i_53__1 
       (.I0(s_axis_video_tdata[4]),
        .I1(s_axis_video_tdata[2]),
        .I2(s_axis_video_tdata[1]),
        .I3(s_axis_video_tdata[3]),
        .I4(s_axis_video_tdata[5]),
        .O(\rStoredData[4]_i_53__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEAAAA)) 
    \rStoredData[4]_i_54__1 
       (.I0(s_axis_video_tdata[4]),
        .I1(s_axis_video_tdata[2]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[3]),
        .I5(s_axis_video_tdata[5]),
        .O(\rStoredData[4]_i_54__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT4 #(
    .INIT(16'hFFA8)) 
    \rStoredData[4]_i_55__1 
       (.I0(s_axis_video_tdata[2]),
        .I1(s_axis_video_tdata[0]),
        .I2(s_axis_video_tdata[1]),
        .I3(s_axis_video_tdata[3]),
        .O(\rStoredData[4]_i_55__1_n_0 ));
  LUT6 #(
    .INIT(64'h5555544422222AAA)) 
    \rStoredData[4]_i_56__1 
       (.I0(s_axis_video_tdata[6]),
        .I1(s_axis_video_tdata[3]),
        .I2(s_axis_video_tdata[1]),
        .I3(s_axis_video_tdata[0]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[4]),
        .O(\rStoredData[4]_i_56__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT5 #(
    .INIT(32'h00005F7F)) 
    \rStoredData[4]_i_57__1 
       (.I0(s_axis_video_tdata[3]),
        .I1(s_axis_video_tdata[0]),
        .I2(s_axis_video_tdata[2]),
        .I3(s_axis_video_tdata[1]),
        .I4(s_axis_video_tdata[4]),
        .O(\rStoredData[4]_i_57__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFEAFFFF00000000)) 
    \rStoredData[4]_i_58__1 
       (.I0(s_axis_video_tdata[3]),
        .I1(s_axis_video_tdata[1]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[6]),
        .I5(s_axis_video_tdata[4]),
        .O(\rStoredData[4]_i_58__1_n_0 ));
  LUT6 #(
    .INIT(64'h001FFFFFFFF00000)) 
    \rStoredData[4]_i_59__1 
       (.I0(s_axis_video_tdata[1]),
        .I1(s_axis_video_tdata[2]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[4]),
        .I4(s_axis_video_tdata[5]),
        .I5(s_axis_video_tdata[6]),
        .O(\rStoredData[4]_i_59__1_n_0 ));
  LUT6 #(
    .INIT(64'hFE00FFFFFE000000)) 
    \rStoredData[4]_i_5__1 
       (.I0(s_axis_video_tdata[5]),
        .I1(\rStoredData[4]_i_12__0_n_0 ),
        .I2(s_axis_video_tdata[4]),
        .I3(s_axis_video_tdata[6]),
        .I4(s_axis_video_tdata[7]),
        .I5(\rStoredData[4]_i_13__0_n_0 ),
        .O(\rStoredData[4]_i_5__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT5 #(
    .INIT(32'hFFFF8000)) 
    \rStoredData[4]_i_60 
       (.I0(s_axis_video_tdata[3]),
        .I1(s_axis_video_tdata[1]),
        .I2(s_axis_video_tdata[2]),
        .I3(s_axis_video_tdata[0]),
        .I4(s_axis_video_tdata[4]),
        .O(\rStoredData[4]_i_60_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT5 #(
    .INIT(32'hFFFFAAA8)) 
    \rStoredData[4]_i_61 
       (.I0(s_axis_video_tdata[3]),
        .I1(s_axis_video_tdata[1]),
        .I2(s_axis_video_tdata[2]),
        .I3(s_axis_video_tdata[0]),
        .I4(s_axis_video_tdata[4]),
        .O(\rStoredData[4]_i_61_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF80000000)) 
    \rStoredData[4]_i_6__1 
       (.I0(s_axis_video_tdata[6]),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[2]),
        .I3(s_axis_video_tdata[3]),
        .I4(s_axis_video_tdata[5]),
        .I5(s_axis_video_tdata[7]),
        .O(\rStoredData[4]_i_6__1_n_0 ));
  LUT6 #(
    .INIT(64'hB888FFFFB8880000)) 
    \rStoredData[4]_i_7__1 
       (.I0(\rStoredData[4]_i_14__0_n_0 ),
        .I1(s_axis_video_tdata[6]),
        .I2(\rStoredData[4]_i_15__1_n_0 ),
        .I3(s_axis_video_tdata[5]),
        .I4(s_axis_video_tdata[7]),
        .I5(\rStoredData_reg[4]_i_16__1_n_0 ),
        .O(\rStoredData[4]_i_7__1_n_0 ));
  LUT6 #(
    .INIT(64'hAF00AF00FCFFFC00)) 
    \rStoredData[4]_i_8__1 
       (.I0(\rStoredData[5]_i_22__0_n_0 ),
        .I1(\rStoredData[4]_i_17_n_0 ),
        .I2(s_axis_video_tdata[5]),
        .I3(s_axis_video_tdata[7]),
        .I4(\rStoredData[4]_i_18__1_n_0 ),
        .I5(s_axis_video_tdata[6]),
        .O(\rStoredData[4]_i_8__1_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFF000FDFFFDFF)) 
    \rStoredData[5]_i_10__1 
       (.I0(s_axis_video_tdata[5]),
        .I1(\rStoredData[5]_i_22__0_n_0 ),
        .I2(s_axis_video_tdata[9]),
        .I3(s_axis_video_tdata[8]),
        .I4(\rStoredData[5]_i_23__1_n_0 ),
        .I5(s_axis_video_tdata[6]),
        .O(\rStoredData[5]_i_10__1_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFF0F0AF8FAF8F)) 
    \rStoredData[5]_i_12__1 
       (.I0(s_axis_video_tdata[6]),
        .I1(\rStoredData[5]_i_26__0_n_0 ),
        .I2(s_axis_video_tdata[8]),
        .I3(s_axis_video_tdata[5]),
        .I4(\rStoredData[5]_i_27__1_n_0 ),
        .I5(s_axis_video_tdata[7]),
        .O(\rStoredData[5]_i_12__1_n_0 ));
  LUT6 #(
    .INIT(64'hB833B83333333300)) 
    \rStoredData[5]_i_14__0 
       (.I0(\rStoredData[5]_i_30_n_0 ),
        .I1(s_axis_video_tdata[6]),
        .I2(\rStoredData[5]_i_16__0_n_0 ),
        .I3(s_axis_video_tdata[5]),
        .I4(\rStoredData[5]_i_31__0_n_0 ),
        .I5(s_axis_video_tdata[4]),
        .O(\rStoredData[5]_i_14__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \rStoredData[5]_i_15 
       (.I0(s_axis_video_tdata[1]),
        .I1(s_axis_video_tdata[2]),
        .I2(s_axis_video_tdata[3]),
        .O(\rStoredData[5]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \rStoredData[5]_i_16__0 
       (.I0(s_axis_video_tdata[0]),
        .I1(s_axis_video_tdata[1]),
        .I2(s_axis_video_tdata[2]),
        .I3(s_axis_video_tdata[3]),
        .O(\rStoredData[5]_i_16__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'hC8)) 
    \rStoredData[5]_i_17__0 
       (.I0(s_axis_video_tdata[0]),
        .I1(s_axis_video_tdata[2]),
        .I2(s_axis_video_tdata[1]),
        .O(\rStoredData[5]_i_17__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rStoredData[5]_i_18__0 
       (.I0(s_axis_video_tdata[3]),
        .I1(s_axis_video_tdata[4]),
        .O(\rStoredData[5]_i_18__0_n_0 ));
  LUT6 #(
    .INIT(64'hEAAAAAAA00000000)) 
    \rStoredData[5]_i_19__1 
       (.I0(s_axis_video_tdata[4]),
        .I1(s_axis_video_tdata[1]),
        .I2(s_axis_video_tdata[3]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[0]),
        .I5(s_axis_video_tdata[5]),
        .O(\rStoredData[5]_i_19__1_n_0 ));
  LUT5 #(
    .INIT(32'h5555DFD5)) 
    \rStoredData[5]_i_1__1 
       (.I0(\rStoredData[5]_i_2__1_n_0 ),
        .I1(\rStoredData[5]_i_3__1_n_0 ),
        .I2(sGammaReg[0]),
        .I3(\rStoredData[5]_i_4__1_n_0 ),
        .I4(sGammaReg[2]),
        .O(\rStoredData[5]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h88BB88BBB8BBB888)) 
    \rStoredData[5]_i_20__1 
       (.I0(\rStoredData[5]_i_32__0_n_0 ),
        .I1(s_axis_video_tdata[8]),
        .I2(\rStoredData[5]_i_33__0_n_0 ),
        .I3(s_axis_video_tdata[6]),
        .I4(\rStoredData[5]_i_18__0_n_0 ),
        .I5(s_axis_video_tdata[5]),
        .O(\rStoredData[5]_i_20__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF00A8FFA8FF)) 
    \rStoredData[5]_i_21__1 
       (.I0(s_axis_video_tdata[5]),
        .I1(\rStoredData[5]_i_34__0_n_0 ),
        .I2(s_axis_video_tdata[4]),
        .I3(s_axis_video_tdata[8]),
        .I4(\rStoredData[5]_i_35__0_n_0 ),
        .I5(s_axis_video_tdata[6]),
        .O(\rStoredData[5]_i_21__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \rStoredData[5]_i_22__0 
       (.I0(s_axis_video_tdata[3]),
        .I1(s_axis_video_tdata[2]),
        .I2(s_axis_video_tdata[1]),
        .I3(s_axis_video_tdata[4]),
        .O(\rStoredData[5]_i_22__0_n_0 ));
  LUT6 #(
    .INIT(64'h000000000C0C8F8C)) 
    \rStoredData[5]_i_23__1 
       (.I0(\rStoredData[5]_i_36__1_n_0 ),
        .I1(s_axis_video_tdata[9]),
        .I2(s_axis_video_tdata[4]),
        .I3(\rStoredData[5]_i_37__0_n_0 ),
        .I4(s_axis_video_tdata[3]),
        .I5(s_axis_video_tdata[5]),
        .O(\rStoredData[5]_i_23__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFEAFAEA00000000)) 
    \rStoredData[5]_i_24__1 
       (.I0(s_axis_video_tdata[5]),
        .I1(\rStoredData[5]_i_38_n_0 ),
        .I2(s_axis_video_tdata[4]),
        .I3(s_axis_video_tdata[9]),
        .I4(\rStoredData[5]_i_39__0_n_0 ),
        .I5(s_axis_video_tdata[6]),
        .O(\rStoredData[5]_i_24__1_n_0 ));
  LUT6 #(
    .INIT(64'h80808080FCCCCCCC)) 
    \rStoredData[5]_i_25__1 
       (.I0(\rStoredData[5]_i_40__0_n_0 ),
        .I1(s_axis_video_tdata[6]),
        .I2(s_axis_video_tdata[5]),
        .I3(\rStoredData[5]_i_31__0_n_0 ),
        .I4(s_axis_video_tdata[4]),
        .I5(s_axis_video_tdata[9]),
        .O(\rStoredData[5]_i_25__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \rStoredData[5]_i_26__0 
       (.I0(s_axis_video_tdata[3]),
        .I1(s_axis_video_tdata[4]),
        .O(\rStoredData[5]_i_26__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT5 #(
    .INIT(32'h000057FF)) 
    \rStoredData[5]_i_27__1 
       (.I0(s_axis_video_tdata[4]),
        .I1(s_axis_video_tdata[2]),
        .I2(s_axis_video_tdata[1]),
        .I3(s_axis_video_tdata[3]),
        .I4(s_axis_video_tdata[6]),
        .O(\rStoredData[5]_i_27__1_n_0 ));
  LUT6 #(
    .INIT(64'hFBFB333333300000)) 
    \rStoredData[5]_i_28__1 
       (.I0(\rStoredData[5]_i_31__0_n_0 ),
        .I1(s_axis_video_tdata[7]),
        .I2(s_axis_video_tdata[4]),
        .I3(\rStoredData[5]_i_41_n_0 ),
        .I4(s_axis_video_tdata[5]),
        .I5(s_axis_video_tdata[6]),
        .O(\rStoredData[5]_i_28__1_n_0 ));
  LUT6 #(
    .INIT(64'h8383330333333333)) 
    \rStoredData[5]_i_29__1 
       (.I0(\rStoredData[5]_i_31__0_n_0 ),
        .I1(s_axis_video_tdata[7]),
        .I2(s_axis_video_tdata[6]),
        .I3(\rStoredData[6]_i_20_n_0 ),
        .I4(s_axis_video_tdata[4]),
        .I5(s_axis_video_tdata[5]),
        .O(\rStoredData[5]_i_29__1_n_0 ));
  LUT6 #(
    .INIT(64'h001D331DFFFFFFFF)) 
    \rStoredData[5]_i_2__1 
       (.I0(\rStoredData[5]_i_5__1_n_0 ),
        .I1(s_axis_video_tdata[9]),
        .I2(\rStoredData[5]_i_6__1_n_0 ),
        .I3(s_axis_video_tdata[8]),
        .I4(\rStoredData[5]_i_7__1_n_0 ),
        .I5(sGammaReg[2]),
        .O(\rStoredData[5]_i_2__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \rStoredData[5]_i_30 
       (.I0(s_axis_video_tdata[1]),
        .I1(s_axis_video_tdata[2]),
        .I2(s_axis_video_tdata[3]),
        .O(\rStoredData[5]_i_30_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT4 #(
    .INIT(16'hEA00)) 
    \rStoredData[5]_i_31__0 
       (.I0(s_axis_video_tdata[2]),
        .I1(s_axis_video_tdata[0]),
        .I2(s_axis_video_tdata[1]),
        .I3(s_axis_video_tdata[3]),
        .O(\rStoredData[5]_i_31__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000055555777)) 
    \rStoredData[5]_i_32__0 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[3]),
        .I2(s_axis_video_tdata[1]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[4]),
        .I5(s_axis_video_tdata[6]),
        .O(\rStoredData[5]_i_32__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'h1F)) 
    \rStoredData[5]_i_33__0 
       (.I0(s_axis_video_tdata[3]),
        .I1(s_axis_video_tdata[2]),
        .I2(s_axis_video_tdata[4]),
        .O(\rStoredData[5]_i_33__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT4 #(
    .INIT(16'hFF80)) 
    \rStoredData[5]_i_34__0 
       (.I0(s_axis_video_tdata[2]),
        .I1(s_axis_video_tdata[1]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[3]),
        .O(\rStoredData[5]_i_34__0_n_0 ));
  LUT6 #(
    .INIT(64'h00000015FFFFFFFF)) 
    \rStoredData[5]_i_35__0 
       (.I0(s_axis_video_tdata[4]),
        .I1(s_axis_video_tdata[1]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[3]),
        .I5(s_axis_video_tdata[5]),
        .O(\rStoredData[5]_i_35__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \rStoredData[5]_i_36__1 
       (.I0(s_axis_video_tdata[2]),
        .I1(s_axis_video_tdata[1]),
        .O(\rStoredData[5]_i_36__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \rStoredData[5]_i_37__0 
       (.I0(s_axis_video_tdata[0]),
        .I1(s_axis_video_tdata[1]),
        .I2(s_axis_video_tdata[2]),
        .O(\rStoredData[5]_i_37__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \rStoredData[5]_i_38 
       (.I0(s_axis_video_tdata[2]),
        .I1(s_axis_video_tdata[3]),
        .O(\rStoredData[5]_i_38_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT4 #(
    .INIT(16'hFF80)) 
    \rStoredData[5]_i_39__0 
       (.I0(s_axis_video_tdata[2]),
        .I1(s_axis_video_tdata[0]),
        .I2(s_axis_video_tdata[1]),
        .I3(s_axis_video_tdata[3]),
        .O(\rStoredData[5]_i_39__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rStoredData[5]_i_3__1 
       (.I0(\rStoredData[5]_i_8__1_n_0 ),
        .I1(\rStoredData_reg[5]_i_9__0_n_0 ),
        .I2(sGammaReg[1]),
        .I3(\rStoredData[5]_i_10__1_n_0 ),
        .I4(s_axis_video_tdata[7]),
        .I5(\rStoredData_reg[5]_i_11__1_n_0 ),
        .O(\rStoredData[5]_i_3__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT4 #(
    .INIT(16'hFFA8)) 
    \rStoredData[5]_i_40__0 
       (.I0(s_axis_video_tdata[3]),
        .I1(s_axis_video_tdata[1]),
        .I2(s_axis_video_tdata[2]),
        .I3(s_axis_video_tdata[4]),
        .O(\rStoredData[5]_i_40__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT4 #(
    .INIT(16'hC800)) 
    \rStoredData[5]_i_41 
       (.I0(s_axis_video_tdata[1]),
        .I1(s_axis_video_tdata[2]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[3]),
        .O(\rStoredData[5]_i_41_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \rStoredData[5]_i_4__1 
       (.I0(\rStoredData[5]_i_12__1_n_0 ),
        .I1(s_axis_video_tdata[9]),
        .I2(\rStoredData_reg[5]_i_13__1_n_0 ),
        .I3(sGammaReg[1]),
        .I4(s_axis_video_tdata[7]),
        .O(\rStoredData[5]_i_4__1_n_0 ));
  LUT6 #(
    .INIT(64'h45FFFFFF45FF0000)) 
    \rStoredData[5]_i_5__1 
       (.I0(s_axis_video_tdata[5]),
        .I1(\rStoredData[6]_i_6__1_n_0 ),
        .I2(s_axis_video_tdata[4]),
        .I3(s_axis_video_tdata[6]),
        .I4(s_axis_video_tdata[7]),
        .I5(\rStoredData[5]_i_14__0_n_0 ),
        .O(\rStoredData[5]_i_5__1_n_0 ));
  LUT6 #(
    .INIT(64'h8080000003033303)) 
    \rStoredData[5]_i_6__1 
       (.I0(\rStoredData[5]_i_15_n_0 ),
        .I1(s_axis_video_tdata[7]),
        .I2(s_axis_video_tdata[5]),
        .I3(\rStoredData[5]_i_16__0_n_0 ),
        .I4(s_axis_video_tdata[4]),
        .I5(s_axis_video_tdata[6]),
        .O(\rStoredData[5]_i_6__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFA8880000)) 
    \rStoredData[5]_i_7__1 
       (.I0(s_axis_video_tdata[6]),
        .I1(s_axis_video_tdata[4]),
        .I2(\rStoredData[5]_i_17__0_n_0 ),
        .I3(s_axis_video_tdata[3]),
        .I4(s_axis_video_tdata[5]),
        .I5(s_axis_video_tdata[7]),
        .O(\rStoredData[5]_i_7__1_n_0 ));
  LUT6 #(
    .INIT(64'hFF55FF55EA55EA00)) 
    \rStoredData[5]_i_8__1 
       (.I0(s_axis_video_tdata[9]),
        .I1(s_axis_video_tdata[5]),
        .I2(\rStoredData[5]_i_18__0_n_0 ),
        .I3(s_axis_video_tdata[8]),
        .I4(\rStoredData[5]_i_19__1_n_0 ),
        .I5(s_axis_video_tdata[6]),
        .O(\rStoredData[5]_i_8__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEA00000000)) 
    \rStoredData[6]_i_11__1 
       (.I0(s_axis_video_tdata[4]),
        .I1(s_axis_video_tdata[1]),
        .I2(s_axis_video_tdata[0]),
        .I3(s_axis_video_tdata[3]),
        .I4(s_axis_video_tdata[2]),
        .I5(s_axis_video_tdata[5]),
        .O(\rStoredData[6]_i_11__1_n_0 ));
  LUT6 #(
    .INIT(64'h333030300C0C8C8C)) 
    \rStoredData[6]_i_12__0 
       (.I0(\rStoredData[6]_i_17__0_n_0 ),
        .I1(s_axis_video_tdata[8]),
        .I2(s_axis_video_tdata[5]),
        .I3(\rStoredData[6]_i_18__0_n_0 ),
        .I4(s_axis_video_tdata[4]),
        .I5(s_axis_video_tdata[6]),
        .O(\rStoredData[6]_i_12__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \rStoredData[6]_i_13__0 
       (.I0(s_axis_video_tdata[4]),
        .I1(s_axis_video_tdata[1]),
        .I2(s_axis_video_tdata[2]),
        .I3(s_axis_video_tdata[3]),
        .I4(s_axis_video_tdata[5]),
        .O(\rStoredData[6]_i_13__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF3F3B3B0)) 
    \rStoredData[6]_i_14__1 
       (.I0(\rStoredData[7]_i_11_n_0 ),
        .I1(s_axis_video_tdata[9]),
        .I2(s_axis_video_tdata[4]),
        .I3(\rStoredData[6]_i_19__1_n_0 ),
        .I4(s_axis_video_tdata[3]),
        .I5(s_axis_video_tdata[5]),
        .O(\rStoredData[6]_i_14__1_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFFF75FF0000)) 
    \rStoredData[6]_i_15__1 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(\rStoredData[6]_i_20_n_0 ),
        .I3(s_axis_video_tdata[6]),
        .I4(s_axis_video_tdata[8]),
        .I5(s_axis_video_tdata[7]),
        .O(\rStoredData[6]_i_15__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAAAA888)) 
    \rStoredData[6]_i_16__1 
       (.I0(s_axis_video_tdata[7]),
        .I1(s_axis_video_tdata[6]),
        .I2(\rStoredData[6]_i_21_n_0 ),
        .I3(s_axis_video_tdata[4]),
        .I4(s_axis_video_tdata[5]),
        .I5(s_axis_video_tdata[8]),
        .O(\rStoredData[6]_i_16__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'h07)) 
    \rStoredData[6]_i_17__0 
       (.I0(s_axis_video_tdata[2]),
        .I1(s_axis_video_tdata[1]),
        .I2(s_axis_video_tdata[3]),
        .O(\rStoredData[6]_i_17__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \rStoredData[6]_i_18__0 
       (.I0(s_axis_video_tdata[3]),
        .I1(s_axis_video_tdata[2]),
        .O(\rStoredData[6]_i_18__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \rStoredData[6]_i_19__1 
       (.I0(s_axis_video_tdata[1]),
        .I1(s_axis_video_tdata[0]),
        .I2(s_axis_video_tdata[2]),
        .O(\rStoredData[6]_i_19__1_n_0 ));
  LUT6 #(
    .INIT(64'hE5E0E5E0FFFF0000)) 
    \rStoredData[6]_i_1__1 
       (.I0(s_axis_video_tdata[8]),
        .I1(\rStoredData[6]_i_2__1_n_0 ),
        .I2(s_axis_video_tdata[9]),
        .I3(\rStoredData[6]_i_3__0_n_0 ),
        .I4(\rStoredData[6]_i_4__1_n_0 ),
        .I5(sGammaReg[2]),
        .O(\rStoredData[6]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'h1F)) 
    \rStoredData[6]_i_20 
       (.I0(s_axis_video_tdata[2]),
        .I1(s_axis_video_tdata[1]),
        .I2(s_axis_video_tdata[3]),
        .O(\rStoredData[6]_i_20_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \rStoredData[6]_i_21 
       (.I0(s_axis_video_tdata[1]),
        .I1(s_axis_video_tdata[2]),
        .I2(s_axis_video_tdata[3]),
        .O(\rStoredData[6]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEAAAA)) 
    \rStoredData[6]_i_2__1 
       (.I0(s_axis_video_tdata[6]),
        .I1(s_axis_video_tdata[4]),
        .I2(\rStoredData[6]_i_5__0_n_0 ),
        .I3(s_axis_video_tdata[3]),
        .I4(s_axis_video_tdata[5]),
        .I5(s_axis_video_tdata[7]),
        .O(\rStoredData[6]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'h0FBF0FBFFFF0F0F0)) 
    \rStoredData[6]_i_3__0 
       (.I0(\rStoredData[6]_i_6__1_n_0 ),
        .I1(s_axis_video_tdata[4]),
        .I2(s_axis_video_tdata[7]),
        .I3(s_axis_video_tdata[5]),
        .I4(\rStoredData[6]_i_7__0_n_0 ),
        .I5(s_axis_video_tdata[6]),
        .O(\rStoredData[6]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rStoredData[6]_i_4__1 
       (.I0(\rStoredData[6]_i_8__1_n_0 ),
        .I1(\rStoredData[6]_i_9__1_n_0 ),
        .I2(sGammaReg[0]),
        .I3(\rStoredData_reg[6]_i_10__0_n_0 ),
        .I4(sGammaReg[1]),
        .I5(s_axis_video_tdata[8]),
        .O(\rStoredData[6]_i_4__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \rStoredData[6]_i_5__0 
       (.I0(s_axis_video_tdata[1]),
        .I1(s_axis_video_tdata[2]),
        .I2(s_axis_video_tdata[0]),
        .O(\rStoredData[6]_i_5__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \rStoredData[6]_i_6__1 
       (.I0(s_axis_video_tdata[0]),
        .I1(s_axis_video_tdata[2]),
        .I2(s_axis_video_tdata[1]),
        .I3(s_axis_video_tdata[3]),
        .O(\rStoredData[6]_i_6__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \rStoredData[6]_i_7__0 
       (.I0(s_axis_video_tdata[3]),
        .I1(s_axis_video_tdata[1]),
        .I2(s_axis_video_tdata[2]),
        .I3(s_axis_video_tdata[0]),
        .I4(s_axis_video_tdata[4]),
        .O(\rStoredData[6]_i_7__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFEA55FFFFEA00AA)) 
    \rStoredData[6]_i_8__1 
       (.I0(s_axis_video_tdata[7]),
        .I1(s_axis_video_tdata[6]),
        .I2(\rStoredData[6]_i_11__1_n_0 ),
        .I3(s_axis_video_tdata[8]),
        .I4(s_axis_video_tdata[9]),
        .I5(\rStoredData[6]_i_12__0_n_0 ),
        .O(\rStoredData[6]_i_8__1_n_0 ));
  LUT6 #(
    .INIT(64'hCCEEFFFFF0000000)) 
    \rStoredData[6]_i_9__1 
       (.I0(\rStoredData[6]_i_13__0_n_0 ),
        .I1(s_axis_video_tdata[9]),
        .I2(\rStoredData[6]_i_14__1_n_0 ),
        .I3(s_axis_video_tdata[6]),
        .I4(s_axis_video_tdata[7]),
        .I5(s_axis_video_tdata[8]),
        .O(\rStoredData[6]_i_9__1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \rStoredData[7]_i_1 
       (.I0(s_axis_video_tvalid),
        .I1(m_axis_video_tready),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \rStoredData[7]_i_10__0 
       (.I0(s_axis_video_tdata[2]),
        .I1(s_axis_video_tdata[1]),
        .O(\rStoredData[7]_i_10__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rStoredData[7]_i_11 
       (.I0(s_axis_video_tdata[1]),
        .I1(s_axis_video_tdata[2]),
        .O(\rStoredData[7]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFEAFFEAFFFF0000)) 
    \rStoredData[7]_i_2__1 
       (.I0(s_axis_video_tdata[9]),
        .I1(\rStoredData[7]_i_3_n_0 ),
        .I2(s_axis_video_tdata[7]),
        .I3(s_axis_video_tdata[8]),
        .I4(\rStoredData[7]_i_4_n_0 ),
        .I5(sGammaReg[2]),
        .O(\rStoredData[7]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'hEAAAAAAA00000000)) 
    \rStoredData[7]_i_3 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[3]),
        .I2(\rStoredData[7]_i_5__1_n_0 ),
        .I3(s_axis_video_tdata[0]),
        .I4(s_axis_video_tdata[4]),
        .I5(s_axis_video_tdata[6]),
        .O(\rStoredData[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBBBB8888888)) 
    \rStoredData[7]_i_4 
       (.I0(\rStoredData[7]_i_6__1_n_0 ),
        .I1(sGammaReg[0]),
        .I2(s_axis_video_tdata[8]),
        .I3(\rStoredData[7]_i_7__1_n_0 ),
        .I4(sGammaReg[1]),
        .I5(s_axis_video_tdata[9]),
        .O(\rStoredData[7]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rStoredData[7]_i_5__1 
       (.I0(s_axis_video_tdata[2]),
        .I1(s_axis_video_tdata[1]),
        .O(\rStoredData[7]_i_5__1_n_0 ));
  LUT6 #(
    .INIT(64'hFCFFFFFFFC008800)) 
    \rStoredData[7]_i_6__1 
       (.I0(\rStoredData[7]_i_8__1_n_0 ),
        .I1(sGammaReg[1]),
        .I2(\rStoredData[7]_i_9_n_0 ),
        .I3(s_axis_video_tdata[8]),
        .I4(s_axis_video_tdata[7]),
        .I5(s_axis_video_tdata[9]),
        .O(\rStoredData[7]_i_6__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFA8880000)) 
    \rStoredData[7]_i_7__1 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[4]),
        .I2(\rStoredData[7]_i_10__0_n_0 ),
        .I3(s_axis_video_tdata[3]),
        .I4(s_axis_video_tdata[6]),
        .I5(s_axis_video_tdata[7]),
        .O(\rStoredData[7]_i_7__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAAAA888)) 
    \rStoredData[7]_i_8__1 
       (.I0(s_axis_video_tdata[5]),
        .I1(s_axis_video_tdata[3]),
        .I2(s_axis_video_tdata[1]),
        .I3(s_axis_video_tdata[2]),
        .I4(s_axis_video_tdata[4]),
        .I5(s_axis_video_tdata[6]),
        .O(\rStoredData[7]_i_8__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEAAAAAAA)) 
    \rStoredData[7]_i_9 
       (.I0(s_axis_video_tdata[9]),
        .I1(s_axis_video_tdata[4]),
        .I2(\rStoredData[7]_i_11_n_0 ),
        .I3(s_axis_video_tdata[3]),
        .I4(s_axis_video_tdata[5]),
        .I5(s_axis_video_tdata[6]),
        .O(\rStoredData[7]_i_9_n_0 ));
  FDRE \rStoredData_reg[0] 
       (.C(StreamClk),
        .CE(E),
        .D(\rStoredData[0]_i_1__1_n_0 ),
        .Q(m_axis_video_tdata[0]),
        .R(1'b0));
  MUXF7 \rStoredData_reg[0]_i_11__1 
       (.I0(\rStoredData[0]_i_31__1_n_0 ),
        .I1(\rStoredData[0]_i_32__1_n_0 ),
        .O(\rStoredData_reg[0]_i_11__1_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF7 \rStoredData_reg[0]_i_12__1 
       (.I0(\rStoredData[0]_i_33__1_n_0 ),
        .I1(\rStoredData[0]_i_34__1_n_0 ),
        .O(\rStoredData_reg[0]_i_12__1_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF7 \rStoredData_reg[0]_i_13__1 
       (.I0(\rStoredData[0]_i_35__1_n_0 ),
        .I1(\rStoredData[0]_i_36__1_n_0 ),
        .O(\rStoredData_reg[0]_i_13__1_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF7 \rStoredData_reg[0]_i_14__1 
       (.I0(\rStoredData[0]_i_37__1_n_0 ),
        .I1(\rStoredData[0]_i_38__1_n_0 ),
        .O(\rStoredData_reg[0]_i_14__1_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF7 \rStoredData_reg[0]_i_15__1 
       (.I0(\rStoredData[0]_i_39__1_n_0 ),
        .I1(\rStoredData[0]_i_40__1_n_0 ),
        .O(\rStoredData_reg[0]_i_15__1_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF7 \rStoredData_reg[0]_i_16__1 
       (.I0(\rStoredData[0]_i_41__1_n_0 ),
        .I1(\rStoredData[0]_i_42__1_n_0 ),
        .O(\rStoredData_reg[0]_i_16__1_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF7 \rStoredData_reg[0]_i_17__1 
       (.I0(\rStoredData[0]_i_43__1_n_0 ),
        .I1(\rStoredData[0]_i_44__1_n_0 ),
        .O(\rStoredData_reg[0]_i_17__1_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF7 \rStoredData_reg[0]_i_18__1 
       (.I0(\rStoredData[0]_i_45__1_n_0 ),
        .I1(\rStoredData[0]_i_46__1_n_0 ),
        .O(\rStoredData_reg[0]_i_18__1_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF8 \rStoredData_reg[0]_i_19__1 
       (.I0(\rStoredData_reg[0]_i_47__1_n_0 ),
        .I1(\rStoredData_reg[0]_i_48__1_n_0 ),
        .O(\rStoredData_reg[0]_i_19__1_n_0 ),
        .S(s_axis_video_tdata[8]));
  MUXF8 \rStoredData_reg[0]_i_20__1 
       (.I0(\rStoredData_reg[0]_i_49__1_n_0 ),
        .I1(\rStoredData_reg[0]_i_50__1_n_0 ),
        .O(\rStoredData_reg[0]_i_20__1_n_0 ),
        .S(s_axis_video_tdata[8]));
  MUXF8 \rStoredData_reg[0]_i_21__1 
       (.I0(\rStoredData_reg[0]_i_51__1_n_0 ),
        .I1(\rStoredData_reg[0]_i_52__1_n_0 ),
        .O(\rStoredData_reg[0]_i_21__1_n_0 ),
        .S(s_axis_video_tdata[8]));
  MUXF8 \rStoredData_reg[0]_i_22__1 
       (.I0(\rStoredData_reg[0]_i_53__1_n_0 ),
        .I1(\rStoredData_reg[0]_i_54__1_n_0 ),
        .O(\rStoredData_reg[0]_i_22__1_n_0 ),
        .S(s_axis_video_tdata[8]));
  MUXF8 \rStoredData_reg[0]_i_23__1 
       (.I0(\rStoredData_reg[0]_i_55__1_n_0 ),
        .I1(\rStoredData_reg[0]_i_56__1_n_0 ),
        .O(\rStoredData_reg[0]_i_23__1_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF8 \rStoredData_reg[0]_i_24__1 
       (.I0(\rStoredData_reg[0]_i_57__1_n_0 ),
        .I1(\rStoredData_reg[0]_i_58__1_n_0 ),
        .O(\rStoredData_reg[0]_i_24__1_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF8 \rStoredData_reg[0]_i_25__1 
       (.I0(\rStoredData_reg[0]_i_59__1_n_0 ),
        .I1(\rStoredData_reg[0]_i_60__1_n_0 ),
        .O(\rStoredData_reg[0]_i_25__1_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF8 \rStoredData_reg[0]_i_26__1 
       (.I0(\rStoredData_reg[0]_i_61__1_n_0 ),
        .I1(\rStoredData_reg[0]_i_62__1_n_0 ),
        .O(\rStoredData_reg[0]_i_26__1_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF8 \rStoredData_reg[0]_i_27__1 
       (.I0(\rStoredData_reg[0]_i_63__1_n_0 ),
        .I1(\rStoredData_reg[0]_i_64__1_n_0 ),
        .O(\rStoredData_reg[0]_i_27__1_n_0 ),
        .S(s_axis_video_tdata[7]));
  MUXF8 \rStoredData_reg[0]_i_28__1 
       (.I0(\rStoredData_reg[0]_i_65__1_n_0 ),
        .I1(\rStoredData_reg[0]_i_66__1_n_0 ),
        .O(\rStoredData_reg[0]_i_28__1_n_0 ),
        .S(s_axis_video_tdata[7]));
  MUXF8 \rStoredData_reg[0]_i_29__1 
       (.I0(\rStoredData_reg[0]_i_67__1_n_0 ),
        .I1(\rStoredData_reg[0]_i_68__1_n_0 ),
        .O(\rStoredData_reg[0]_i_29__1_n_0 ),
        .S(s_axis_video_tdata[7]));
  MUXF8 \rStoredData_reg[0]_i_30__1 
       (.I0(\rStoredData_reg[0]_i_69__1_n_0 ),
        .I1(\rStoredData_reg[0]_i_70__1_n_0 ),
        .O(\rStoredData_reg[0]_i_30__1_n_0 ),
        .S(s_axis_video_tdata[7]));
  MUXF7 \rStoredData_reg[0]_i_47__1 
       (.I0(\rStoredData[0]_i_71__1_n_0 ),
        .I1(\rStoredData[0]_i_72__1_n_0 ),
        .O(\rStoredData_reg[0]_i_47__1_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF7 \rStoredData_reg[0]_i_48__1 
       (.I0(\rStoredData[0]_i_73__1_n_0 ),
        .I1(\rStoredData[0]_i_74__1_n_0 ),
        .O(\rStoredData_reg[0]_i_48__1_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF7 \rStoredData_reg[0]_i_49__1 
       (.I0(\rStoredData[0]_i_75__1_n_0 ),
        .I1(\rStoredData[0]_i_76__1_n_0 ),
        .O(\rStoredData_reg[0]_i_49__1_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF8 \rStoredData_reg[0]_i_4__1 
       (.I0(\rStoredData_reg[0]_i_11__1_n_0 ),
        .I1(\rStoredData_reg[0]_i_12__1_n_0 ),
        .O(\rStoredData_reg[0]_i_4__1_n_0 ),
        .S(s_axis_video_tdata[7]));
  MUXF7 \rStoredData_reg[0]_i_50__1 
       (.I0(\rStoredData[0]_i_77__1_n_0 ),
        .I1(\rStoredData[0]_i_78__1_n_0 ),
        .O(\rStoredData_reg[0]_i_50__1_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF7 \rStoredData_reg[0]_i_51__1 
       (.I0(\rStoredData[0]_i_79__1_n_0 ),
        .I1(\rStoredData[0]_i_80__1_n_0 ),
        .O(\rStoredData_reg[0]_i_51__1_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF7 \rStoredData_reg[0]_i_52__1 
       (.I0(\rStoredData[0]_i_81__1_n_0 ),
        .I1(\rStoredData[0]_i_82__1_n_0 ),
        .O(\rStoredData_reg[0]_i_52__1_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF7 \rStoredData_reg[0]_i_53__1 
       (.I0(\rStoredData[0]_i_83__1_n_0 ),
        .I1(\rStoredData[0]_i_84__1_n_0 ),
        .O(\rStoredData_reg[0]_i_53__1_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF7 \rStoredData_reg[0]_i_54__1 
       (.I0(\rStoredData[0]_i_85__1_n_0 ),
        .I1(\rStoredData[0]_i_86__1_n_0 ),
        .O(\rStoredData_reg[0]_i_54__1_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF7 \rStoredData_reg[0]_i_55__1 
       (.I0(\rStoredData[0]_i_87__1_n_0 ),
        .I1(\rStoredData[0]_i_88__1_n_0 ),
        .O(\rStoredData_reg[0]_i_55__1_n_0 ),
        .S(s_axis_video_tdata[9]));
  MUXF7 \rStoredData_reg[0]_i_56__1 
       (.I0(\rStoredData[0]_i_89__1_n_0 ),
        .I1(\rStoredData[0]_i_90__1_n_0 ),
        .O(\rStoredData_reg[0]_i_56__1_n_0 ),
        .S(s_axis_video_tdata[9]));
  MUXF7 \rStoredData_reg[0]_i_57__1 
       (.I0(\rStoredData[0]_i_91__1_n_0 ),
        .I1(\rStoredData[0]_i_92__1_n_0 ),
        .O(\rStoredData_reg[0]_i_57__1_n_0 ),
        .S(s_axis_video_tdata[9]));
  MUXF7 \rStoredData_reg[0]_i_58__1 
       (.I0(\rStoredData[0]_i_93__1_n_0 ),
        .I1(\rStoredData[0]_i_94__1_n_0 ),
        .O(\rStoredData_reg[0]_i_58__1_n_0 ),
        .S(s_axis_video_tdata[9]));
  MUXF7 \rStoredData_reg[0]_i_59__1 
       (.I0(\rStoredData[0]_i_95__1_n_0 ),
        .I1(\rStoredData[0]_i_96__1_n_0 ),
        .O(\rStoredData_reg[0]_i_59__1_n_0 ),
        .S(s_axis_video_tdata[9]));
  MUXF8 \rStoredData_reg[0]_i_5__1 
       (.I0(\rStoredData_reg[0]_i_13__1_n_0 ),
        .I1(\rStoredData_reg[0]_i_14__1_n_0 ),
        .O(\rStoredData_reg[0]_i_5__1_n_0 ),
        .S(s_axis_video_tdata[7]));
  MUXF7 \rStoredData_reg[0]_i_60__1 
       (.I0(\rStoredData[0]_i_97__1_n_0 ),
        .I1(\rStoredData[0]_i_98__1_n_0 ),
        .O(\rStoredData_reg[0]_i_60__1_n_0 ),
        .S(s_axis_video_tdata[9]));
  MUXF7 \rStoredData_reg[0]_i_61__1 
       (.I0(\rStoredData[0]_i_99__1_n_0 ),
        .I1(\rStoredData[0]_i_100__1_n_0 ),
        .O(\rStoredData_reg[0]_i_61__1_n_0 ),
        .S(s_axis_video_tdata[9]));
  MUXF7 \rStoredData_reg[0]_i_62__1 
       (.I0(\rStoredData[0]_i_101__1_n_0 ),
        .I1(\rStoredData[0]_i_102__1_n_0 ),
        .O(\rStoredData_reg[0]_i_62__1_n_0 ),
        .S(s_axis_video_tdata[9]));
  MUXF7 \rStoredData_reg[0]_i_63__1 
       (.I0(\rStoredData[0]_i_103__1_n_0 ),
        .I1(\rStoredData[0]_i_104__1_n_0 ),
        .O(\rStoredData_reg[0]_i_63__1_n_0 ),
        .S(s_axis_video_tdata[5]));
  MUXF7 \rStoredData_reg[0]_i_64__1 
       (.I0(\rStoredData[0]_i_105__1_n_0 ),
        .I1(\rStoredData[0]_i_106__1_n_0 ),
        .O(\rStoredData_reg[0]_i_64__1_n_0 ),
        .S(s_axis_video_tdata[5]));
  MUXF7 \rStoredData_reg[0]_i_65__1 
       (.I0(\rStoredData[0]_i_107__1_n_0 ),
        .I1(\rStoredData[0]_i_108__1_n_0 ),
        .O(\rStoredData_reg[0]_i_65__1_n_0 ),
        .S(s_axis_video_tdata[5]));
  MUXF7 \rStoredData_reg[0]_i_66__1 
       (.I0(\rStoredData[0]_i_109__1_n_0 ),
        .I1(\rStoredData[0]_i_110__1_n_0 ),
        .O(\rStoredData_reg[0]_i_66__1_n_0 ),
        .S(s_axis_video_tdata[5]));
  MUXF7 \rStoredData_reg[0]_i_67__1 
       (.I0(\rStoredData[0]_i_111__1_n_0 ),
        .I1(\rStoredData[0]_i_112__1_n_0 ),
        .O(\rStoredData_reg[0]_i_67__1_n_0 ),
        .S(s_axis_video_tdata[5]));
  MUXF7 \rStoredData_reg[0]_i_68__1 
       (.I0(\rStoredData[0]_i_113__1_n_0 ),
        .I1(\rStoredData[0]_i_114__1_n_0 ),
        .O(\rStoredData_reg[0]_i_68__1_n_0 ),
        .S(s_axis_video_tdata[5]));
  MUXF7 \rStoredData_reg[0]_i_69__1 
       (.I0(\rStoredData[0]_i_115__1_n_0 ),
        .I1(\rStoredData[0]_i_116__1_n_0 ),
        .O(\rStoredData_reg[0]_i_69__1_n_0 ),
        .S(s_axis_video_tdata[5]));
  MUXF8 \rStoredData_reg[0]_i_6__1 
       (.I0(\rStoredData_reg[0]_i_15__1_n_0 ),
        .I1(\rStoredData_reg[0]_i_16__1_n_0 ),
        .O(\rStoredData_reg[0]_i_6__1_n_0 ),
        .S(s_axis_video_tdata[7]));
  MUXF7 \rStoredData_reg[0]_i_70__1 
       (.I0(\rStoredData[0]_i_117__1_n_0 ),
        .I1(\rStoredData[0]_i_118__1_n_0 ),
        .O(\rStoredData_reg[0]_i_70__1_n_0 ),
        .S(s_axis_video_tdata[5]));
  MUXF8 \rStoredData_reg[0]_i_7__1 
       (.I0(\rStoredData_reg[0]_i_17__1_n_0 ),
        .I1(\rStoredData_reg[0]_i_18__1_n_0 ),
        .O(\rStoredData_reg[0]_i_7__1_n_0 ),
        .S(s_axis_video_tdata[7]));
  FDRE \rStoredData_reg[1] 
       (.C(StreamClk),
        .CE(E),
        .D(\rStoredData[1]_i_1__1_n_0 ),
        .Q(m_axis_video_tdata[1]),
        .R(1'b0));
  MUXF7 \rStoredData_reg[1]_i_11__0 
       (.I0(\rStoredData[1]_i_31__0_n_0 ),
        .I1(\rStoredData[1]_i_32_n_0 ),
        .O(\rStoredData_reg[1]_i_11__0_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF7 \rStoredData_reg[1]_i_12__0 
       (.I0(\rStoredData[1]_i_33__1_n_0 ),
        .I1(\rStoredData[1]_i_34__1_n_0 ),
        .O(\rStoredData_reg[1]_i_12__0_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF7 \rStoredData_reg[1]_i_13__0 
       (.I0(\rStoredData[1]_i_35__1_n_0 ),
        .I1(\rStoredData[1]_i_36__1_n_0 ),
        .O(\rStoredData_reg[1]_i_13__0_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF7 \rStoredData_reg[1]_i_14__0 
       (.I0(\rStoredData[1]_i_37__1_n_0 ),
        .I1(\rStoredData[1]_i_38__1_n_0 ),
        .O(\rStoredData_reg[1]_i_14__0_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF7 \rStoredData_reg[1]_i_15__1 
       (.I0(\rStoredData[1]_i_39__1_n_0 ),
        .I1(\rStoredData[1]_i_40__1_n_0 ),
        .O(\rStoredData_reg[1]_i_15__1_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF7 \rStoredData_reg[1]_i_16__1 
       (.I0(\rStoredData[1]_i_41__1_n_0 ),
        .I1(\rStoredData[1]_i_42__1_n_0 ),
        .O(\rStoredData_reg[1]_i_16__1_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF7 \rStoredData_reg[1]_i_17__1 
       (.I0(\rStoredData[1]_i_43__1_n_0 ),
        .I1(\rStoredData[1]_i_44__1_n_0 ),
        .O(\rStoredData_reg[1]_i_17__1_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF7 \rStoredData_reg[1]_i_18__1 
       (.I0(\rStoredData[1]_i_45__0_n_0 ),
        .I1(\rStoredData[1]_i_46__0_n_0 ),
        .O(\rStoredData_reg[1]_i_18__1_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF8 \rStoredData_reg[1]_i_19__1 
       (.I0(\rStoredData_reg[1]_i_47__1_n_0 ),
        .I1(\rStoredData_reg[1]_i_48__1_n_0 ),
        .O(\rStoredData_reg[1]_i_19__1_n_0 ),
        .S(s_axis_video_tdata[8]));
  MUXF8 \rStoredData_reg[1]_i_20__1 
       (.I0(\rStoredData_reg[1]_i_49__1_n_0 ),
        .I1(\rStoredData_reg[1]_i_50__1_n_0 ),
        .O(\rStoredData_reg[1]_i_20__1_n_0 ),
        .S(s_axis_video_tdata[8]));
  MUXF8 \rStoredData_reg[1]_i_21__1 
       (.I0(\rStoredData_reg[1]_i_51__1_n_0 ),
        .I1(\rStoredData_reg[1]_i_52__1_n_0 ),
        .O(\rStoredData_reg[1]_i_21__1_n_0 ),
        .S(s_axis_video_tdata[8]));
  MUXF8 \rStoredData_reg[1]_i_22__1 
       (.I0(\rStoredData_reg[1]_i_53__1_n_0 ),
        .I1(\rStoredData_reg[1]_i_54__1_n_0 ),
        .O(\rStoredData_reg[1]_i_22__1_n_0 ),
        .S(s_axis_video_tdata[8]));
  MUXF8 \rStoredData_reg[1]_i_23__1 
       (.I0(\rStoredData_reg[1]_i_55__1_n_0 ),
        .I1(\rStoredData_reg[1]_i_56__1_n_0 ),
        .O(\rStoredData_reg[1]_i_23__1_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF8 \rStoredData_reg[1]_i_24__1 
       (.I0(\rStoredData_reg[1]_i_57__1_n_0 ),
        .I1(\rStoredData_reg[1]_i_58__1_n_0 ),
        .O(\rStoredData_reg[1]_i_24__1_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF8 \rStoredData_reg[1]_i_25__1 
       (.I0(\rStoredData_reg[1]_i_59__1_n_0 ),
        .I1(\rStoredData_reg[1]_i_60__1_n_0 ),
        .O(\rStoredData_reg[1]_i_25__1_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF8 \rStoredData_reg[1]_i_26__1 
       (.I0(\rStoredData_reg[1]_i_61__1_n_0 ),
        .I1(\rStoredData_reg[1]_i_62__1_n_0 ),
        .O(\rStoredData_reg[1]_i_26__1_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF8 \rStoredData_reg[1]_i_27__1 
       (.I0(\rStoredData_reg[1]_i_63__1_n_0 ),
        .I1(\rStoredData_reg[1]_i_64__1_n_0 ),
        .O(\rStoredData_reg[1]_i_27__1_n_0 ),
        .S(s_axis_video_tdata[7]));
  MUXF8 \rStoredData_reg[1]_i_28__1 
       (.I0(\rStoredData_reg[1]_i_65__1_n_0 ),
        .I1(\rStoredData_reg[1]_i_66__1_n_0 ),
        .O(\rStoredData_reg[1]_i_28__1_n_0 ),
        .S(s_axis_video_tdata[7]));
  MUXF8 \rStoredData_reg[1]_i_29__1 
       (.I0(\rStoredData_reg[1]_i_67__1_n_0 ),
        .I1(\rStoredData_reg[1]_i_68__1_n_0 ),
        .O(\rStoredData_reg[1]_i_29__1_n_0 ),
        .S(s_axis_video_tdata[7]));
  MUXF8 \rStoredData_reg[1]_i_30__1 
       (.I0(\rStoredData_reg[1]_i_69__0_n_0 ),
        .I1(\rStoredData_reg[1]_i_70__0_n_0 ),
        .O(\rStoredData_reg[1]_i_30__1_n_0 ),
        .S(s_axis_video_tdata[7]));
  MUXF7 \rStoredData_reg[1]_i_47__1 
       (.I0(\rStoredData[1]_i_71__1_n_0 ),
        .I1(\rStoredData[1]_i_72__1_n_0 ),
        .O(\rStoredData_reg[1]_i_47__1_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF7 \rStoredData_reg[1]_i_48__1 
       (.I0(\rStoredData[1]_i_73__1_n_0 ),
        .I1(\rStoredData[1]_i_74__1_n_0 ),
        .O(\rStoredData_reg[1]_i_48__1_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF7 \rStoredData_reg[1]_i_49__1 
       (.I0(\rStoredData[1]_i_75__1_n_0 ),
        .I1(\rStoredData[1]_i_76__1_n_0 ),
        .O(\rStoredData_reg[1]_i_49__1_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF8 \rStoredData_reg[1]_i_4__0 
       (.I0(\rStoredData_reg[1]_i_11__0_n_0 ),
        .I1(\rStoredData_reg[1]_i_12__0_n_0 ),
        .O(\rStoredData_reg[1]_i_4__0_n_0 ),
        .S(s_axis_video_tdata[7]));
  MUXF7 \rStoredData_reg[1]_i_50__1 
       (.I0(\rStoredData[1]_i_77__1_n_0 ),
        .I1(\rStoredData[1]_i_78__1_n_0 ),
        .O(\rStoredData_reg[1]_i_50__1_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF7 \rStoredData_reg[1]_i_51__1 
       (.I0(\rStoredData[1]_i_79__1_n_0 ),
        .I1(\rStoredData[1]_i_80__1_n_0 ),
        .O(\rStoredData_reg[1]_i_51__1_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF7 \rStoredData_reg[1]_i_52__1 
       (.I0(\rStoredData[1]_i_81__1_n_0 ),
        .I1(\rStoredData[1]_i_82__1_n_0 ),
        .O(\rStoredData_reg[1]_i_52__1_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF7 \rStoredData_reg[1]_i_53__1 
       (.I0(\rStoredData[1]_i_83__1_n_0 ),
        .I1(\rStoredData[1]_i_84__1_n_0 ),
        .O(\rStoredData_reg[1]_i_53__1_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF7 \rStoredData_reg[1]_i_54__1 
       (.I0(\rStoredData[1]_i_85__1_n_0 ),
        .I1(\rStoredData[1]_i_86__1_n_0 ),
        .O(\rStoredData_reg[1]_i_54__1_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF7 \rStoredData_reg[1]_i_55__1 
       (.I0(\rStoredData[1]_i_87__1_n_0 ),
        .I1(\rStoredData[1]_i_88__1_n_0 ),
        .O(\rStoredData_reg[1]_i_55__1_n_0 ),
        .S(s_axis_video_tdata[9]));
  MUXF7 \rStoredData_reg[1]_i_56__1 
       (.I0(\rStoredData[1]_i_89__1_n_0 ),
        .I1(\rStoredData[1]_i_90__1_n_0 ),
        .O(\rStoredData_reg[1]_i_56__1_n_0 ),
        .S(s_axis_video_tdata[9]));
  MUXF7 \rStoredData_reg[1]_i_57__1 
       (.I0(\rStoredData[1]_i_91__1_n_0 ),
        .I1(\rStoredData[1]_i_92__1_n_0 ),
        .O(\rStoredData_reg[1]_i_57__1_n_0 ),
        .S(s_axis_video_tdata[9]));
  MUXF7 \rStoredData_reg[1]_i_58__1 
       (.I0(\rStoredData[1]_i_93__1_n_0 ),
        .I1(\rStoredData[1]_i_94__1_n_0 ),
        .O(\rStoredData_reg[1]_i_58__1_n_0 ),
        .S(s_axis_video_tdata[9]));
  MUXF7 \rStoredData_reg[1]_i_59__1 
       (.I0(\rStoredData[1]_i_95__1_n_0 ),
        .I1(\rStoredData[1]_i_96__1_n_0 ),
        .O(\rStoredData_reg[1]_i_59__1_n_0 ),
        .S(s_axis_video_tdata[9]));
  MUXF8 \rStoredData_reg[1]_i_5__1 
       (.I0(\rStoredData_reg[1]_i_13__0_n_0 ),
        .I1(\rStoredData_reg[1]_i_14__0_n_0 ),
        .O(\rStoredData_reg[1]_i_5__1_n_0 ),
        .S(s_axis_video_tdata[7]));
  MUXF7 \rStoredData_reg[1]_i_60__1 
       (.I0(\rStoredData[1]_i_97__1_n_0 ),
        .I1(\rStoredData[1]_i_98__1_n_0 ),
        .O(\rStoredData_reg[1]_i_60__1_n_0 ),
        .S(s_axis_video_tdata[9]));
  MUXF7 \rStoredData_reg[1]_i_61__1 
       (.I0(\rStoredData[1]_i_99__1_n_0 ),
        .I1(\rStoredData[1]_i_100__1_n_0 ),
        .O(\rStoredData_reg[1]_i_61__1_n_0 ),
        .S(s_axis_video_tdata[9]));
  MUXF7 \rStoredData_reg[1]_i_62__1 
       (.I0(\rStoredData[1]_i_101__1_n_0 ),
        .I1(\rStoredData[1]_i_102__1_n_0 ),
        .O(\rStoredData_reg[1]_i_62__1_n_0 ),
        .S(s_axis_video_tdata[9]));
  MUXF7 \rStoredData_reg[1]_i_63__1 
       (.I0(\rStoredData[1]_i_103__1_n_0 ),
        .I1(\rStoredData[1]_i_104__1_n_0 ),
        .O(\rStoredData_reg[1]_i_63__1_n_0 ),
        .S(s_axis_video_tdata[5]));
  MUXF7 \rStoredData_reg[1]_i_64__1 
       (.I0(\rStoredData[1]_i_105__1_n_0 ),
        .I1(\rStoredData[1]_i_106__1_n_0 ),
        .O(\rStoredData_reg[1]_i_64__1_n_0 ),
        .S(s_axis_video_tdata[5]));
  MUXF7 \rStoredData_reg[1]_i_65__1 
       (.I0(\rStoredData[1]_i_107__1_n_0 ),
        .I1(\rStoredData[1]_i_108__1_n_0 ),
        .O(\rStoredData_reg[1]_i_65__1_n_0 ),
        .S(s_axis_video_tdata[5]));
  MUXF7 \rStoredData_reg[1]_i_66__1 
       (.I0(\rStoredData[1]_i_109__1_n_0 ),
        .I1(\rStoredData[1]_i_110__1_n_0 ),
        .O(\rStoredData_reg[1]_i_66__1_n_0 ),
        .S(s_axis_video_tdata[5]));
  MUXF7 \rStoredData_reg[1]_i_67__1 
       (.I0(\rStoredData[1]_i_111__1_n_0 ),
        .I1(\rStoredData[1]_i_112__1_n_0 ),
        .O(\rStoredData_reg[1]_i_67__1_n_0 ),
        .S(s_axis_video_tdata[5]));
  MUXF7 \rStoredData_reg[1]_i_68__1 
       (.I0(\rStoredData[1]_i_113__1_n_0 ),
        .I1(\rStoredData[1]_i_114__1_n_0 ),
        .O(\rStoredData_reg[1]_i_68__1_n_0 ),
        .S(s_axis_video_tdata[5]));
  MUXF7 \rStoredData_reg[1]_i_69__0 
       (.I0(\rStoredData[1]_i_115__1_n_0 ),
        .I1(\rStoredData[1]_i_116__1_n_0 ),
        .O(\rStoredData_reg[1]_i_69__0_n_0 ),
        .S(s_axis_video_tdata[5]));
  MUXF8 \rStoredData_reg[1]_i_6__1 
       (.I0(\rStoredData_reg[1]_i_15__1_n_0 ),
        .I1(\rStoredData_reg[1]_i_16__1_n_0 ),
        .O(\rStoredData_reg[1]_i_6__1_n_0 ),
        .S(s_axis_video_tdata[7]));
  MUXF7 \rStoredData_reg[1]_i_70__0 
       (.I0(\rStoredData[1]_i_117__0_n_0 ),
        .I1(\rStoredData[1]_i_118__0_n_0 ),
        .O(\rStoredData_reg[1]_i_70__0_n_0 ),
        .S(s_axis_video_tdata[5]));
  MUXF8 \rStoredData_reg[1]_i_7__1 
       (.I0(\rStoredData_reg[1]_i_17__1_n_0 ),
        .I1(\rStoredData_reg[1]_i_18__1_n_0 ),
        .O(\rStoredData_reg[1]_i_7__1_n_0 ),
        .S(s_axis_video_tdata[7]));
  FDRE \rStoredData_reg[2] 
       (.C(StreamClk),
        .CE(E),
        .D(\rStoredData[2]_i_1__1_n_0 ),
        .Q(m_axis_video_tdata[2]),
        .R(1'b0));
  MUXF7 \rStoredData_reg[2]_i_18__1 
       (.I0(\rStoredData[2]_i_44__0_n_0 ),
        .I1(\rStoredData[2]_i_45__1_n_0 ),
        .O(\rStoredData_reg[2]_i_18__1_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF7 \rStoredData_reg[2]_i_19__0 
       (.I0(\rStoredData[2]_i_46__0_n_0 ),
        .I1(\rStoredData[2]_i_47__0_n_0 ),
        .O(\rStoredData_reg[2]_i_19__0_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF7 \rStoredData_reg[2]_i_20__0 
       (.I0(\rStoredData[2]_i_48__0_n_0 ),
        .I1(\rStoredData[2]_i_49__0_n_0 ),
        .O(\rStoredData_reg[2]_i_20__0_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF7 \rStoredData_reg[2]_i_21__1 
       (.I0(\rStoredData[2]_i_50__0_n_0 ),
        .I1(\rStoredData[2]_i_51__0_n_0 ),
        .O(\rStoredData_reg[2]_i_21__1_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF7 \rStoredData_reg[2]_i_22__1 
       (.I0(\rStoredData[2]_i_52__0_n_0 ),
        .I1(\rStoredData[2]_i_53__1_n_0 ),
        .O(\rStoredData_reg[2]_i_22__1_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF7 \rStoredData_reg[2]_i_23__0 
       (.I0(\rStoredData[2]_i_54__1_n_0 ),
        .I1(\rStoredData[2]_i_55__1_n_0 ),
        .O(\rStoredData_reg[2]_i_23__0_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF7 \rStoredData_reg[2]_i_25__1 
       (.I0(\rStoredData[2]_i_56__0_n_0 ),
        .I1(\rStoredData[2]_i_57__0_n_0 ),
        .O(\rStoredData_reg[2]_i_25__1_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF7 \rStoredData_reg[2]_i_26__1 
       (.I0(\rStoredData[2]_i_58__0_n_0 ),
        .I1(\rStoredData[2]_i_59__0_n_0 ),
        .O(\rStoredData_reg[2]_i_26__1_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF7 \rStoredData_reg[2]_i_27__1 
       (.I0(\rStoredData[2]_i_60__0_n_0 ),
        .I1(\rStoredData[2]_i_61__0_n_0 ),
        .O(\rStoredData_reg[2]_i_27__1_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF7 \rStoredData_reg[2]_i_28__1 
       (.I0(\rStoredData[2]_i_62__0_n_0 ),
        .I1(\rStoredData[2]_i_63__0_n_0 ),
        .O(\rStoredData_reg[2]_i_28__1_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF7 \rStoredData_reg[2]_i_29__0 
       (.I0(\rStoredData[2]_i_64__0_n_0 ),
        .I1(\rStoredData[2]_i_65__0_n_0 ),
        .O(\rStoredData_reg[2]_i_29__0_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF7 \rStoredData_reg[2]_i_30__0 
       (.I0(\rStoredData[2]_i_66__1_n_0 ),
        .I1(\rStoredData[2]_i_67__1_n_0 ),
        .O(\rStoredData_reg[2]_i_30__0_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF7 \rStoredData_reg[2]_i_31__0 
       (.I0(\rStoredData[2]_i_68__1_n_0 ),
        .I1(\rStoredData[2]_i_69__1_n_0 ),
        .O(\rStoredData_reg[2]_i_31__0_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF8 \rStoredData_reg[2]_i_32__0 
       (.I0(\rStoredData_reg[2]_i_70__0_n_0 ),
        .I1(\rStoredData_reg[2]_i_71__0_n_0 ),
        .O(\rStoredData_reg[2]_i_32__0_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF8 \rStoredData_reg[2]_i_33__0 
       (.I0(\rStoredData_reg[2]_i_72__0_n_0 ),
        .I1(\rStoredData_reg[2]_i_73__0_n_0 ),
        .O(\rStoredData_reg[2]_i_33__0_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF8 \rStoredData_reg[2]_i_34__0 
       (.I0(\rStoredData_reg[2]_i_74__0_n_0 ),
        .I1(\rStoredData_reg[2]_i_75__0_n_0 ),
        .O(\rStoredData_reg[2]_i_34__0_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF8 \rStoredData_reg[2]_i_35__0 
       (.I0(\rStoredData_reg[2]_i_76__0_n_0 ),
        .I1(\rStoredData_reg[2]_i_77__0_n_0 ),
        .O(\rStoredData_reg[2]_i_35__0_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF7 \rStoredData_reg[2]_i_36__0 
       (.I0(\rStoredData[2]_i_78__1_n_0 ),
        .I1(\rStoredData[2]_i_79__1_n_0 ),
        .O(\rStoredData_reg[2]_i_36__0_n_0 ),
        .S(s_axis_video_tdata[5]));
  MUXF7 \rStoredData_reg[2]_i_37__0 
       (.I0(\rStoredData[2]_i_80__1_n_0 ),
        .I1(\rStoredData[2]_i_81__1_n_0 ),
        .O(\rStoredData_reg[2]_i_37__0_n_0 ),
        .S(s_axis_video_tdata[5]));
  MUXF7 \rStoredData_reg[2]_i_38__0 
       (.I0(\rStoredData[2]_i_82__1_n_0 ),
        .I1(\rStoredData[2]_i_83__1_n_0 ),
        .O(\rStoredData_reg[2]_i_38__0_n_0 ),
        .S(s_axis_video_tdata[5]));
  MUXF7 \rStoredData_reg[2]_i_39__0 
       (.I0(\rStoredData[2]_i_84__1_n_0 ),
        .I1(\rStoredData[2]_i_85__1_n_0 ),
        .O(\rStoredData_reg[2]_i_39__0_n_0 ),
        .S(s_axis_video_tdata[5]));
  MUXF7 \rStoredData_reg[2]_i_42__1 
       (.I0(\rStoredData[2]_i_88__1_n_0 ),
        .I1(\rStoredData[2]_i_89__1_n_0 ),
        .O(\rStoredData_reg[2]_i_42__1_n_0 ),
        .S(s_axis_video_tdata[5]));
  MUXF7 \rStoredData_reg[2]_i_43__1 
       (.I0(\rStoredData[2]_i_90__1_n_0 ),
        .I1(\rStoredData[2]_i_91__1_n_0 ),
        .O(\rStoredData_reg[2]_i_43__1_n_0 ),
        .S(s_axis_video_tdata[5]));
  MUXF8 \rStoredData_reg[2]_i_6__1 
       (.I0(\rStoredData_reg[2]_i_18__1_n_0 ),
        .I1(\rStoredData_reg[2]_i_19__0_n_0 ),
        .O(\rStoredData_reg[2]_i_6__1_n_0 ),
        .S(s_axis_video_tdata[7]));
  MUXF7 \rStoredData_reg[2]_i_70__0 
       (.I0(\rStoredData[2]_i_92__1_n_0 ),
        .I1(\rStoredData[2]_i_93__1_n_0 ),
        .O(\rStoredData_reg[2]_i_70__0_n_0 ),
        .S(s_axis_video_tdata[9]));
  MUXF7 \rStoredData_reg[2]_i_71__0 
       (.I0(\rStoredData[2]_i_94__1_n_0 ),
        .I1(\rStoredData[2]_i_95__1_n_0 ),
        .O(\rStoredData_reg[2]_i_71__0_n_0 ),
        .S(s_axis_video_tdata[9]));
  MUXF7 \rStoredData_reg[2]_i_72__0 
       (.I0(\rStoredData[2]_i_96__1_n_0 ),
        .I1(\rStoredData[2]_i_97__1_n_0 ),
        .O(\rStoredData_reg[2]_i_72__0_n_0 ),
        .S(s_axis_video_tdata[9]));
  MUXF7 \rStoredData_reg[2]_i_73__0 
       (.I0(\rStoredData[2]_i_98__1_n_0 ),
        .I1(\rStoredData[2]_i_99__1_n_0 ),
        .O(\rStoredData_reg[2]_i_73__0_n_0 ),
        .S(s_axis_video_tdata[9]));
  MUXF7 \rStoredData_reg[2]_i_74__0 
       (.I0(\rStoredData[2]_i_100__1_n_0 ),
        .I1(\rStoredData[2]_i_101__1_n_0 ),
        .O(\rStoredData_reg[2]_i_74__0_n_0 ),
        .S(s_axis_video_tdata[9]));
  MUXF7 \rStoredData_reg[2]_i_75__0 
       (.I0(\rStoredData[2]_i_102__1_n_0 ),
        .I1(\rStoredData[2]_i_103__1_n_0 ),
        .O(\rStoredData_reg[2]_i_75__0_n_0 ),
        .S(s_axis_video_tdata[9]));
  MUXF7 \rStoredData_reg[2]_i_76__0 
       (.I0(\rStoredData[2]_i_104__1_n_0 ),
        .I1(\rStoredData[2]_i_105__1_n_0 ),
        .O(\rStoredData_reg[2]_i_76__0_n_0 ),
        .S(s_axis_video_tdata[9]));
  MUXF7 \rStoredData_reg[2]_i_77__0 
       (.I0(\rStoredData[2]_i_106__1_n_0 ),
        .I1(\rStoredData[2]_i_107__1_n_0 ),
        .O(\rStoredData_reg[2]_i_77__0_n_0 ),
        .S(s_axis_video_tdata[9]));
  MUXF8 \rStoredData_reg[2]_i_7__1 
       (.I0(\rStoredData_reg[2]_i_20__0_n_0 ),
        .I1(\rStoredData_reg[2]_i_21__1_n_0 ),
        .O(\rStoredData_reg[2]_i_7__1_n_0 ),
        .S(s_axis_video_tdata[7]));
  MUXF8 \rStoredData_reg[2]_i_8__1 
       (.I0(\rStoredData_reg[2]_i_22__1_n_0 ),
        .I1(\rStoredData_reg[2]_i_23__0_n_0 ),
        .O(\rStoredData_reg[2]_i_8__1_n_0 ),
        .S(s_axis_video_tdata[7]));
  FDRE \rStoredData_reg[3] 
       (.C(StreamClk),
        .CE(E),
        .D(\rStoredData[3]_i_1__1_n_0 ),
        .Q(m_axis_video_tdata[3]),
        .R(1'b0));
  MUXF7 \rStoredData_reg[3]_i_21__1 
       (.I0(\rStoredData[3]_i_48__0_n_0 ),
        .I1(\rStoredData[3]_i_49__0_n_0 ),
        .O(\rStoredData_reg[3]_i_21__1_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF7 \rStoredData_reg[3]_i_22__1 
       (.I0(\rStoredData[3]_i_50__1_n_0 ),
        .I1(\rStoredData[3]_i_51__0_n_0 ),
        .O(\rStoredData_reg[3]_i_22__1_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF7 \rStoredData_reg[3]_i_25__0 
       (.I0(\rStoredData[3]_i_52__0_n_0 ),
        .I1(\rStoredData[3]_i_53__0_n_0 ),
        .O(\rStoredData_reg[3]_i_25__0_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF7 \rStoredData_reg[3]_i_26__1 
       (.I0(\rStoredData[3]_i_54__0_n_0 ),
        .I1(\rStoredData[3]_i_55__1_n_0 ),
        .O(\rStoredData_reg[3]_i_26__1_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF7 \rStoredData_reg[3]_i_30__0 
       (.I0(\rStoredData[3]_i_59__1_n_0 ),
        .I1(\rStoredData[3]_i_60__1_n_0 ),
        .O(\rStoredData_reg[3]_i_30__0_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF8 \rStoredData_reg[3]_i_32__1 
       (.I0(\rStoredData_reg[3]_i_63__0_n_0 ),
        .I1(\rStoredData_reg[3]_i_64__0_n_0 ),
        .O(\rStoredData_reg[3]_i_32__1_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF8 \rStoredData_reg[3]_i_33__1 
       (.I0(\rStoredData_reg[3]_i_65__0_n_0 ),
        .I1(\rStoredData_reg[3]_i_66__0_n_0 ),
        .O(\rStoredData_reg[3]_i_33__1_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF8 \rStoredData_reg[3]_i_34__0 
       (.I0(\rStoredData_reg[3]_i_67__0_n_0 ),
        .I1(\rStoredData_reg[3]_i_68__0_n_0 ),
        .O(\rStoredData_reg[3]_i_34__0_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF7 \rStoredData_reg[3]_i_35__0 
       (.I0(\rStoredData[3]_i_69__1_n_0 ),
        .I1(\rStoredData[3]_i_70__1_n_0 ),
        .O(\rStoredData_reg[3]_i_35__0_n_0 ),
        .S(s_axis_video_tdata[5]));
  MUXF7 \rStoredData_reg[3]_i_36__0 
       (.I0(\rStoredData[3]_i_71__1_n_0 ),
        .I1(\rStoredData[3]_i_72__1_n_0 ),
        .O(\rStoredData_reg[3]_i_36__0_n_0 ),
        .S(s_axis_video_tdata[5]));
  MUXF7 \rStoredData_reg[3]_i_37__0 
       (.I0(\rStoredData[3]_i_73__0_n_0 ),
        .I1(\rStoredData[3]_i_74__1_n_0 ),
        .O(\rStoredData_reg[3]_i_37__0_n_0 ),
        .S(s_axis_video_tdata[5]));
  MUXF7 \rStoredData_reg[3]_i_38__0 
       (.I0(\rStoredData[3]_i_75__1_n_0 ),
        .I1(\rStoredData[3]_i_76__1_n_0 ),
        .O(\rStoredData_reg[3]_i_38__0_n_0 ),
        .S(s_axis_video_tdata[5]));
  MUXF7 \rStoredData_reg[3]_i_41__0 
       (.I0(\rStoredData[3]_i_78__1_n_0 ),
        .I1(\rStoredData[3]_i_79__1_n_0 ),
        .O(\rStoredData_reg[3]_i_41__0_n_0 ),
        .S(s_axis_video_tdata[5]));
  MUXF7 \rStoredData_reg[3]_i_42__0 
       (.I0(\rStoredData[3]_i_80__1_n_0 ),
        .I1(\rStoredData[3]_i_81__1_n_0 ),
        .O(\rStoredData_reg[3]_i_42__0_n_0 ),
        .S(s_axis_video_tdata[5]));
  MUXF7 \rStoredData_reg[3]_i_63__0 
       (.I0(\rStoredData[3]_i_82__1_n_0 ),
        .I1(\rStoredData[3]_i_83__1_n_0 ),
        .O(\rStoredData_reg[3]_i_63__0_n_0 ),
        .S(s_axis_video_tdata[9]));
  MUXF7 \rStoredData_reg[3]_i_64__0 
       (.I0(\rStoredData[3]_i_84__1_n_0 ),
        .I1(\rStoredData[3]_i_85__1_n_0 ),
        .O(\rStoredData_reg[3]_i_64__0_n_0 ),
        .S(s_axis_video_tdata[9]));
  MUXF7 \rStoredData_reg[3]_i_65__0 
       (.I0(\rStoredData[3]_i_86__1_n_0 ),
        .I1(\rStoredData[3]_i_87__1_n_0 ),
        .O(\rStoredData_reg[3]_i_65__0_n_0 ),
        .S(s_axis_video_tdata[9]));
  MUXF7 \rStoredData_reg[3]_i_66__0 
       (.I0(\rStoredData[2]_i_16_n_0 ),
        .I1(\rStoredData[3]_i_88__1_n_0 ),
        .O(\rStoredData_reg[3]_i_66__0_n_0 ),
        .S(s_axis_video_tdata[9]));
  MUXF7 \rStoredData_reg[3]_i_67__0 
       (.I0(\rStoredData[3]_i_89__1_n_0 ),
        .I1(\rStoredData[3]_i_90__0_n_0 ),
        .O(\rStoredData_reg[3]_i_67__0_n_0 ),
        .S(s_axis_video_tdata[9]));
  MUXF7 \rStoredData_reg[3]_i_68__0 
       (.I0(\rStoredData[3]_i_91__0_n_0 ),
        .I1(\rStoredData[3]_i_92__0_n_0 ),
        .O(\rStoredData_reg[3]_i_68__0_n_0 ),
        .S(s_axis_video_tdata[9]));
  MUXF7 \rStoredData_reg[3]_i_7__0 
       (.I0(\rStoredData[3]_i_19__0_n_0 ),
        .I1(\rStoredData[3]_i_20__1_n_0 ),
        .O(\rStoredData_reg[3]_i_7__0_n_0 ),
        .S(s_axis_video_tdata[7]));
  MUXF8 \rStoredData_reg[3]_i_8__0 
       (.I0(\rStoredData_reg[3]_i_21__1_n_0 ),
        .I1(\rStoredData_reg[3]_i_22__1_n_0 ),
        .O(\rStoredData_reg[3]_i_8__0_n_0 ),
        .S(s_axis_video_tdata[7]));
  FDRE \rStoredData_reg[4] 
       (.C(StreamClk),
        .CE(E),
        .D(\rStoredData[4]_i_1__1_n_0 ),
        .Q(m_axis_video_tdata[4]),
        .R(1'b0));
  MUXF8 \rStoredData_reg[4]_i_10__1 
       (.I0(\rStoredData_reg[4]_i_21__1_n_0 ),
        .I1(\rStoredData_reg[4]_i_22__1_n_0 ),
        .O(\rStoredData_reg[4]_i_10__1_n_0 ),
        .S(s_axis_video_tdata[7]));
  MUXF8 \rStoredData_reg[4]_i_11__1 
       (.I0(\rStoredData_reg[4]_i_23__1_n_0 ),
        .I1(\rStoredData_reg[4]_i_24__1_n_0 ),
        .O(\rStoredData_reg[4]_i_11__1_n_0 ),
        .S(s_axis_video_tdata[9]));
  MUXF7 \rStoredData_reg[4]_i_16__1 
       (.I0(\rStoredData[4]_i_26__1_n_0 ),
        .I1(\rStoredData[4]_i_27__1_n_0 ),
        .O(\rStoredData_reg[4]_i_16__1_n_0 ),
        .S(s_axis_video_tdata[6]));
  MUXF7 \rStoredData_reg[4]_i_19__1 
       (.I0(\rStoredData[4]_i_28__1_n_0 ),
        .I1(\rStoredData[4]_i_29__1_n_0 ),
        .O(\rStoredData_reg[4]_i_19__1_n_0 ),
        .S(s_axis_video_tdata[9]));
  MUXF7 \rStoredData_reg[4]_i_20__1 
       (.I0(\rStoredData[4]_i_30__1_n_0 ),
        .I1(\rStoredData[4]_i_31__1_n_0 ),
        .O(\rStoredData_reg[4]_i_20__1_n_0 ),
        .S(s_axis_video_tdata[9]));
  MUXF7 \rStoredData_reg[4]_i_21__1 
       (.I0(\rStoredData[4]_i_32__1_n_0 ),
        .I1(\rStoredData[4]_i_33__1_n_0 ),
        .O(\rStoredData_reg[4]_i_21__1_n_0 ),
        .S(s_axis_video_tdata[8]));
  MUXF7 \rStoredData_reg[4]_i_22__1 
       (.I0(\rStoredData[4]_i_34__1_n_0 ),
        .I1(\rStoredData[4]_i_35__1_n_0 ),
        .O(\rStoredData_reg[4]_i_22__1_n_0 ),
        .S(s_axis_video_tdata[8]));
  MUXF7 \rStoredData_reg[4]_i_23__1 
       (.I0(\rStoredData[4]_i_36__1_n_0 ),
        .I1(\rStoredData[4]_i_37__1_n_0 ),
        .O(\rStoredData_reg[4]_i_23__1_n_0 ),
        .S(s_axis_video_tdata[8]));
  MUXF7 \rStoredData_reg[4]_i_24__1 
       (.I0(\rStoredData[4]_i_38__1_n_0 ),
        .I1(\rStoredData[4]_i_39__1_n_0 ),
        .O(\rStoredData_reg[4]_i_24__1_n_0 ),
        .S(s_axis_video_tdata[8]));
  MUXF7 \rStoredData_reg[4]_i_2__1 
       (.I0(\rStoredData[4]_i_5__1_n_0 ),
        .I1(\rStoredData[4]_i_6__1_n_0 ),
        .O(\rStoredData_reg[4]_i_2__1_n_0 ),
        .S(s_axis_video_tdata[9]));
  MUXF7 \rStoredData_reg[4]_i_3__1 
       (.I0(\rStoredData[4]_i_7__1_n_0 ),
        .I1(\rStoredData[4]_i_8__1_n_0 ),
        .O(\rStoredData_reg[4]_i_3__1_n_0 ),
        .S(s_axis_video_tdata[9]));
  MUXF8 \rStoredData_reg[4]_i_9__1 
       (.I0(\rStoredData_reg[4]_i_19__1_n_0 ),
        .I1(\rStoredData_reg[4]_i_20__1_n_0 ),
        .O(\rStoredData_reg[4]_i_9__1_n_0 ),
        .S(s_axis_video_tdata[7]));
  FDRE \rStoredData_reg[5] 
       (.C(StreamClk),
        .CE(E),
        .D(\rStoredData[5]_i_1__1_n_0 ),
        .Q(m_axis_video_tdata[5]),
        .R(1'b0));
  MUXF7 \rStoredData_reg[5]_i_11__1 
       (.I0(\rStoredData[5]_i_24__1_n_0 ),
        .I1(\rStoredData[5]_i_25__1_n_0 ),
        .O(\rStoredData_reg[5]_i_11__1_n_0 ),
        .S(s_axis_video_tdata[8]));
  MUXF7 \rStoredData_reg[5]_i_13__1 
       (.I0(\rStoredData[5]_i_28__1_n_0 ),
        .I1(\rStoredData[5]_i_29__1_n_0 ),
        .O(\rStoredData_reg[5]_i_13__1_n_0 ),
        .S(s_axis_video_tdata[8]));
  MUXF7 \rStoredData_reg[5]_i_9__0 
       (.I0(\rStoredData[5]_i_20__1_n_0 ),
        .I1(\rStoredData[5]_i_21__1_n_0 ),
        .O(\rStoredData_reg[5]_i_9__0_n_0 ),
        .S(s_axis_video_tdata[9]));
  FDRE \rStoredData_reg[6] 
       (.C(StreamClk),
        .CE(E),
        .D(\rStoredData[6]_i_1__1_n_0 ),
        .Q(m_axis_video_tdata[6]),
        .R(1'b0));
  MUXF7 \rStoredData_reg[6]_i_10__0 
       (.I0(\rStoredData[6]_i_15__1_n_0 ),
        .I1(\rStoredData[6]_i_16__1_n_0 ),
        .O(\rStoredData_reg[6]_i_10__0_n_0 ),
        .S(s_axis_video_tdata[9]));
  FDRE \rStoredData_reg[7] 
       (.C(StreamClk),
        .CE(E),
        .D(\rStoredData[7]_i_2__1_n_0 ),
        .Q(m_axis_video_tdata[7]),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
