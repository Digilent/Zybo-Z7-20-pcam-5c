// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
// Date        : Tue Dec 19 13:28:03 2017
// Host        : WK73 running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode funcsim
//               C:/sam_work/git/digilent/Zybo-Z7-20-pcam-5c/src/bd/system/ip/system_video_dynclk_0/system_video_dynclk_0_sim_netlist.v
// Design      : system_video_dynclk_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "system_video_dynclk_0,axi_dynclk,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "axi_dynclk,Vivado 2016.4" *) 
(* NotValidForBitStream *)
module system_video_dynclk_0
   (REF_CLK_I,
    PXL_CLK_O,
    PXL_CLK_5X_O,
    LOCKED_O,
    s_axi_lite_awaddr,
    s_axi_lite_awprot,
    s_axi_lite_awvalid,
    s_axi_lite_awready,
    s_axi_lite_wdata,
    s_axi_lite_wstrb,
    s_axi_lite_wvalid,
    s_axi_lite_wready,
    s_axi_lite_bresp,
    s_axi_lite_bvalid,
    s_axi_lite_bready,
    s_axi_lite_araddr,
    s_axi_lite_arprot,
    s_axi_lite_arvalid,
    s_axi_lite_arready,
    s_axi_lite_rdata,
    s_axi_lite_rresp,
    s_axi_lite_rvalid,
    s_axi_lite_rready,
    s_axi_lite_aclk,
    s_axi_lite_aresetn);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 REF_CLK_I CLK" *) input REF_CLK_I;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 PXL_CLK_O CLK" *) output PXL_CLK_O;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 PXL_CLK_5X_O CLK" *) output PXL_CLK_5X_O;
  output LOCKED_O;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_LITE AWADDR" *) input [5:0]s_axi_lite_awaddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_LITE AWPROT" *) input [2:0]s_axi_lite_awprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_LITE AWVALID" *) input s_axi_lite_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_LITE AWREADY" *) output s_axi_lite_awready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_LITE WDATA" *) input [31:0]s_axi_lite_wdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_LITE WSTRB" *) input [3:0]s_axi_lite_wstrb;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_LITE WVALID" *) input s_axi_lite_wvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_LITE WREADY" *) output s_axi_lite_wready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_LITE BRESP" *) output [1:0]s_axi_lite_bresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_LITE BVALID" *) output s_axi_lite_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_LITE BREADY" *) input s_axi_lite_bready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_LITE ARADDR" *) input [5:0]s_axi_lite_araddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_LITE ARPROT" *) input [2:0]s_axi_lite_arprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_LITE ARVALID" *) input s_axi_lite_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_LITE ARREADY" *) output s_axi_lite_arready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_LITE RDATA" *) output [31:0]s_axi_lite_rdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_LITE RRESP" *) output [1:0]s_axi_lite_rresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_LITE RVALID" *) output s_axi_lite_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_LITE RREADY" *) input s_axi_lite_rready;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 S_AXI_LITE_CLK CLK, xilinx.com:signal:clock:1.0 s_axi_lite_aclk CLK" *) input s_axi_lite_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 S_AXI_LITE_RST RST, xilinx.com:signal:reset:1.0 s_axi_lite_aresetn RST" *) input s_axi_lite_aresetn;

  wire LOCKED_O;
  wire PXL_CLK_5X_O;
  wire PXL_CLK_O;
  wire REF_CLK_I;
  wire s_axi_lite_aclk;
  wire [5:0]s_axi_lite_araddr;
  wire s_axi_lite_aresetn;
  wire [2:0]s_axi_lite_arprot;
  wire s_axi_lite_arready;
  wire s_axi_lite_arvalid;
  wire [5:0]s_axi_lite_awaddr;
  wire [2:0]s_axi_lite_awprot;
  wire s_axi_lite_awready;
  wire s_axi_lite_awvalid;
  wire s_axi_lite_bready;
  wire [1:0]s_axi_lite_bresp;
  wire s_axi_lite_bvalid;
  wire [31:0]s_axi_lite_rdata;
  wire s_axi_lite_rready;
  wire [1:0]s_axi_lite_rresp;
  wire s_axi_lite_rvalid;
  wire [31:0]s_axi_lite_wdata;
  wire s_axi_lite_wready;
  wire [3:0]s_axi_lite_wstrb;
  wire s_axi_lite_wvalid;

  (* C_S_AXI_LITE_ADDR_WIDTH = "6" *) 
  (* C_S_AXI_LITE_DATA_WIDTH = "32" *) 
  (* kAddBUFMR = "FALSE" *) 
  (* kRefClkFreqHz = "100000000" *) 
  (* kVersionMajor = "1" *) 
  (* kVersionMinor = "1" *) 
  system_video_dynclk_0_axi_dynclk U0
       (.LOCKED_O(LOCKED_O),
        .PXL_CLK_5X_O(PXL_CLK_5X_O),
        .PXL_CLK_O(PXL_CLK_O),
        .REF_CLK_I(REF_CLK_I),
        .s_axi_lite_aclk(s_axi_lite_aclk),
        .s_axi_lite_araddr(s_axi_lite_araddr),
        .s_axi_lite_aresetn(s_axi_lite_aresetn),
        .s_axi_lite_arprot(s_axi_lite_arprot),
        .s_axi_lite_arready(s_axi_lite_arready),
        .s_axi_lite_arvalid(s_axi_lite_arvalid),
        .s_axi_lite_awaddr(s_axi_lite_awaddr),
        .s_axi_lite_awprot(s_axi_lite_awprot),
        .s_axi_lite_awready(s_axi_lite_awready),
        .s_axi_lite_awvalid(s_axi_lite_awvalid),
        .s_axi_lite_bready(s_axi_lite_bready),
        .s_axi_lite_bresp(s_axi_lite_bresp),
        .s_axi_lite_bvalid(s_axi_lite_bvalid),
        .s_axi_lite_rdata(s_axi_lite_rdata),
        .s_axi_lite_rready(s_axi_lite_rready),
        .s_axi_lite_rresp(s_axi_lite_rresp),
        .s_axi_lite_rvalid(s_axi_lite_rvalid),
        .s_axi_lite_wdata(s_axi_lite_wdata),
        .s_axi_lite_wready(s_axi_lite_wready),
        .s_axi_lite_wstrb(s_axi_lite_wstrb),
        .s_axi_lite_wvalid(s_axi_lite_wvalid));
endmodule

(* ORIG_REF_NAME = "SyncAsync" *) 
module system_video_dynclk_0_SyncAsync
   (out,
    E,
    xLckdRisingFlag_reg,
    \FSM_onehot_clk_state_reg[4] ,
    SRDY,
    Q,
    p_0_in,
    s_axi_lite_aclk,
    SR,
    LOCKED_O);
  output [0:0]out;
  output [0:0]E;
  output xLckdRisingFlag_reg;
  input [4:0]\FSM_onehot_clk_state_reg[4] ;
  input SRDY;
  input [0:0]Q;
  input p_0_in;
  input s_axi_lite_aclk;
  input [0:0]SR;
  input LOCKED_O;

  wire [0:0]E;
  wire \FSM_onehot_clk_state[4]_i_2_n_0 ;
  wire [4:0]\FSM_onehot_clk_state_reg[4] ;
  wire LOCKED_O;
  wire [0:0]Q;
  wire [0:0]SR;
  wire SRDY;
  (* async_reg = "true" *) wire [1:0]oSyncStages;
  wire p_0_in;
  wire s_axi_lite_aclk;
  wire xLckdRisingFlag_reg;

  assign out[0] = oSyncStages[1];
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \FSM_onehot_clk_state[4]_i_1 
       (.I0(\FSM_onehot_clk_state_reg[4] [0]),
        .I1(\FSM_onehot_clk_state[4]_i_2_n_0 ),
        .I2(SRDY),
        .I3(\FSM_onehot_clk_state_reg[4] [3]),
        .I4(Q),
        .I5(\FSM_onehot_clk_state_reg[4] [2]),
        .O(E));
  LUT4 #(
    .INIT(16'h8F88)) 
    \FSM_onehot_clk_state[4]_i_2 
       (.I0(oSyncStages[1]),
        .I1(\FSM_onehot_clk_state_reg[4] [1]),
        .I2(Q),
        .I3(\FSM_onehot_clk_state_reg[4] [4]),
        .O(\FSM_onehot_clk_state[4]_i_2_n_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \oSyncStages_reg[0] 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(LOCKED_O),
        .Q(oSyncStages[0]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \oSyncStages_reg[1] 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(oSyncStages[0]),
        .Q(oSyncStages[1]));
  LUT2 #(
    .INIT(4'h2)) 
    xLckdRisingFlag_i_1
       (.I0(oSyncStages[1]),
        .I1(p_0_in),
        .O(xLckdRisingFlag_reg));
endmodule

(* C_S_AXI_LITE_ADDR_WIDTH = "6" *) (* C_S_AXI_LITE_DATA_WIDTH = "32" *) (* ORIG_REF_NAME = "axi_dynclk" *) 
(* kAddBUFMR = "FALSE" *) (* kRefClkFreqHz = "100000000" *) (* kVersionMajor = "1" *) 
(* kVersionMinor = "1" *) 
module system_video_dynclk_0_axi_dynclk
   (REF_CLK_I,
    PXL_CLK_O,
    PXL_CLK_5X_O,
    LOCKED_O,
    s_axi_lite_aclk,
    s_axi_lite_aresetn,
    s_axi_lite_awaddr,
    s_axi_lite_awprot,
    s_axi_lite_awvalid,
    s_axi_lite_awready,
    s_axi_lite_wdata,
    s_axi_lite_wstrb,
    s_axi_lite_wvalid,
    s_axi_lite_wready,
    s_axi_lite_bresp,
    s_axi_lite_bvalid,
    s_axi_lite_bready,
    s_axi_lite_araddr,
    s_axi_lite_arprot,
    s_axi_lite_arvalid,
    s_axi_lite_arready,
    s_axi_lite_rdata,
    s_axi_lite_rresp,
    s_axi_lite_rvalid,
    s_axi_lite_rready);
  input REF_CLK_I;
  output PXL_CLK_O;
  output PXL_CLK_5X_O;
  output LOCKED_O;
  input s_axi_lite_aclk;
  input s_axi_lite_aresetn;
  input [5:0]s_axi_lite_awaddr;
  input [2:0]s_axi_lite_awprot;
  input s_axi_lite_awvalid;
  output s_axi_lite_awready;
  input [31:0]s_axi_lite_wdata;
  input [3:0]s_axi_lite_wstrb;
  input s_axi_lite_wvalid;
  output s_axi_lite_wready;
  output [1:0]s_axi_lite_bresp;
  output s_axi_lite_bvalid;
  input s_axi_lite_bready;
  input [5:0]s_axi_lite_araddr;
  input [2:0]s_axi_lite_arprot;
  input s_axi_lite_arvalid;
  output s_axi_lite_arready;
  output [31:0]s_axi_lite_rdata;
  output [1:0]s_axi_lite_rresp;
  output s_axi_lite_rvalid;
  input s_axi_lite_rready;

  wire \<const0> ;
  wire CLR;
  wire CTRL_REG;
  wire \FSM_onehot_clk_state[2]_i_1_n_0 ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_clk_state_reg_n_0_[0] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_clk_state_reg_n_0_[1] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_clk_state_reg_n_0_[2] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_clk_state_reg_n_0_[3] ;
  wire I;
  wire LOCKED_O;
  wire PXL_CLK_5X_O;
  wire PXL_CLK_O;
  wire REF_CLK_I;
  wire RST;
  wire SRDY;
  (* RTL_KEEP = "yes" *) wire [0:0]STAT_REG;
  wire SyncAsyncLocked_n_1;
  wire SyncAsyncLocked_n_2;
  wire axi_dynclk_S00_AXI_inst_n_31;
  wire axi_dynclk_S00_AXI_inst_n_32;
  wire axi_dynclk_S00_AXI_inst_n_33;
  wire axi_dynclk_S00_AXI_inst_n_34;
  wire axi_dynclk_S00_AXI_inst_n_35;
  wire axi_dynclk_S00_AXI_inst_n_36;
  wire axi_dynclk_S00_AXI_inst_n_37;
  wire p_0_in;
  wire [12:0]rom;
  wire [3:0]rom_addr;
  wire s_axi_lite_aclk;
  wire [5:0]s_axi_lite_araddr;
  wire s_axi_lite_aresetn;
  wire s_axi_lite_arready;
  wire s_axi_lite_arvalid;
  wire [5:0]s_axi_lite_awaddr;
  wire s_axi_lite_awready;
  wire s_axi_lite_awvalid;
  wire s_axi_lite_bready;
  wire s_axi_lite_bvalid;
  wire [31:0]s_axi_lite_rdata;
  wire s_axi_lite_rready;
  wire s_axi_lite_rvalid;
  wire [31:0]s_axi_lite_wdata;
  wire s_axi_lite_wready;
  wire [3:0]s_axi_lite_wstrb;
  wire s_axi_lite_wvalid;
  wire sen_reg;
  wire [31:14]slv_reg3;
  wire [30:30]slv_reg6;
  wire [25:1]slv_reg7;
  wire xLocked;

  assign s_axi_lite_bresp[1] = \<const0> ;
  assign s_axi_lite_bresp[0] = \<const0> ;
  assign s_axi_lite_rresp[1] = \<const0> ;
  assign s_axi_lite_rresp[0] = \<const0> ;
  (* box_type = "PRIMITIVE" *) 
  BUFIO BUFIO_inst
       (.I(I),
        .O(PXL_CLK_5X_O));
  (* box_type = "PRIMITIVE" *) 
  BUFR #(
    .BUFR_DIVIDE("5"),
    .SIM_DEVICE("7SERIES")) 
    BUFR_inst
       (.CE(1'b1),
        .CLR(CLR),
        .I(I),
        .O(PXL_CLK_O));
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_onehot_clk_state[2]_i_1 
       (.I0(\FSM_onehot_clk_state_reg_n_0_[1] ),
        .I1(STAT_REG),
        .O(\FSM_onehot_clk_state[2]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_clk_state_reg[0] 
       (.C(s_axi_lite_aclk),
        .CE(SyncAsyncLocked_n_1),
        .D(1'b0),
        .Q(\FSM_onehot_clk_state_reg_n_0_[0] ),
        .S(RST));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_clk_state_reg[1] 
       (.C(s_axi_lite_aclk),
        .CE(SyncAsyncLocked_n_1),
        .D(\FSM_onehot_clk_state_reg_n_0_[0] ),
        .Q(\FSM_onehot_clk_state_reg_n_0_[1] ),
        .R(RST));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_clk_state_reg[2] 
       (.C(s_axi_lite_aclk),
        .CE(SyncAsyncLocked_n_1),
        .D(\FSM_onehot_clk_state[2]_i_1_n_0 ),
        .Q(\FSM_onehot_clk_state_reg_n_0_[2] ),
        .R(RST));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_clk_state_reg[3] 
       (.C(s_axi_lite_aclk),
        .CE(SyncAsyncLocked_n_1),
        .D(\FSM_onehot_clk_state_reg_n_0_[2] ),
        .Q(\FSM_onehot_clk_state_reg_n_0_[3] ),
        .R(RST));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_clk_state_reg[4] 
       (.C(s_axi_lite_aclk),
        .CE(SyncAsyncLocked_n_1),
        .D(\FSM_onehot_clk_state_reg_n_0_[3] ),
        .Q(STAT_REG),
        .R(RST));
  GND GND
       (.G(\<const0> ));
  system_video_dynclk_0_mmcme2_drp Inst_mmcme2_drp
       (.D({rom[12:11],rom[9:0]}),
        .I(I),
        .LOCKED_O(LOCKED_O),
        .Q({slv_reg3[31:30],slv_reg3[15:14]}),
        .REF_CLK_I(REF_CLK_I),
        .SR(RST),
        .SRDY(SRDY),
        .rom_addr(rom_addr),
        .s_axi_lite_aclk(s_axi_lite_aclk),
        .sen_reg(sen_reg),
        .\slv_reg2_reg[30] (axi_dynclk_S00_AXI_inst_n_35),
        .\slv_reg2_reg[31] (axi_dynclk_S00_AXI_inst_n_36),
        .\slv_reg3_reg[26] (axi_dynclk_S00_AXI_inst_n_32),
        .\slv_reg3_reg[29] (axi_dynclk_S00_AXI_inst_n_34),
        .\slv_reg4_reg[0] (axi_dynclk_S00_AXI_inst_n_31),
        .\slv_reg4_reg[3] (axi_dynclk_S00_AXI_inst_n_33),
        .\slv_reg6_reg[30] (slv_reg6),
        .\slv_reg7_reg[25] ({slv_reg7[25],slv_reg7[21],slv_reg7[7:6],slv_reg7[3:1]}));
  system_video_dynclk_0_SyncAsync SyncAsyncLocked
       (.E(SyncAsyncLocked_n_1),
        .\FSM_onehot_clk_state_reg[4] ({STAT_REG,\FSM_onehot_clk_state_reg_n_0_[3] ,\FSM_onehot_clk_state_reg_n_0_[2] ,\FSM_onehot_clk_state_reg_n_0_[1] ,\FSM_onehot_clk_state_reg_n_0_[0] }),
        .LOCKED_O(LOCKED_O),
        .Q(CTRL_REG),
        .SR(RST),
        .SRDY(SRDY),
        .out(xLocked),
        .p_0_in(p_0_in),
        .s_axi_lite_aclk(s_axi_lite_aclk),
        .xLckdRisingFlag_reg(SyncAsyncLocked_n_2));
  system_video_dynclk_0_axi_dynclk_S00_AXI axi_dynclk_S00_AXI_inst
       (.D({rom[12:11],rom[9:0]}),
        .Q({slv_reg3[31:30],slv_reg3[15:14]}),
        .SR(RST),
        .\axi_rdata_reg[25]_0 ({slv_reg7[25],slv_reg7[21],slv_reg7[7:6],slv_reg7[3:1]}),
        .\axi_rdata_reg[30]_0 (slv_reg6),
        .out({STAT_REG,\FSM_onehot_clk_state_reg_n_0_[2] }),
        .rom_addr(rom_addr),
        .\rom_do_reg[10] (axi_dynclk_S00_AXI_inst_n_31),
        .\rom_do_reg[10]_0 (axi_dynclk_S00_AXI_inst_n_32),
        .\rom_do_reg[13] (axi_dynclk_S00_AXI_inst_n_33),
        .\rom_do_reg[13]_0 (axi_dynclk_S00_AXI_inst_n_34),
        .\rom_do_reg[14] (axi_dynclk_S00_AXI_inst_n_35),
        .\rom_do_reg[15] (axi_dynclk_S00_AXI_inst_n_36),
        .s_axi_lite_aclk(s_axi_lite_aclk),
        .s_axi_lite_araddr(s_axi_lite_araddr[5:2]),
        .s_axi_lite_aresetn(s_axi_lite_aresetn),
        .s_axi_lite_arready(s_axi_lite_arready),
        .s_axi_lite_arvalid(s_axi_lite_arvalid),
        .s_axi_lite_awaddr(s_axi_lite_awaddr[5:2]),
        .s_axi_lite_awready(s_axi_lite_awready),
        .s_axi_lite_awvalid(s_axi_lite_awvalid),
        .s_axi_lite_bready(s_axi_lite_bready),
        .s_axi_lite_bvalid(s_axi_lite_bvalid),
        .s_axi_lite_rdata(s_axi_lite_rdata),
        .s_axi_lite_rready(s_axi_lite_rready),
        .s_axi_lite_rvalid(s_axi_lite_rvalid),
        .s_axi_lite_wdata(s_axi_lite_wdata),
        .s_axi_lite_wready(s_axi_lite_wready),
        .s_axi_lite_wstrb(s_axi_lite_wstrb),
        .s_axi_lite_wvalid(s_axi_lite_wvalid),
        .sen_reg_reg(CTRL_REG),
        .sen_reg_reg_0(axi_dynclk_S00_AXI_inst_n_37));
  FDRE #(
    .INIT(1'b0)) 
    sen_reg_reg
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(axi_dynclk_S00_AXI_inst_n_37),
        .Q(sen_reg),
        .R(RST));
  FDRE xLckdRisingFlag_reg
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(SyncAsyncLocked_n_2),
        .Q(CLR),
        .R(1'b0));
  FDRE \xLocked_q_reg[1] 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(xLocked),
        .Q(p_0_in),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "axi_dynclk_S00_AXI" *) 
module system_video_dynclk_0_axi_dynclk_S00_AXI
   (s_axi_lite_awready,
    SR,
    s_axi_lite_wready,
    s_axi_lite_arready,
    s_axi_lite_bvalid,
    s_axi_lite_rvalid,
    Q,
    sen_reg_reg,
    \axi_rdata_reg[25]_0 ,
    \axi_rdata_reg[30]_0 ,
    D,
    \rom_do_reg[10] ,
    \rom_do_reg[10]_0 ,
    \rom_do_reg[13] ,
    \rom_do_reg[13]_0 ,
    \rom_do_reg[14] ,
    \rom_do_reg[15] ,
    sen_reg_reg_0,
    s_axi_lite_rdata,
    s_axi_lite_aclk,
    out,
    rom_addr,
    s_axi_lite_aresetn,
    s_axi_lite_bready,
    s_axi_lite_awvalid,
    s_axi_lite_wvalid,
    s_axi_lite_arvalid,
    s_axi_lite_rready,
    s_axi_lite_awaddr,
    s_axi_lite_wdata,
    s_axi_lite_araddr,
    s_axi_lite_wstrb);
  output s_axi_lite_awready;
  output [0:0]SR;
  output s_axi_lite_wready;
  output s_axi_lite_arready;
  output s_axi_lite_bvalid;
  output s_axi_lite_rvalid;
  output [3:0]Q;
  output [0:0]sen_reg_reg;
  output [6:0]\axi_rdata_reg[25]_0 ;
  output [0:0]\axi_rdata_reg[30]_0 ;
  output [11:0]D;
  output \rom_do_reg[10] ;
  output \rom_do_reg[10]_0 ;
  output \rom_do_reg[13] ;
  output \rom_do_reg[13]_0 ;
  output \rom_do_reg[14] ;
  output \rom_do_reg[15] ;
  output sen_reg_reg_0;
  output [31:0]s_axi_lite_rdata;
  input s_axi_lite_aclk;
  input [1:0]out;
  input [3:0]rom_addr;
  input s_axi_lite_aresetn;
  input s_axi_lite_bready;
  input s_axi_lite_awvalid;
  input s_axi_lite_wvalid;
  input s_axi_lite_arvalid;
  input s_axi_lite_rready;
  input [3:0]s_axi_lite_awaddr;
  input [31:0]s_axi_lite_wdata;
  input [3:0]s_axi_lite_araddr;
  input [3:0]s_axi_lite_wstrb;

  wire [11:0]D;
  wire [3:0]Q;
  wire [0:0]SR;
  wire axi_arready_i_1_n_0;
  wire [5:2]axi_awaddr;
  wire axi_awready0;
  wire axi_bvalid_i_1_n_0;
  wire \axi_rdata[0]_i_1_n_0 ;
  wire \axi_rdata[0]_i_2_n_0 ;
  wire \axi_rdata[0]_i_3_n_0 ;
  wire \axi_rdata[10]_i_1_n_0 ;
  wire \axi_rdata[10]_i_2_n_0 ;
  wire \axi_rdata[10]_i_3_n_0 ;
  wire \axi_rdata[11]_i_1_n_0 ;
  wire \axi_rdata[11]_i_2_n_0 ;
  wire \axi_rdata[11]_i_3_n_0 ;
  wire \axi_rdata[12]_i_1_n_0 ;
  wire \axi_rdata[12]_i_2_n_0 ;
  wire \axi_rdata[12]_i_3_n_0 ;
  wire \axi_rdata[13]_i_2_n_0 ;
  wire \axi_rdata[13]_i_3_n_0 ;
  wire \axi_rdata[14]_i_2_n_0 ;
  wire \axi_rdata[14]_i_3_n_0 ;
  wire \axi_rdata[15]_i_2_n_0 ;
  wire \axi_rdata[15]_i_3_n_0 ;
  wire \axi_rdata[16]_i_2_n_0 ;
  wire \axi_rdata[16]_i_3_n_0 ;
  wire \axi_rdata[17]_i_1_n_0 ;
  wire \axi_rdata[17]_i_2_n_0 ;
  wire \axi_rdata[17]_i_3_n_0 ;
  wire \axi_rdata[18]_i_2_n_0 ;
  wire \axi_rdata[18]_i_3_n_0 ;
  wire \axi_rdata[19]_i_1_n_0 ;
  wire \axi_rdata[19]_i_2_n_0 ;
  wire \axi_rdata[19]_i_3_n_0 ;
  wire \axi_rdata[1]_i_1_n_0 ;
  wire \axi_rdata[1]_i_2_n_0 ;
  wire \axi_rdata[1]_i_3_n_0 ;
  wire \axi_rdata[20]_i_2_n_0 ;
  wire \axi_rdata[20]_i_3_n_0 ;
  wire \axi_rdata[21]_i_2_n_0 ;
  wire \axi_rdata[21]_i_3_n_0 ;
  wire \axi_rdata[22]_i_2_n_0 ;
  wire \axi_rdata[22]_i_3_n_0 ;
  wire \axi_rdata[23]_i_2_n_0 ;
  wire \axi_rdata[23]_i_3_n_0 ;
  wire \axi_rdata[24]_i_2_n_0 ;
  wire \axi_rdata[24]_i_3_n_0 ;
  wire \axi_rdata[25]_i_1_n_0 ;
  wire \axi_rdata[25]_i_2_n_0 ;
  wire \axi_rdata[25]_i_3_n_0 ;
  wire \axi_rdata[26]_i_2_n_0 ;
  wire \axi_rdata[26]_i_3_n_0 ;
  wire \axi_rdata[27]_i_1_n_0 ;
  wire \axi_rdata[27]_i_2_n_0 ;
  wire \axi_rdata[27]_i_3_n_0 ;
  wire \axi_rdata[28]_i_1_n_0 ;
  wire \axi_rdata[28]_i_2_n_0 ;
  wire \axi_rdata[28]_i_3_n_0 ;
  wire \axi_rdata[29]_i_1_n_0 ;
  wire \axi_rdata[29]_i_2_n_0 ;
  wire \axi_rdata[29]_i_3_n_0 ;
  wire \axi_rdata[2]_i_1_n_0 ;
  wire \axi_rdata[2]_i_2_n_0 ;
  wire \axi_rdata[2]_i_3_n_0 ;
  wire \axi_rdata[30]_i_1_n_0 ;
  wire \axi_rdata[30]_i_2_n_0 ;
  wire \axi_rdata[30]_i_3_n_0 ;
  wire \axi_rdata[31]_i_1_n_0 ;
  wire \axi_rdata[31]_i_2_n_0 ;
  wire \axi_rdata[31]_i_3_n_0 ;
  wire \axi_rdata[31]_i_4_n_0 ;
  wire \axi_rdata[3]_i_1_n_0 ;
  wire \axi_rdata[3]_i_2_n_0 ;
  wire \axi_rdata[3]_i_3_n_0 ;
  wire \axi_rdata[4]_i_1_n_0 ;
  wire \axi_rdata[4]_i_2_n_0 ;
  wire \axi_rdata[4]_i_3_n_0 ;
  wire \axi_rdata[5]_i_1_n_0 ;
  wire \axi_rdata[5]_i_2_n_0 ;
  wire \axi_rdata[5]_i_3_n_0 ;
  wire \axi_rdata[6]_i_1_n_0 ;
  wire \axi_rdata[6]_i_2_n_0 ;
  wire \axi_rdata[6]_i_3_n_0 ;
  wire \axi_rdata[7]_i_1_n_0 ;
  wire \axi_rdata[7]_i_2_n_0 ;
  wire \axi_rdata[7]_i_3_n_0 ;
  wire \axi_rdata[8]_i_2_n_0 ;
  wire \axi_rdata[8]_i_3_n_0 ;
  wire \axi_rdata[9]_i_1_n_0 ;
  wire \axi_rdata[9]_i_2_n_0 ;
  wire \axi_rdata[9]_i_3_n_0 ;
  wire [6:0]\axi_rdata_reg[25]_0 ;
  wire [0:0]\axi_rdata_reg[30]_0 ;
  wire axi_rvalid_i_1_n_0;
  wire axi_wready0;
  wire [1:0]out;
  wire [31:7]p_1_in;
  wire [26:8]reg_data_out;
  wire [3:0]rom_addr;
  wire \rom_do[0]_i_2_n_0 ;
  wire \rom_do[0]_i_3_n_0 ;
  wire \rom_do[0]_i_4_n_0 ;
  wire \rom_do[11]_i_2_n_0 ;
  wire \rom_do[11]_i_3_n_0 ;
  wire \rom_do[11]_i_4_n_0 ;
  wire \rom_do[12]_i_2_n_0 ;
  wire \rom_do[12]_i_3_n_0 ;
  wire \rom_do[12]_i_4_n_0 ;
  wire \rom_do[1]_i_2_n_0 ;
  wire \rom_do[1]_i_3_n_0 ;
  wire \rom_do[1]_i_4_n_0 ;
  wire \rom_do[2]_i_2_n_0 ;
  wire \rom_do[2]_i_3_n_0 ;
  wire \rom_do[2]_i_4_n_0 ;
  wire \rom_do[3]_i_2_n_0 ;
  wire \rom_do[3]_i_3_n_0 ;
  wire \rom_do[3]_i_4_n_0 ;
  wire \rom_do[4]_i_2_n_0 ;
  wire \rom_do[4]_i_3_n_0 ;
  wire \rom_do[4]_i_4_n_0 ;
  wire \rom_do[5]_i_2_n_0 ;
  wire \rom_do[5]_i_3_n_0 ;
  wire \rom_do[5]_i_4_n_0 ;
  wire \rom_do[6]_i_2_n_0 ;
  wire \rom_do[6]_i_3_n_0 ;
  wire \rom_do[6]_i_4_n_0 ;
  wire \rom_do[7]_i_2_n_0 ;
  wire \rom_do[7]_i_3_n_0 ;
  wire \rom_do[7]_i_4_n_0 ;
  wire \rom_do[8]_i_2_n_0 ;
  wire \rom_do[8]_i_3_n_0 ;
  wire \rom_do[8]_i_4_n_0 ;
  wire \rom_do[9]_i_2_n_0 ;
  wire \rom_do[9]_i_3_n_0 ;
  wire \rom_do[9]_i_4_n_0 ;
  wire \rom_do_reg[10] ;
  wire \rom_do_reg[10]_0 ;
  wire \rom_do_reg[13] ;
  wire \rom_do_reg[13]_0 ;
  wire \rom_do_reg[14] ;
  wire \rom_do_reg[15] ;
  wire s_axi_lite_aclk;
  wire [3:0]s_axi_lite_araddr;
  wire s_axi_lite_aresetn;
  wire s_axi_lite_arready;
  wire s_axi_lite_arvalid;
  wire [3:0]s_axi_lite_awaddr;
  wire s_axi_lite_awready;
  wire s_axi_lite_awvalid;
  wire s_axi_lite_bready;
  wire s_axi_lite_bvalid;
  wire [31:0]s_axi_lite_rdata;
  wire s_axi_lite_rready;
  wire s_axi_lite_rvalid;
  wire [31:0]s_axi_lite_wdata;
  wire s_axi_lite_wready;
  wire [3:0]s_axi_lite_wstrb;
  wire s_axi_lite_wvalid;
  wire [3:0]sel0;
  wire [0:0]sen_reg_reg;
  wire sen_reg_reg_0;
  wire \slv_reg0[31]_i_2_n_0 ;
  wire \slv_reg0_reg_n_0_[10] ;
  wire \slv_reg0_reg_n_0_[11] ;
  wire \slv_reg0_reg_n_0_[12] ;
  wire \slv_reg0_reg_n_0_[13] ;
  wire \slv_reg0_reg_n_0_[14] ;
  wire \slv_reg0_reg_n_0_[15] ;
  wire \slv_reg0_reg_n_0_[16] ;
  wire \slv_reg0_reg_n_0_[17] ;
  wire \slv_reg0_reg_n_0_[18] ;
  wire \slv_reg0_reg_n_0_[19] ;
  wire \slv_reg0_reg_n_0_[1] ;
  wire \slv_reg0_reg_n_0_[20] ;
  wire \slv_reg0_reg_n_0_[21] ;
  wire \slv_reg0_reg_n_0_[22] ;
  wire \slv_reg0_reg_n_0_[23] ;
  wire \slv_reg0_reg_n_0_[24] ;
  wire \slv_reg0_reg_n_0_[25] ;
  wire \slv_reg0_reg_n_0_[26] ;
  wire \slv_reg0_reg_n_0_[27] ;
  wire \slv_reg0_reg_n_0_[28] ;
  wire \slv_reg0_reg_n_0_[29] ;
  wire \slv_reg0_reg_n_0_[2] ;
  wire \slv_reg0_reg_n_0_[30] ;
  wire \slv_reg0_reg_n_0_[31] ;
  wire \slv_reg0_reg_n_0_[3] ;
  wire \slv_reg0_reg_n_0_[4] ;
  wire \slv_reg0_reg_n_0_[5] ;
  wire \slv_reg0_reg_n_0_[6] ;
  wire \slv_reg0_reg_n_0_[7] ;
  wire \slv_reg0_reg_n_0_[8] ;
  wire \slv_reg0_reg_n_0_[9] ;
  wire [31:0]slv_reg2;
  wire \slv_reg2[15]_i_1_n_0 ;
  wire \slv_reg2[23]_i_1_n_0 ;
  wire \slv_reg2[31]_i_1_n_0 ;
  wire \slv_reg2[7]_i_1_n_0 ;
  wire [29:0]slv_reg3;
  wire \slv_reg3[15]_i_1_n_0 ;
  wire \slv_reg3[23]_i_1_n_0 ;
  wire \slv_reg3[31]_i_1_n_0 ;
  wire \slv_reg3[7]_i_1_n_0 ;
  wire [31:0]slv_reg4;
  wire \slv_reg4[15]_i_1_n_0 ;
  wire \slv_reg4[23]_i_1_n_0 ;
  wire \slv_reg4[31]_i_1_n_0 ;
  wire \slv_reg4[7]_i_1_n_0 ;
  wire [31:0]slv_reg5;
  wire \slv_reg5[15]_i_1_n_0 ;
  wire \slv_reg5[23]_i_1_n_0 ;
  wire \slv_reg5[31]_i_1_n_0 ;
  wire \slv_reg5[7]_i_1_n_0 ;
  wire [31:0]slv_reg6;
  wire \slv_reg6[15]_i_1_n_0 ;
  wire \slv_reg6[23]_i_1_n_0 ;
  wire \slv_reg6[31]_i_1_n_0 ;
  wire \slv_reg6[7]_i_1_n_0 ;
  wire [31:0]slv_reg7;
  wire \slv_reg7[15]_i_1_n_0 ;
  wire \slv_reg7[23]_i_1_n_0 ;
  wire \slv_reg7[31]_i_1_n_0 ;
  wire \slv_reg7[7]_i_1_n_0 ;

  FDSE \axi_araddr_reg[2] 
       (.C(s_axi_lite_aclk),
        .CE(axi_arready_i_1_n_0),
        .D(s_axi_lite_araddr[0]),
        .Q(sel0[0]),
        .S(SR));
  FDSE \axi_araddr_reg[3] 
       (.C(s_axi_lite_aclk),
        .CE(axi_arready_i_1_n_0),
        .D(s_axi_lite_araddr[1]),
        .Q(sel0[1]),
        .S(SR));
  FDSE \axi_araddr_reg[4] 
       (.C(s_axi_lite_aclk),
        .CE(axi_arready_i_1_n_0),
        .D(s_axi_lite_araddr[2]),
        .Q(sel0[2]),
        .S(SR));
  FDSE \axi_araddr_reg[5] 
       (.C(s_axi_lite_aclk),
        .CE(axi_arready_i_1_n_0),
        .D(s_axi_lite_araddr[3]),
        .Q(sel0[3]),
        .S(SR));
  LUT2 #(
    .INIT(4'h2)) 
    axi_arready_i_1
       (.I0(s_axi_lite_arvalid),
        .I1(s_axi_lite_arready),
        .O(axi_arready_i_1_n_0));
  FDRE axi_arready_reg
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(axi_arready_i_1_n_0),
        .Q(s_axi_lite_arready),
        .R(SR));
  FDRE \axi_awaddr_reg[2] 
       (.C(s_axi_lite_aclk),
        .CE(axi_awready0),
        .D(s_axi_lite_awaddr[0]),
        .Q(axi_awaddr[2]),
        .R(SR));
  FDRE \axi_awaddr_reg[3] 
       (.C(s_axi_lite_aclk),
        .CE(axi_awready0),
        .D(s_axi_lite_awaddr[1]),
        .Q(axi_awaddr[3]),
        .R(SR));
  FDRE \axi_awaddr_reg[4] 
       (.C(s_axi_lite_aclk),
        .CE(axi_awready0),
        .D(s_axi_lite_awaddr[2]),
        .Q(axi_awaddr[4]),
        .R(SR));
  FDRE \axi_awaddr_reg[5] 
       (.C(s_axi_lite_aclk),
        .CE(axi_awready0),
        .D(s_axi_lite_awaddr[3]),
        .Q(axi_awaddr[5]),
        .R(SR));
  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1
       (.I0(s_axi_lite_aresetn),
        .O(SR));
  LUT3 #(
    .INIT(8'h08)) 
    axi_awready_i_2
       (.I0(s_axi_lite_wvalid),
        .I1(s_axi_lite_awvalid),
        .I2(s_axi_lite_awready),
        .O(axi_awready0));
  FDRE axi_awready_reg
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(axi_awready0),
        .Q(s_axi_lite_awready),
        .R(SR));
  LUT6 #(
    .INIT(64'h7444444444444444)) 
    axi_bvalid_i_1
       (.I0(s_axi_lite_bready),
        .I1(s_axi_lite_bvalid),
        .I2(s_axi_lite_wready),
        .I3(s_axi_lite_awvalid),
        .I4(s_axi_lite_wvalid),
        .I5(s_axi_lite_awready),
        .O(axi_bvalid_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(s_axi_lite_bvalid),
        .R(SR));
  LUT4 #(
    .INIT(16'h00E2)) 
    \axi_rdata[0]_i_1 
       (.I0(\axi_rdata[0]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(\axi_rdata[0]_i_3_n_0 ),
        .I3(sel0[3]),
        .O(\axi_rdata[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_2 
       (.I0(slv_reg3[0]),
        .I1(slv_reg2[0]),
        .I2(sel0[1]),
        .I3(out[1]),
        .I4(sel0[0]),
        .I5(sen_reg_reg),
        .O(\axi_rdata[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_3 
       (.I0(slv_reg7[0]),
        .I1(slv_reg6[0]),
        .I2(sel0[1]),
        .I3(slv_reg5[0]),
        .I4(sel0[0]),
        .I5(slv_reg4[0]),
        .O(\axi_rdata[0]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \axi_rdata[10]_i_1 
       (.I0(\axi_rdata[10]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(\axi_rdata[10]_i_3_n_0 ),
        .I3(sel0[3]),
        .O(\axi_rdata[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[10]_i_2 
       (.I0(slv_reg3[10]),
        .I1(slv_reg2[10]),
        .I2(sel0[1]),
        .I3(\slv_reg0_reg_n_0_[10] ),
        .I4(sel0[0]),
        .O(\axi_rdata[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[10]_i_3 
       (.I0(slv_reg7[10]),
        .I1(slv_reg6[10]),
        .I2(sel0[1]),
        .I3(slv_reg5[10]),
        .I4(sel0[0]),
        .I5(slv_reg4[10]),
        .O(\axi_rdata[10]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \axi_rdata[11]_i_1 
       (.I0(\axi_rdata[11]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(\axi_rdata[11]_i_3_n_0 ),
        .I3(sel0[3]),
        .O(\axi_rdata[11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[11]_i_2 
       (.I0(slv_reg3[11]),
        .I1(slv_reg2[11]),
        .I2(sel0[1]),
        .I3(\slv_reg0_reg_n_0_[11] ),
        .I4(sel0[0]),
        .O(\axi_rdata[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[11]_i_3 
       (.I0(slv_reg7[11]),
        .I1(slv_reg6[11]),
        .I2(sel0[1]),
        .I3(slv_reg5[11]),
        .I4(sel0[0]),
        .I5(slv_reg4[11]),
        .O(\axi_rdata[11]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \axi_rdata[12]_i_1 
       (.I0(\axi_rdata[12]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(\axi_rdata[12]_i_3_n_0 ),
        .I3(sel0[3]),
        .O(\axi_rdata[12]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[12]_i_2 
       (.I0(slv_reg3[12]),
        .I1(slv_reg2[12]),
        .I2(sel0[1]),
        .I3(\slv_reg0_reg_n_0_[12] ),
        .I4(sel0[0]),
        .O(\axi_rdata[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[12]_i_3 
       (.I0(slv_reg7[12]),
        .I1(slv_reg6[12]),
        .I2(sel0[1]),
        .I3(slv_reg5[12]),
        .I4(sel0[0]),
        .I5(slv_reg4[12]),
        .O(\axi_rdata[12]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0F001F1F0F001010)) 
    \axi_rdata[13]_i_1 
       (.I0(sel0[0]),
        .I1(sel0[1]),
        .I2(sel0[3]),
        .I3(\axi_rdata[13]_i_2_n_0 ),
        .I4(sel0[2]),
        .I5(\axi_rdata[13]_i_3_n_0 ),
        .O(reg_data_out[13]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[13]_i_2 
       (.I0(slv_reg7[13]),
        .I1(slv_reg6[13]),
        .I2(sel0[1]),
        .I3(slv_reg5[13]),
        .I4(sel0[0]),
        .I5(slv_reg4[13]),
        .O(\axi_rdata[13]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[13]_i_3 
       (.I0(slv_reg3[13]),
        .I1(slv_reg2[13]),
        .I2(sel0[1]),
        .I3(\slv_reg0_reg_n_0_[13] ),
        .I4(sel0[0]),
        .O(\axi_rdata[13]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0F001F1F0F001010)) 
    \axi_rdata[14]_i_1 
       (.I0(sel0[0]),
        .I1(sel0[1]),
        .I2(sel0[3]),
        .I3(\axi_rdata[14]_i_2_n_0 ),
        .I4(sel0[2]),
        .I5(\axi_rdata[14]_i_3_n_0 ),
        .O(reg_data_out[14]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[14]_i_2 
       (.I0(slv_reg7[14]),
        .I1(slv_reg6[14]),
        .I2(sel0[1]),
        .I3(slv_reg5[14]),
        .I4(sel0[0]),
        .I5(slv_reg4[14]),
        .O(\axi_rdata[14]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[14]_i_3 
       (.I0(Q[0]),
        .I1(slv_reg2[14]),
        .I2(sel0[1]),
        .I3(\slv_reg0_reg_n_0_[14] ),
        .I4(sel0[0]),
        .O(\axi_rdata[14]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0F001F1F0F001010)) 
    \axi_rdata[15]_i_1 
       (.I0(sel0[0]),
        .I1(sel0[1]),
        .I2(sel0[3]),
        .I3(\axi_rdata[15]_i_2_n_0 ),
        .I4(sel0[2]),
        .I5(\axi_rdata[15]_i_3_n_0 ),
        .O(reg_data_out[15]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[15]_i_2 
       (.I0(slv_reg7[15]),
        .I1(slv_reg6[15]),
        .I2(sel0[1]),
        .I3(slv_reg5[15]),
        .I4(sel0[0]),
        .I5(slv_reg4[15]),
        .O(\axi_rdata[15]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[15]_i_3 
       (.I0(Q[1]),
        .I1(slv_reg2[15]),
        .I2(sel0[1]),
        .I3(\slv_reg0_reg_n_0_[15] ),
        .I4(sel0[0]),
        .O(\axi_rdata[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0F001F1F0F001010)) 
    \axi_rdata[16]_i_1 
       (.I0(sel0[0]),
        .I1(sel0[1]),
        .I2(sel0[3]),
        .I3(\axi_rdata[16]_i_2_n_0 ),
        .I4(sel0[2]),
        .I5(\axi_rdata[16]_i_3_n_0 ),
        .O(reg_data_out[16]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[16]_i_2 
       (.I0(slv_reg7[16]),
        .I1(slv_reg6[16]),
        .I2(sel0[1]),
        .I3(slv_reg5[16]),
        .I4(sel0[0]),
        .I5(slv_reg4[16]),
        .O(\axi_rdata[16]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[16]_i_3 
       (.I0(slv_reg3[16]),
        .I1(slv_reg2[16]),
        .I2(sel0[1]),
        .I3(\slv_reg0_reg_n_0_[16] ),
        .I4(sel0[0]),
        .O(\axi_rdata[16]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \axi_rdata[17]_i_1 
       (.I0(\axi_rdata[17]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(\axi_rdata[17]_i_3_n_0 ),
        .I3(sel0[3]),
        .O(\axi_rdata[17]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[17]_i_2 
       (.I0(slv_reg3[17]),
        .I1(slv_reg2[17]),
        .I2(sel0[1]),
        .I3(\slv_reg0_reg_n_0_[17] ),
        .I4(sel0[0]),
        .O(\axi_rdata[17]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[17]_i_3 
       (.I0(slv_reg7[17]),
        .I1(slv_reg6[17]),
        .I2(sel0[1]),
        .I3(slv_reg5[17]),
        .I4(sel0[0]),
        .I5(slv_reg4[17]),
        .O(\axi_rdata[17]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0F001F1F0F001010)) 
    \axi_rdata[18]_i_1 
       (.I0(sel0[0]),
        .I1(sel0[1]),
        .I2(sel0[3]),
        .I3(\axi_rdata[18]_i_2_n_0 ),
        .I4(sel0[2]),
        .I5(\axi_rdata[18]_i_3_n_0 ),
        .O(reg_data_out[18]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[18]_i_2 
       (.I0(slv_reg7[18]),
        .I1(slv_reg6[18]),
        .I2(sel0[1]),
        .I3(slv_reg5[18]),
        .I4(sel0[0]),
        .I5(slv_reg4[18]),
        .O(\axi_rdata[18]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[18]_i_3 
       (.I0(slv_reg3[18]),
        .I1(slv_reg2[18]),
        .I2(sel0[1]),
        .I3(\slv_reg0_reg_n_0_[18] ),
        .I4(sel0[0]),
        .O(\axi_rdata[18]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \axi_rdata[19]_i_1 
       (.I0(\axi_rdata[19]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(\axi_rdata[19]_i_3_n_0 ),
        .I3(sel0[3]),
        .O(\axi_rdata[19]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[19]_i_2 
       (.I0(slv_reg3[19]),
        .I1(slv_reg2[19]),
        .I2(sel0[1]),
        .I3(\slv_reg0_reg_n_0_[19] ),
        .I4(sel0[0]),
        .O(\axi_rdata[19]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[19]_i_3 
       (.I0(slv_reg7[19]),
        .I1(slv_reg6[19]),
        .I2(sel0[1]),
        .I3(slv_reg5[19]),
        .I4(sel0[0]),
        .I5(slv_reg4[19]),
        .O(\axi_rdata[19]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \axi_rdata[1]_i_1 
       (.I0(\axi_rdata[1]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(\axi_rdata[1]_i_3_n_0 ),
        .I3(sel0[3]),
        .O(\axi_rdata[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[1]_i_2 
       (.I0(slv_reg3[1]),
        .I1(slv_reg2[1]),
        .I2(sel0[1]),
        .I3(\slv_reg0_reg_n_0_[1] ),
        .I4(sel0[0]),
        .O(\axi_rdata[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[1]_i_3 
       (.I0(\axi_rdata_reg[25]_0 [0]),
        .I1(slv_reg6[1]),
        .I2(sel0[1]),
        .I3(slv_reg5[1]),
        .I4(sel0[0]),
        .I5(slv_reg4[1]),
        .O(\axi_rdata[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0F001F1F0F001010)) 
    \axi_rdata[20]_i_1 
       (.I0(sel0[0]),
        .I1(sel0[1]),
        .I2(sel0[3]),
        .I3(\axi_rdata[20]_i_2_n_0 ),
        .I4(sel0[2]),
        .I5(\axi_rdata[20]_i_3_n_0 ),
        .O(reg_data_out[20]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[20]_i_2 
       (.I0(slv_reg7[20]),
        .I1(slv_reg6[20]),
        .I2(sel0[1]),
        .I3(slv_reg5[20]),
        .I4(sel0[0]),
        .I5(slv_reg4[20]),
        .O(\axi_rdata[20]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[20]_i_3 
       (.I0(slv_reg3[20]),
        .I1(slv_reg2[20]),
        .I2(sel0[1]),
        .I3(\slv_reg0_reg_n_0_[20] ),
        .I4(sel0[0]),
        .O(\axi_rdata[20]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0F001F1F0F001010)) 
    \axi_rdata[21]_i_1 
       (.I0(sel0[0]),
        .I1(sel0[1]),
        .I2(sel0[3]),
        .I3(\axi_rdata[21]_i_2_n_0 ),
        .I4(sel0[2]),
        .I5(\axi_rdata[21]_i_3_n_0 ),
        .O(reg_data_out[21]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[21]_i_2 
       (.I0(\axi_rdata_reg[25]_0 [5]),
        .I1(slv_reg6[21]),
        .I2(sel0[1]),
        .I3(slv_reg5[21]),
        .I4(sel0[0]),
        .I5(slv_reg4[21]),
        .O(\axi_rdata[21]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[21]_i_3 
       (.I0(slv_reg3[21]),
        .I1(slv_reg2[21]),
        .I2(sel0[1]),
        .I3(\slv_reg0_reg_n_0_[21] ),
        .I4(sel0[0]),
        .O(\axi_rdata[21]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0F001F1F0F001010)) 
    \axi_rdata[22]_i_1 
       (.I0(sel0[0]),
        .I1(sel0[1]),
        .I2(sel0[3]),
        .I3(\axi_rdata[22]_i_2_n_0 ),
        .I4(sel0[2]),
        .I5(\axi_rdata[22]_i_3_n_0 ),
        .O(reg_data_out[22]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[22]_i_2 
       (.I0(slv_reg7[22]),
        .I1(slv_reg6[22]),
        .I2(sel0[1]),
        .I3(slv_reg5[22]),
        .I4(sel0[0]),
        .I5(slv_reg4[22]),
        .O(\axi_rdata[22]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[22]_i_3 
       (.I0(slv_reg3[22]),
        .I1(slv_reg2[22]),
        .I2(sel0[1]),
        .I3(\slv_reg0_reg_n_0_[22] ),
        .I4(sel0[0]),
        .O(\axi_rdata[22]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0F001F1F0F001010)) 
    \axi_rdata[23]_i_1 
       (.I0(sel0[0]),
        .I1(sel0[1]),
        .I2(sel0[3]),
        .I3(\axi_rdata[23]_i_2_n_0 ),
        .I4(sel0[2]),
        .I5(\axi_rdata[23]_i_3_n_0 ),
        .O(reg_data_out[23]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[23]_i_2 
       (.I0(slv_reg7[23]),
        .I1(slv_reg6[23]),
        .I2(sel0[1]),
        .I3(slv_reg5[23]),
        .I4(sel0[0]),
        .I5(slv_reg4[23]),
        .O(\axi_rdata[23]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[23]_i_3 
       (.I0(slv_reg3[23]),
        .I1(slv_reg2[23]),
        .I2(sel0[1]),
        .I3(\slv_reg0_reg_n_0_[23] ),
        .I4(sel0[0]),
        .O(\axi_rdata[23]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0F001F1F0F001010)) 
    \axi_rdata[24]_i_1 
       (.I0(sel0[0]),
        .I1(sel0[1]),
        .I2(sel0[3]),
        .I3(\axi_rdata[24]_i_2_n_0 ),
        .I4(sel0[2]),
        .I5(\axi_rdata[24]_i_3_n_0 ),
        .O(reg_data_out[24]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[24]_i_2 
       (.I0(slv_reg7[24]),
        .I1(slv_reg6[24]),
        .I2(sel0[1]),
        .I3(slv_reg5[24]),
        .I4(sel0[0]),
        .I5(slv_reg4[24]),
        .O(\axi_rdata[24]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[24]_i_3 
       (.I0(slv_reg3[24]),
        .I1(slv_reg2[24]),
        .I2(sel0[1]),
        .I3(\slv_reg0_reg_n_0_[24] ),
        .I4(sel0[0]),
        .O(\axi_rdata[24]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \axi_rdata[25]_i_1 
       (.I0(\axi_rdata[25]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(\axi_rdata[25]_i_3_n_0 ),
        .I3(sel0[3]),
        .O(\axi_rdata[25]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[25]_i_2 
       (.I0(slv_reg3[25]),
        .I1(slv_reg2[25]),
        .I2(sel0[1]),
        .I3(\slv_reg0_reg_n_0_[25] ),
        .I4(sel0[0]),
        .O(\axi_rdata[25]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[25]_i_3 
       (.I0(\axi_rdata_reg[25]_0 [6]),
        .I1(slv_reg6[25]),
        .I2(sel0[1]),
        .I3(slv_reg5[25]),
        .I4(sel0[0]),
        .I5(slv_reg4[25]),
        .O(\axi_rdata[25]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0F001F1F0F001010)) 
    \axi_rdata[26]_i_1 
       (.I0(sel0[0]),
        .I1(sel0[1]),
        .I2(sel0[3]),
        .I3(\axi_rdata[26]_i_2_n_0 ),
        .I4(sel0[2]),
        .I5(\axi_rdata[26]_i_3_n_0 ),
        .O(reg_data_out[26]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[26]_i_2 
       (.I0(slv_reg7[26]),
        .I1(slv_reg6[26]),
        .I2(sel0[1]),
        .I3(slv_reg5[26]),
        .I4(sel0[0]),
        .I5(slv_reg4[26]),
        .O(\axi_rdata[26]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[26]_i_3 
       (.I0(slv_reg3[26]),
        .I1(slv_reg2[26]),
        .I2(sel0[1]),
        .I3(\slv_reg0_reg_n_0_[26] ),
        .I4(sel0[0]),
        .O(\axi_rdata[26]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \axi_rdata[27]_i_1 
       (.I0(\axi_rdata[27]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(\axi_rdata[27]_i_3_n_0 ),
        .I3(sel0[3]),
        .O(\axi_rdata[27]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[27]_i_2 
       (.I0(slv_reg3[27]),
        .I1(slv_reg2[27]),
        .I2(sel0[1]),
        .I3(\slv_reg0_reg_n_0_[27] ),
        .I4(sel0[0]),
        .O(\axi_rdata[27]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[27]_i_3 
       (.I0(slv_reg7[27]),
        .I1(slv_reg6[27]),
        .I2(sel0[1]),
        .I3(slv_reg5[27]),
        .I4(sel0[0]),
        .I5(slv_reg4[27]),
        .O(\axi_rdata[27]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \axi_rdata[28]_i_1 
       (.I0(\axi_rdata[28]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(\axi_rdata[28]_i_3_n_0 ),
        .I3(sel0[3]),
        .O(\axi_rdata[28]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[28]_i_2 
       (.I0(slv_reg3[28]),
        .I1(slv_reg2[28]),
        .I2(sel0[1]),
        .I3(\slv_reg0_reg_n_0_[28] ),
        .I4(sel0[0]),
        .O(\axi_rdata[28]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[28]_i_3 
       (.I0(slv_reg7[28]),
        .I1(slv_reg6[28]),
        .I2(sel0[1]),
        .I3(slv_reg5[28]),
        .I4(sel0[0]),
        .I5(slv_reg4[28]),
        .O(\axi_rdata[28]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \axi_rdata[29]_i_1 
       (.I0(\axi_rdata[29]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(\axi_rdata[29]_i_3_n_0 ),
        .I3(sel0[3]),
        .O(\axi_rdata[29]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[29]_i_2 
       (.I0(slv_reg3[29]),
        .I1(slv_reg2[29]),
        .I2(sel0[1]),
        .I3(\slv_reg0_reg_n_0_[29] ),
        .I4(sel0[0]),
        .O(\axi_rdata[29]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[29]_i_3 
       (.I0(slv_reg7[29]),
        .I1(slv_reg6[29]),
        .I2(sel0[1]),
        .I3(slv_reg5[29]),
        .I4(sel0[0]),
        .I5(slv_reg4[29]),
        .O(\axi_rdata[29]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \axi_rdata[2]_i_1 
       (.I0(\axi_rdata[2]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(\axi_rdata[2]_i_3_n_0 ),
        .I3(sel0[3]),
        .O(\axi_rdata[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[2]_i_2 
       (.I0(slv_reg3[2]),
        .I1(slv_reg2[2]),
        .I2(sel0[1]),
        .I3(\slv_reg0_reg_n_0_[2] ),
        .I4(sel0[0]),
        .O(\axi_rdata[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[2]_i_3 
       (.I0(\axi_rdata_reg[25]_0 [1]),
        .I1(slv_reg6[2]),
        .I2(sel0[1]),
        .I3(slv_reg5[2]),
        .I4(sel0[0]),
        .I5(slv_reg4[2]),
        .O(\axi_rdata[2]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \axi_rdata[30]_i_1 
       (.I0(\axi_rdata[30]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(\axi_rdata[30]_i_3_n_0 ),
        .I3(sel0[3]),
        .O(\axi_rdata[30]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[30]_i_2 
       (.I0(Q[2]),
        .I1(slv_reg2[30]),
        .I2(sel0[1]),
        .I3(\slv_reg0_reg_n_0_[30] ),
        .I4(sel0[0]),
        .O(\axi_rdata[30]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[30]_i_3 
       (.I0(slv_reg7[30]),
        .I1(\axi_rdata_reg[30]_0 ),
        .I2(sel0[1]),
        .I3(slv_reg5[30]),
        .I4(sel0[0]),
        .I5(slv_reg4[30]),
        .O(\axi_rdata[30]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \axi_rdata[31]_i_1 
       (.I0(s_axi_lite_arready),
        .I1(s_axi_lite_arvalid),
        .I2(s_axi_lite_rvalid),
        .O(\axi_rdata[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \axi_rdata[31]_i_2 
       (.I0(\axi_rdata[31]_i_3_n_0 ),
        .I1(sel0[2]),
        .I2(\axi_rdata[31]_i_4_n_0 ),
        .I3(sel0[3]),
        .O(\axi_rdata[31]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[31]_i_3 
       (.I0(Q[3]),
        .I1(slv_reg2[31]),
        .I2(sel0[1]),
        .I3(\slv_reg0_reg_n_0_[31] ),
        .I4(sel0[0]),
        .O(\axi_rdata[31]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[31]_i_4 
       (.I0(slv_reg7[31]),
        .I1(slv_reg6[31]),
        .I2(sel0[1]),
        .I3(slv_reg5[31]),
        .I4(sel0[0]),
        .I5(slv_reg4[31]),
        .O(\axi_rdata[31]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \axi_rdata[3]_i_1 
       (.I0(\axi_rdata[3]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(\axi_rdata[3]_i_3_n_0 ),
        .I3(sel0[3]),
        .O(\axi_rdata[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[3]_i_2 
       (.I0(slv_reg3[3]),
        .I1(slv_reg2[3]),
        .I2(sel0[1]),
        .I3(\slv_reg0_reg_n_0_[3] ),
        .I4(sel0[0]),
        .O(\axi_rdata[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[3]_i_3 
       (.I0(\axi_rdata_reg[25]_0 [2]),
        .I1(slv_reg6[3]),
        .I2(sel0[1]),
        .I3(slv_reg5[3]),
        .I4(sel0[0]),
        .I5(slv_reg4[3]),
        .O(\axi_rdata[3]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \axi_rdata[4]_i_1 
       (.I0(\axi_rdata[4]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(\axi_rdata[4]_i_3_n_0 ),
        .I3(sel0[3]),
        .O(\axi_rdata[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[4]_i_2 
       (.I0(slv_reg3[4]),
        .I1(slv_reg2[4]),
        .I2(sel0[1]),
        .I3(\slv_reg0_reg_n_0_[4] ),
        .I4(sel0[0]),
        .O(\axi_rdata[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[4]_i_3 
       (.I0(slv_reg7[4]),
        .I1(slv_reg6[4]),
        .I2(sel0[1]),
        .I3(slv_reg5[4]),
        .I4(sel0[0]),
        .I5(slv_reg4[4]),
        .O(\axi_rdata[4]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \axi_rdata[5]_i_1 
       (.I0(\axi_rdata[5]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(\axi_rdata[5]_i_3_n_0 ),
        .I3(sel0[3]),
        .O(\axi_rdata[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[5]_i_2 
       (.I0(slv_reg3[5]),
        .I1(slv_reg2[5]),
        .I2(sel0[1]),
        .I3(\slv_reg0_reg_n_0_[5] ),
        .I4(sel0[0]),
        .O(\axi_rdata[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[5]_i_3 
       (.I0(slv_reg7[5]),
        .I1(slv_reg6[5]),
        .I2(sel0[1]),
        .I3(slv_reg5[5]),
        .I4(sel0[0]),
        .I5(slv_reg4[5]),
        .O(\axi_rdata[5]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \axi_rdata[6]_i_1 
       (.I0(\axi_rdata[6]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(\axi_rdata[6]_i_3_n_0 ),
        .I3(sel0[3]),
        .O(\axi_rdata[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[6]_i_2 
       (.I0(slv_reg3[6]),
        .I1(slv_reg2[6]),
        .I2(sel0[1]),
        .I3(\slv_reg0_reg_n_0_[6] ),
        .I4(sel0[0]),
        .O(\axi_rdata[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[6]_i_3 
       (.I0(\axi_rdata_reg[25]_0 [3]),
        .I1(slv_reg6[6]),
        .I2(sel0[1]),
        .I3(slv_reg5[6]),
        .I4(sel0[0]),
        .I5(slv_reg4[6]),
        .O(\axi_rdata[6]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \axi_rdata[7]_i_1 
       (.I0(\axi_rdata[7]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(\axi_rdata[7]_i_3_n_0 ),
        .I3(sel0[3]),
        .O(\axi_rdata[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[7]_i_2 
       (.I0(slv_reg3[7]),
        .I1(slv_reg2[7]),
        .I2(sel0[1]),
        .I3(\slv_reg0_reg_n_0_[7] ),
        .I4(sel0[0]),
        .O(\axi_rdata[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[7]_i_3 
       (.I0(\axi_rdata_reg[25]_0 [4]),
        .I1(slv_reg6[7]),
        .I2(sel0[1]),
        .I3(slv_reg5[7]),
        .I4(sel0[0]),
        .I5(slv_reg4[7]),
        .O(\axi_rdata[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0F001F1F0F001010)) 
    \axi_rdata[8]_i_1 
       (.I0(sel0[0]),
        .I1(sel0[1]),
        .I2(sel0[3]),
        .I3(\axi_rdata[8]_i_2_n_0 ),
        .I4(sel0[2]),
        .I5(\axi_rdata[8]_i_3_n_0 ),
        .O(reg_data_out[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[8]_i_2 
       (.I0(slv_reg7[8]),
        .I1(slv_reg6[8]),
        .I2(sel0[1]),
        .I3(slv_reg5[8]),
        .I4(sel0[0]),
        .I5(slv_reg4[8]),
        .O(\axi_rdata[8]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[8]_i_3 
       (.I0(slv_reg3[8]),
        .I1(slv_reg2[8]),
        .I2(sel0[1]),
        .I3(\slv_reg0_reg_n_0_[8] ),
        .I4(sel0[0]),
        .O(\axi_rdata[8]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \axi_rdata[9]_i_1 
       (.I0(\axi_rdata[9]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(\axi_rdata[9]_i_3_n_0 ),
        .I3(sel0[3]),
        .O(\axi_rdata[9]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[9]_i_2 
       (.I0(slv_reg3[9]),
        .I1(slv_reg2[9]),
        .I2(sel0[1]),
        .I3(\slv_reg0_reg_n_0_[9] ),
        .I4(sel0[0]),
        .O(\axi_rdata[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[9]_i_3 
       (.I0(slv_reg7[9]),
        .I1(slv_reg6[9]),
        .I2(sel0[1]),
        .I3(slv_reg5[9]),
        .I4(sel0[0]),
        .I5(slv_reg4[9]),
        .O(\axi_rdata[9]_i_3_n_0 ));
  FDRE \axi_rdata_reg[0] 
       (.C(s_axi_lite_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(\axi_rdata[0]_i_1_n_0 ),
        .Q(s_axi_lite_rdata[0]),
        .R(SR));
  FDRE \axi_rdata_reg[10] 
       (.C(s_axi_lite_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(\axi_rdata[10]_i_1_n_0 ),
        .Q(s_axi_lite_rdata[10]),
        .R(SR));
  FDRE \axi_rdata_reg[11] 
       (.C(s_axi_lite_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(\axi_rdata[11]_i_1_n_0 ),
        .Q(s_axi_lite_rdata[11]),
        .R(SR));
  FDRE \axi_rdata_reg[12] 
       (.C(s_axi_lite_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(\axi_rdata[12]_i_1_n_0 ),
        .Q(s_axi_lite_rdata[12]),
        .R(SR));
  FDRE \axi_rdata_reg[13] 
       (.C(s_axi_lite_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[13]),
        .Q(s_axi_lite_rdata[13]),
        .R(SR));
  FDRE \axi_rdata_reg[14] 
       (.C(s_axi_lite_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[14]),
        .Q(s_axi_lite_rdata[14]),
        .R(SR));
  FDRE \axi_rdata_reg[15] 
       (.C(s_axi_lite_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[15]),
        .Q(s_axi_lite_rdata[15]),
        .R(SR));
  FDRE \axi_rdata_reg[16] 
       (.C(s_axi_lite_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[16]),
        .Q(s_axi_lite_rdata[16]),
        .R(SR));
  FDRE \axi_rdata_reg[17] 
       (.C(s_axi_lite_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(\axi_rdata[17]_i_1_n_0 ),
        .Q(s_axi_lite_rdata[17]),
        .R(SR));
  FDRE \axi_rdata_reg[18] 
       (.C(s_axi_lite_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[18]),
        .Q(s_axi_lite_rdata[18]),
        .R(SR));
  FDRE \axi_rdata_reg[19] 
       (.C(s_axi_lite_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(\axi_rdata[19]_i_1_n_0 ),
        .Q(s_axi_lite_rdata[19]),
        .R(SR));
  FDRE \axi_rdata_reg[1] 
       (.C(s_axi_lite_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(\axi_rdata[1]_i_1_n_0 ),
        .Q(s_axi_lite_rdata[1]),
        .R(SR));
  FDRE \axi_rdata_reg[20] 
       (.C(s_axi_lite_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[20]),
        .Q(s_axi_lite_rdata[20]),
        .R(SR));
  FDRE \axi_rdata_reg[21] 
       (.C(s_axi_lite_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[21]),
        .Q(s_axi_lite_rdata[21]),
        .R(SR));
  FDRE \axi_rdata_reg[22] 
       (.C(s_axi_lite_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[22]),
        .Q(s_axi_lite_rdata[22]),
        .R(SR));
  FDRE \axi_rdata_reg[23] 
       (.C(s_axi_lite_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[23]),
        .Q(s_axi_lite_rdata[23]),
        .R(SR));
  FDRE \axi_rdata_reg[24] 
       (.C(s_axi_lite_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[24]),
        .Q(s_axi_lite_rdata[24]),
        .R(SR));
  FDRE \axi_rdata_reg[25] 
       (.C(s_axi_lite_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(\axi_rdata[25]_i_1_n_0 ),
        .Q(s_axi_lite_rdata[25]),
        .R(SR));
  FDRE \axi_rdata_reg[26] 
       (.C(s_axi_lite_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[26]),
        .Q(s_axi_lite_rdata[26]),
        .R(SR));
  FDRE \axi_rdata_reg[27] 
       (.C(s_axi_lite_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(\axi_rdata[27]_i_1_n_0 ),
        .Q(s_axi_lite_rdata[27]),
        .R(SR));
  FDRE \axi_rdata_reg[28] 
       (.C(s_axi_lite_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(\axi_rdata[28]_i_1_n_0 ),
        .Q(s_axi_lite_rdata[28]),
        .R(SR));
  FDRE \axi_rdata_reg[29] 
       (.C(s_axi_lite_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(\axi_rdata[29]_i_1_n_0 ),
        .Q(s_axi_lite_rdata[29]),
        .R(SR));
  FDRE \axi_rdata_reg[2] 
       (.C(s_axi_lite_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(\axi_rdata[2]_i_1_n_0 ),
        .Q(s_axi_lite_rdata[2]),
        .R(SR));
  FDRE \axi_rdata_reg[30] 
       (.C(s_axi_lite_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(\axi_rdata[30]_i_1_n_0 ),
        .Q(s_axi_lite_rdata[30]),
        .R(SR));
  FDRE \axi_rdata_reg[31] 
       (.C(s_axi_lite_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(\axi_rdata[31]_i_2_n_0 ),
        .Q(s_axi_lite_rdata[31]),
        .R(SR));
  FDRE \axi_rdata_reg[3] 
       (.C(s_axi_lite_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(\axi_rdata[3]_i_1_n_0 ),
        .Q(s_axi_lite_rdata[3]),
        .R(SR));
  FDRE \axi_rdata_reg[4] 
       (.C(s_axi_lite_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(\axi_rdata[4]_i_1_n_0 ),
        .Q(s_axi_lite_rdata[4]),
        .R(SR));
  FDRE \axi_rdata_reg[5] 
       (.C(s_axi_lite_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(\axi_rdata[5]_i_1_n_0 ),
        .Q(s_axi_lite_rdata[5]),
        .R(SR));
  FDRE \axi_rdata_reg[6] 
       (.C(s_axi_lite_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(\axi_rdata[6]_i_1_n_0 ),
        .Q(s_axi_lite_rdata[6]),
        .R(SR));
  FDRE \axi_rdata_reg[7] 
       (.C(s_axi_lite_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(\axi_rdata[7]_i_1_n_0 ),
        .Q(s_axi_lite_rdata[7]),
        .R(SR));
  FDRE \axi_rdata_reg[8] 
       (.C(s_axi_lite_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[8]),
        .Q(s_axi_lite_rdata[8]),
        .R(SR));
  FDRE \axi_rdata_reg[9] 
       (.C(s_axi_lite_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(\axi_rdata[9]_i_1_n_0 ),
        .Q(s_axi_lite_rdata[9]),
        .R(SR));
  LUT4 #(
    .INIT(16'h08F8)) 
    axi_rvalid_i_1
       (.I0(s_axi_lite_arvalid),
        .I1(s_axi_lite_arready),
        .I2(s_axi_lite_rvalid),
        .I3(s_axi_lite_rready),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(s_axi_lite_rvalid),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h08)) 
    axi_wready_i_1
       (.I0(s_axi_lite_wvalid),
        .I1(s_axi_lite_awvalid),
        .I2(s_axi_lite_wready),
        .O(axi_wready0));
  FDRE axi_wready_reg
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(axi_wready0),
        .Q(s_axi_lite_wready),
        .R(SR));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \rom_do[0]_i_1 
       (.I0(\rom_do[0]_i_2_n_0 ),
        .I1(rom_addr[3]),
        .I2(\rom_do[0]_i_3_n_0 ),
        .I3(rom_addr[2]),
        .I4(\rom_do[0]_i_4_n_0 ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \rom_do[0]_i_2 
       (.I0(slv_reg6[20]),
        .I1(rom_addr[0]),
        .I2(slv_reg6[0]),
        .I3(rom_addr[1]),
        .I4(slv_reg6[10]),
        .I5(rom_addr[2]),
        .O(\rom_do[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \rom_do[0]_i_3 
       (.I0(slv_reg3[16]),
        .I1(slv_reg3[0]),
        .I2(rom_addr[1]),
        .I3(rom_addr[0]),
        .I4(slv_reg5[0]),
        .O(\rom_do[0]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h30BB)) 
    \rom_do[0]_i_4 
       (.I0(slv_reg2[16]),
        .I1(rom_addr[1]),
        .I2(slv_reg2[0]),
        .I3(rom_addr[0]),
        .O(\rom_do[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rom_do[10]_i_3 
       (.I0(slv_reg3[26]),
        .I1(slv_reg3[10]),
        .I2(rom_addr[1]),
        .I3(slv_reg5[10]),
        .I4(rom_addr[0]),
        .I5(slv_reg4[16]),
        .O(\rom_do_reg[10]_0 ));
  LUT5 #(
    .INIT(32'hAFA0CFCF)) 
    \rom_do[10]_i_4 
       (.I0(slv_reg4[0]),
        .I1(slv_reg2[26]),
        .I2(rom_addr[1]),
        .I3(slv_reg2[10]),
        .I4(rom_addr[0]),
        .O(\rom_do_reg[10] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rom_do[11]_i_1 
       (.I0(slv_reg7[19]),
        .I1(\rom_do[11]_i_2_n_0 ),
        .I2(rom_addr[3]),
        .I3(\rom_do[11]_i_3_n_0 ),
        .I4(rom_addr[2]),
        .I5(\rom_do[11]_i_4_n_0 ),
        .O(D[10]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \rom_do[11]_i_2 
       (.I0(slv_reg7[23]),
        .I1(slv_reg7[4]),
        .I2(rom_addr[1]),
        .I3(rom_addr[0]),
        .I4(slv_reg6[31]),
        .O(\rom_do[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rom_do[11]_i_3 
       (.I0(slv_reg3[27]),
        .I1(slv_reg3[11]),
        .I2(rom_addr[1]),
        .I3(slv_reg5[11]),
        .I4(rom_addr[0]),
        .I5(slv_reg4[17]),
        .O(\rom_do[11]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0CFCF)) 
    \rom_do[11]_i_4 
       (.I0(slv_reg4[1]),
        .I1(slv_reg2[27]),
        .I2(rom_addr[1]),
        .I3(slv_reg2[11]),
        .I4(rom_addr[0]),
        .O(\rom_do[11]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rom_do[12]_i_1 
       (.I0(slv_reg7[20]),
        .I1(\rom_do[12]_i_2_n_0 ),
        .I2(rom_addr[3]),
        .I3(\rom_do[12]_i_3_n_0 ),
        .I4(rom_addr[2]),
        .I5(\rom_do[12]_i_4_n_0 ),
        .O(D[11]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \rom_do[12]_i_2 
       (.I0(slv_reg7[24]),
        .I1(slv_reg7[5]),
        .I2(rom_addr[1]),
        .I3(rom_addr[0]),
        .I4(slv_reg7[0]),
        .O(\rom_do[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rom_do[12]_i_3 
       (.I0(slv_reg3[28]),
        .I1(slv_reg3[12]),
        .I2(rom_addr[1]),
        .I3(slv_reg5[12]),
        .I4(rom_addr[0]),
        .I5(slv_reg4[18]),
        .O(\rom_do[12]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0CFCF)) 
    \rom_do[12]_i_4 
       (.I0(slv_reg4[2]),
        .I1(slv_reg2[28]),
        .I2(rom_addr[1]),
        .I3(slv_reg2[12]),
        .I4(rom_addr[0]),
        .O(\rom_do[12]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rom_do[13]_i_3 
       (.I0(slv_reg3[29]),
        .I1(slv_reg3[13]),
        .I2(rom_addr[1]),
        .I3(slv_reg5[13]),
        .I4(rom_addr[0]),
        .I5(slv_reg4[19]),
        .O(\rom_do_reg[13]_0 ));
  LUT5 #(
    .INIT(32'hAFA0CFCF)) 
    \rom_do[13]_i_4 
       (.I0(slv_reg4[3]),
        .I1(slv_reg2[29]),
        .I2(rom_addr[1]),
        .I3(slv_reg2[13]),
        .I4(rom_addr[0]),
        .O(\rom_do_reg[13] ));
  LUT4 #(
    .INIT(16'h30BB)) 
    \rom_do[14]_i_4 
       (.I0(slv_reg2[30]),
        .I1(rom_addr[1]),
        .I2(slv_reg2[14]),
        .I3(rom_addr[0]),
        .O(\rom_do_reg[14] ));
  LUT4 #(
    .INIT(16'h30BB)) 
    \rom_do[15]_i_4 
       (.I0(slv_reg2[31]),
        .I1(rom_addr[1]),
        .I2(slv_reg2[15]),
        .I3(rom_addr[0]),
        .O(\rom_do_reg[15] ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \rom_do[1]_i_1 
       (.I0(\rom_do[1]_i_2_n_0 ),
        .I1(rom_addr[3]),
        .I2(\rom_do[1]_i_3_n_0 ),
        .I3(rom_addr[2]),
        .I4(\rom_do[1]_i_4_n_0 ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \rom_do[1]_i_2 
       (.I0(slv_reg6[21]),
        .I1(rom_addr[0]),
        .I2(slv_reg6[1]),
        .I3(rom_addr[1]),
        .I4(slv_reg6[11]),
        .I5(rom_addr[2]),
        .O(\rom_do[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \rom_do[1]_i_3 
       (.I0(slv_reg3[17]),
        .I1(slv_reg3[1]),
        .I2(rom_addr[1]),
        .I3(rom_addr[0]),
        .I4(slv_reg5[1]),
        .O(\rom_do[1]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h30BB)) 
    \rom_do[1]_i_4 
       (.I0(slv_reg2[17]),
        .I1(rom_addr[1]),
        .I2(slv_reg2[1]),
        .I3(rom_addr[0]),
        .O(\rom_do[1]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \rom_do[2]_i_1 
       (.I0(\rom_do[2]_i_2_n_0 ),
        .I1(rom_addr[3]),
        .I2(\rom_do[2]_i_3_n_0 ),
        .I3(rom_addr[2]),
        .I4(\rom_do[2]_i_4_n_0 ),
        .O(D[2]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \rom_do[2]_i_2 
       (.I0(slv_reg6[22]),
        .I1(rom_addr[0]),
        .I2(slv_reg6[2]),
        .I3(rom_addr[1]),
        .I4(slv_reg6[12]),
        .I5(rom_addr[2]),
        .O(\rom_do[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \rom_do[2]_i_3 
       (.I0(slv_reg3[18]),
        .I1(slv_reg3[2]),
        .I2(rom_addr[1]),
        .I3(rom_addr[0]),
        .I4(slv_reg5[2]),
        .O(\rom_do[2]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h30BB)) 
    \rom_do[2]_i_4 
       (.I0(slv_reg2[18]),
        .I1(rom_addr[1]),
        .I2(slv_reg2[2]),
        .I3(rom_addr[0]),
        .O(\rom_do[2]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \rom_do[3]_i_1 
       (.I0(\rom_do[3]_i_2_n_0 ),
        .I1(rom_addr[3]),
        .I2(\rom_do[3]_i_3_n_0 ),
        .I3(rom_addr[2]),
        .I4(\rom_do[3]_i_4_n_0 ),
        .O(D[3]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \rom_do[3]_i_2 
       (.I0(slv_reg6[23]),
        .I1(rom_addr[0]),
        .I2(slv_reg6[3]),
        .I3(rom_addr[1]),
        .I4(slv_reg6[13]),
        .I5(rom_addr[2]),
        .O(\rom_do[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \rom_do[3]_i_3 
       (.I0(slv_reg3[19]),
        .I1(slv_reg3[3]),
        .I2(rom_addr[1]),
        .I3(rom_addr[0]),
        .I4(slv_reg5[3]),
        .O(\rom_do[3]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h30BB)) 
    \rom_do[3]_i_4 
       (.I0(slv_reg2[19]),
        .I1(rom_addr[1]),
        .I2(slv_reg2[3]),
        .I3(rom_addr[0]),
        .O(\rom_do[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rom_do[4]_i_1 
       (.I0(slv_reg7[16]),
        .I1(\rom_do[4]_i_2_n_0 ),
        .I2(rom_addr[3]),
        .I3(\rom_do[4]_i_3_n_0 ),
        .I4(rom_addr[2]),
        .I5(\rom_do[4]_i_4_n_0 ),
        .O(D[4]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \rom_do[4]_i_2 
       (.I0(slv_reg6[14]),
        .I1(rom_addr[1]),
        .I2(slv_reg6[4]),
        .I3(rom_addr[0]),
        .I4(slv_reg6[24]),
        .O(\rom_do[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \rom_do[4]_i_3 
       (.I0(slv_reg3[20]),
        .I1(slv_reg3[4]),
        .I2(rom_addr[1]),
        .I3(rom_addr[0]),
        .I4(slv_reg5[4]),
        .O(\rom_do[4]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h30BB)) 
    \rom_do[4]_i_4 
       (.I0(slv_reg2[20]),
        .I1(rom_addr[1]),
        .I2(slv_reg2[4]),
        .I3(rom_addr[0]),
        .O(\rom_do[4]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \rom_do[5]_i_1 
       (.I0(\rom_do[5]_i_2_n_0 ),
        .I1(rom_addr[3]),
        .I2(\rom_do[5]_i_3_n_0 ),
        .I3(rom_addr[2]),
        .I4(\rom_do[5]_i_4_n_0 ),
        .O(D[5]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \rom_do[5]_i_2 
       (.I0(slv_reg6[25]),
        .I1(rom_addr[0]),
        .I2(slv_reg6[5]),
        .I3(rom_addr[1]),
        .I4(slv_reg6[15]),
        .I5(rom_addr[2]),
        .O(\rom_do[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \rom_do[5]_i_3 
       (.I0(slv_reg3[21]),
        .I1(slv_reg3[5]),
        .I2(rom_addr[1]),
        .I3(rom_addr[0]),
        .I4(slv_reg5[5]),
        .O(\rom_do[5]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h30BB)) 
    \rom_do[5]_i_4 
       (.I0(slv_reg2[21]),
        .I1(rom_addr[1]),
        .I2(slv_reg2[5]),
        .I3(rom_addr[0]),
        .O(\rom_do[5]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \rom_do[6]_i_1 
       (.I0(\rom_do[6]_i_2_n_0 ),
        .I1(rom_addr[3]),
        .I2(\rom_do[6]_i_3_n_0 ),
        .I3(rom_addr[2]),
        .I4(\rom_do[6]_i_4_n_0 ),
        .O(D[6]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \rom_do[6]_i_2 
       (.I0(slv_reg6[26]),
        .I1(rom_addr[0]),
        .I2(slv_reg6[6]),
        .I3(rom_addr[1]),
        .I4(slv_reg6[16]),
        .I5(rom_addr[2]),
        .O(\rom_do[6]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \rom_do[6]_i_3 
       (.I0(slv_reg3[22]),
        .I1(slv_reg3[6]),
        .I2(rom_addr[1]),
        .I3(rom_addr[0]),
        .I4(slv_reg5[6]),
        .O(\rom_do[6]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h30BB)) 
    \rom_do[6]_i_4 
       (.I0(slv_reg2[22]),
        .I1(rom_addr[1]),
        .I2(slv_reg2[6]),
        .I3(rom_addr[0]),
        .O(\rom_do[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rom_do[7]_i_1 
       (.I0(slv_reg7[17]),
        .I1(\rom_do[7]_i_2_n_0 ),
        .I2(rom_addr[3]),
        .I3(\rom_do[7]_i_3_n_0 ),
        .I4(rom_addr[2]),
        .I5(\rom_do[7]_i_4_n_0 ),
        .O(D[7]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \rom_do[7]_i_2 
       (.I0(slv_reg6[17]),
        .I1(rom_addr[1]),
        .I2(slv_reg6[7]),
        .I3(rom_addr[0]),
        .I4(slv_reg6[27]),
        .O(\rom_do[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \rom_do[7]_i_3 
       (.I0(slv_reg3[23]),
        .I1(slv_reg3[7]),
        .I2(rom_addr[1]),
        .I3(rom_addr[0]),
        .I4(slv_reg5[7]),
        .O(\rom_do[7]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h30BB)) 
    \rom_do[7]_i_4 
       (.I0(slv_reg2[23]),
        .I1(rom_addr[1]),
        .I2(slv_reg2[7]),
        .I3(rom_addr[0]),
        .O(\rom_do[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rom_do[8]_i_1 
       (.I0(slv_reg7[18]),
        .I1(\rom_do[8]_i_2_n_0 ),
        .I2(rom_addr[3]),
        .I3(\rom_do[8]_i_3_n_0 ),
        .I4(rom_addr[2]),
        .I5(\rom_do[8]_i_4_n_0 ),
        .O(D[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rom_do[8]_i_2 
       (.I0(slv_reg7[22]),
        .I1(slv_reg6[18]),
        .I2(rom_addr[1]),
        .I3(slv_reg6[8]),
        .I4(rom_addr[0]),
        .I5(slv_reg6[28]),
        .O(\rom_do[8]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \rom_do[8]_i_3 
       (.I0(slv_reg3[24]),
        .I1(slv_reg3[8]),
        .I2(rom_addr[1]),
        .I3(rom_addr[0]),
        .I4(slv_reg5[8]),
        .O(\rom_do[8]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h30BB)) 
    \rom_do[8]_i_4 
       (.I0(slv_reg2[24]),
        .I1(rom_addr[1]),
        .I2(slv_reg2[8]),
        .I3(rom_addr[0]),
        .O(\rom_do[8]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \rom_do[9]_i_1 
       (.I0(\rom_do[9]_i_2_n_0 ),
        .I1(rom_addr[3]),
        .I2(\rom_do[9]_i_3_n_0 ),
        .I3(rom_addr[2]),
        .I4(\rom_do[9]_i_4_n_0 ),
        .O(D[9]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \rom_do[9]_i_2 
       (.I0(slv_reg6[29]),
        .I1(rom_addr[0]),
        .I2(slv_reg6[9]),
        .I3(rom_addr[1]),
        .I4(slv_reg6[19]),
        .I5(rom_addr[2]),
        .O(\rom_do[9]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \rom_do[9]_i_3 
       (.I0(slv_reg3[25]),
        .I1(slv_reg3[9]),
        .I2(rom_addr[1]),
        .I3(rom_addr[0]),
        .I4(slv_reg5[9]),
        .O(\rom_do[9]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h30BB)) 
    \rom_do[9]_i_4 
       (.I0(slv_reg2[25]),
        .I1(rom_addr[1]),
        .I2(slv_reg2[9]),
        .I3(rom_addr[0]),
        .O(\rom_do[9]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    sen_reg_i_1
       (.I0(out[0]),
        .I1(sen_reg_reg),
        .O(sen_reg_reg_0));
  LUT6 #(
    .INIT(64'h0000001000000000)) 
    \slv_reg0[15]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(axi_awaddr[2]),
        .I2(\slv_reg0[31]_i_2_n_0 ),
        .I3(axi_awaddr[5]),
        .I4(axi_awaddr[4]),
        .I5(s_axi_lite_wstrb[1]),
        .O(p_1_in[15]));
  LUT6 #(
    .INIT(64'h0000001000000000)) 
    \slv_reg0[23]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(axi_awaddr[2]),
        .I2(\slv_reg0[31]_i_2_n_0 ),
        .I3(axi_awaddr[5]),
        .I4(axi_awaddr[4]),
        .I5(s_axi_lite_wstrb[2]),
        .O(p_1_in[23]));
  LUT6 #(
    .INIT(64'h0000001000000000)) 
    \slv_reg0[31]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(axi_awaddr[2]),
        .I2(\slv_reg0[31]_i_2_n_0 ),
        .I3(axi_awaddr[5]),
        .I4(axi_awaddr[4]),
        .I5(s_axi_lite_wstrb[3]),
        .O(p_1_in[31]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg0[31]_i_2 
       (.I0(s_axi_lite_wready),
        .I1(s_axi_lite_awvalid),
        .I2(s_axi_lite_wvalid),
        .I3(s_axi_lite_awready),
        .O(\slv_reg0[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000001000000000)) 
    \slv_reg0[7]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(axi_awaddr[2]),
        .I2(\slv_reg0[31]_i_2_n_0 ),
        .I3(axi_awaddr[5]),
        .I4(axi_awaddr[4]),
        .I5(s_axi_lite_wstrb[0]),
        .O(p_1_in[7]));
  FDRE \slv_reg0_reg[0] 
       (.C(s_axi_lite_aclk),
        .CE(p_1_in[7]),
        .D(s_axi_lite_wdata[0]),
        .Q(sen_reg_reg),
        .R(SR));
  FDRE \slv_reg0_reg[10] 
       (.C(s_axi_lite_aclk),
        .CE(p_1_in[15]),
        .D(s_axi_lite_wdata[10]),
        .Q(\slv_reg0_reg_n_0_[10] ),
        .R(SR));
  FDRE \slv_reg0_reg[11] 
       (.C(s_axi_lite_aclk),
        .CE(p_1_in[15]),
        .D(s_axi_lite_wdata[11]),
        .Q(\slv_reg0_reg_n_0_[11] ),
        .R(SR));
  FDRE \slv_reg0_reg[12] 
       (.C(s_axi_lite_aclk),
        .CE(p_1_in[15]),
        .D(s_axi_lite_wdata[12]),
        .Q(\slv_reg0_reg_n_0_[12] ),
        .R(SR));
  FDRE \slv_reg0_reg[13] 
       (.C(s_axi_lite_aclk),
        .CE(p_1_in[15]),
        .D(s_axi_lite_wdata[13]),
        .Q(\slv_reg0_reg_n_0_[13] ),
        .R(SR));
  FDRE \slv_reg0_reg[14] 
       (.C(s_axi_lite_aclk),
        .CE(p_1_in[15]),
        .D(s_axi_lite_wdata[14]),
        .Q(\slv_reg0_reg_n_0_[14] ),
        .R(SR));
  FDRE \slv_reg0_reg[15] 
       (.C(s_axi_lite_aclk),
        .CE(p_1_in[15]),
        .D(s_axi_lite_wdata[15]),
        .Q(\slv_reg0_reg_n_0_[15] ),
        .R(SR));
  FDRE \slv_reg0_reg[16] 
       (.C(s_axi_lite_aclk),
        .CE(p_1_in[23]),
        .D(s_axi_lite_wdata[16]),
        .Q(\slv_reg0_reg_n_0_[16] ),
        .R(SR));
  FDRE \slv_reg0_reg[17] 
       (.C(s_axi_lite_aclk),
        .CE(p_1_in[23]),
        .D(s_axi_lite_wdata[17]),
        .Q(\slv_reg0_reg_n_0_[17] ),
        .R(SR));
  FDRE \slv_reg0_reg[18] 
       (.C(s_axi_lite_aclk),
        .CE(p_1_in[23]),
        .D(s_axi_lite_wdata[18]),
        .Q(\slv_reg0_reg_n_0_[18] ),
        .R(SR));
  FDRE \slv_reg0_reg[19] 
       (.C(s_axi_lite_aclk),
        .CE(p_1_in[23]),
        .D(s_axi_lite_wdata[19]),
        .Q(\slv_reg0_reg_n_0_[19] ),
        .R(SR));
  FDRE \slv_reg0_reg[1] 
       (.C(s_axi_lite_aclk),
        .CE(p_1_in[7]),
        .D(s_axi_lite_wdata[1]),
        .Q(\slv_reg0_reg_n_0_[1] ),
        .R(SR));
  FDRE \slv_reg0_reg[20] 
       (.C(s_axi_lite_aclk),
        .CE(p_1_in[23]),
        .D(s_axi_lite_wdata[20]),
        .Q(\slv_reg0_reg_n_0_[20] ),
        .R(SR));
  FDRE \slv_reg0_reg[21] 
       (.C(s_axi_lite_aclk),
        .CE(p_1_in[23]),
        .D(s_axi_lite_wdata[21]),
        .Q(\slv_reg0_reg_n_0_[21] ),
        .R(SR));
  FDRE \slv_reg0_reg[22] 
       (.C(s_axi_lite_aclk),
        .CE(p_1_in[23]),
        .D(s_axi_lite_wdata[22]),
        .Q(\slv_reg0_reg_n_0_[22] ),
        .R(SR));
  FDRE \slv_reg0_reg[23] 
       (.C(s_axi_lite_aclk),
        .CE(p_1_in[23]),
        .D(s_axi_lite_wdata[23]),
        .Q(\slv_reg0_reg_n_0_[23] ),
        .R(SR));
  FDRE \slv_reg0_reg[24] 
       (.C(s_axi_lite_aclk),
        .CE(p_1_in[31]),
        .D(s_axi_lite_wdata[24]),
        .Q(\slv_reg0_reg_n_0_[24] ),
        .R(SR));
  FDRE \slv_reg0_reg[25] 
       (.C(s_axi_lite_aclk),
        .CE(p_1_in[31]),
        .D(s_axi_lite_wdata[25]),
        .Q(\slv_reg0_reg_n_0_[25] ),
        .R(SR));
  FDRE \slv_reg0_reg[26] 
       (.C(s_axi_lite_aclk),
        .CE(p_1_in[31]),
        .D(s_axi_lite_wdata[26]),
        .Q(\slv_reg0_reg_n_0_[26] ),
        .R(SR));
  FDRE \slv_reg0_reg[27] 
       (.C(s_axi_lite_aclk),
        .CE(p_1_in[31]),
        .D(s_axi_lite_wdata[27]),
        .Q(\slv_reg0_reg_n_0_[27] ),
        .R(SR));
  FDRE \slv_reg0_reg[28] 
       (.C(s_axi_lite_aclk),
        .CE(p_1_in[31]),
        .D(s_axi_lite_wdata[28]),
        .Q(\slv_reg0_reg_n_0_[28] ),
        .R(SR));
  FDRE \slv_reg0_reg[29] 
       (.C(s_axi_lite_aclk),
        .CE(p_1_in[31]),
        .D(s_axi_lite_wdata[29]),
        .Q(\slv_reg0_reg_n_0_[29] ),
        .R(SR));
  FDRE \slv_reg0_reg[2] 
       (.C(s_axi_lite_aclk),
        .CE(p_1_in[7]),
        .D(s_axi_lite_wdata[2]),
        .Q(\slv_reg0_reg_n_0_[2] ),
        .R(SR));
  FDRE \slv_reg0_reg[30] 
       (.C(s_axi_lite_aclk),
        .CE(p_1_in[31]),
        .D(s_axi_lite_wdata[30]),
        .Q(\slv_reg0_reg_n_0_[30] ),
        .R(SR));
  FDRE \slv_reg0_reg[31] 
       (.C(s_axi_lite_aclk),
        .CE(p_1_in[31]),
        .D(s_axi_lite_wdata[31]),
        .Q(\slv_reg0_reg_n_0_[31] ),
        .R(SR));
  FDRE \slv_reg0_reg[3] 
       (.C(s_axi_lite_aclk),
        .CE(p_1_in[7]),
        .D(s_axi_lite_wdata[3]),
        .Q(\slv_reg0_reg_n_0_[3] ),
        .R(SR));
  FDRE \slv_reg0_reg[4] 
       (.C(s_axi_lite_aclk),
        .CE(p_1_in[7]),
        .D(s_axi_lite_wdata[4]),
        .Q(\slv_reg0_reg_n_0_[4] ),
        .R(SR));
  FDRE \slv_reg0_reg[5] 
       (.C(s_axi_lite_aclk),
        .CE(p_1_in[7]),
        .D(s_axi_lite_wdata[5]),
        .Q(\slv_reg0_reg_n_0_[5] ),
        .R(SR));
  FDRE \slv_reg0_reg[6] 
       (.C(s_axi_lite_aclk),
        .CE(p_1_in[7]),
        .D(s_axi_lite_wdata[6]),
        .Q(\slv_reg0_reg_n_0_[6] ),
        .R(SR));
  FDRE \slv_reg0_reg[7] 
       (.C(s_axi_lite_aclk),
        .CE(p_1_in[7]),
        .D(s_axi_lite_wdata[7]),
        .Q(\slv_reg0_reg_n_0_[7] ),
        .R(SR));
  FDRE \slv_reg0_reg[8] 
       (.C(s_axi_lite_aclk),
        .CE(p_1_in[15]),
        .D(s_axi_lite_wdata[8]),
        .Q(\slv_reg0_reg_n_0_[8] ),
        .R(SR));
  FDRE \slv_reg0_reg[9] 
       (.C(s_axi_lite_aclk),
        .CE(p_1_in[15]),
        .D(s_axi_lite_wdata[9]),
        .Q(\slv_reg0_reg_n_0_[9] ),
        .R(SR));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    \slv_reg2[15]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(axi_awaddr[2]),
        .I2(\slv_reg0[31]_i_2_n_0 ),
        .I3(axi_awaddr[5]),
        .I4(axi_awaddr[4]),
        .I5(s_axi_lite_wstrb[1]),
        .O(\slv_reg2[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    \slv_reg2[23]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(axi_awaddr[2]),
        .I2(\slv_reg0[31]_i_2_n_0 ),
        .I3(axi_awaddr[5]),
        .I4(axi_awaddr[4]),
        .I5(s_axi_lite_wstrb[2]),
        .O(\slv_reg2[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    \slv_reg2[31]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(axi_awaddr[2]),
        .I2(\slv_reg0[31]_i_2_n_0 ),
        .I3(axi_awaddr[5]),
        .I4(axi_awaddr[4]),
        .I5(s_axi_lite_wstrb[3]),
        .O(\slv_reg2[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    \slv_reg2[7]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(axi_awaddr[2]),
        .I2(\slv_reg0[31]_i_2_n_0 ),
        .I3(axi_awaddr[5]),
        .I4(axi_awaddr[4]),
        .I5(s_axi_lite_wstrb[0]),
        .O(\slv_reg2[7]_i_1_n_0 ));
  FDRE \slv_reg2_reg[0] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s_axi_lite_wdata[0]),
        .Q(slv_reg2[0]),
        .R(SR));
  FDRE \slv_reg2_reg[10] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s_axi_lite_wdata[10]),
        .Q(slv_reg2[10]),
        .R(SR));
  FDRE \slv_reg2_reg[11] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s_axi_lite_wdata[11]),
        .Q(slv_reg2[11]),
        .R(SR));
  FDRE \slv_reg2_reg[12] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s_axi_lite_wdata[12]),
        .Q(slv_reg2[12]),
        .R(SR));
  FDRE \slv_reg2_reg[13] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s_axi_lite_wdata[13]),
        .Q(slv_reg2[13]),
        .R(SR));
  FDRE \slv_reg2_reg[14] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s_axi_lite_wdata[14]),
        .Q(slv_reg2[14]),
        .R(SR));
  FDRE \slv_reg2_reg[15] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s_axi_lite_wdata[15]),
        .Q(slv_reg2[15]),
        .R(SR));
  FDRE \slv_reg2_reg[16] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s_axi_lite_wdata[16]),
        .Q(slv_reg2[16]),
        .R(SR));
  FDRE \slv_reg2_reg[17] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s_axi_lite_wdata[17]),
        .Q(slv_reg2[17]),
        .R(SR));
  FDRE \slv_reg2_reg[18] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s_axi_lite_wdata[18]),
        .Q(slv_reg2[18]),
        .R(SR));
  FDRE \slv_reg2_reg[19] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s_axi_lite_wdata[19]),
        .Q(slv_reg2[19]),
        .R(SR));
  FDRE \slv_reg2_reg[1] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s_axi_lite_wdata[1]),
        .Q(slv_reg2[1]),
        .R(SR));
  FDRE \slv_reg2_reg[20] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s_axi_lite_wdata[20]),
        .Q(slv_reg2[20]),
        .R(SR));
  FDRE \slv_reg2_reg[21] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s_axi_lite_wdata[21]),
        .Q(slv_reg2[21]),
        .R(SR));
  FDRE \slv_reg2_reg[22] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s_axi_lite_wdata[22]),
        .Q(slv_reg2[22]),
        .R(SR));
  FDRE \slv_reg2_reg[23] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s_axi_lite_wdata[23]),
        .Q(slv_reg2[23]),
        .R(SR));
  FDRE \slv_reg2_reg[24] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s_axi_lite_wdata[24]),
        .Q(slv_reg2[24]),
        .R(SR));
  FDRE \slv_reg2_reg[25] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s_axi_lite_wdata[25]),
        .Q(slv_reg2[25]),
        .R(SR));
  FDRE \slv_reg2_reg[26] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s_axi_lite_wdata[26]),
        .Q(slv_reg2[26]),
        .R(SR));
  FDRE \slv_reg2_reg[27] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s_axi_lite_wdata[27]),
        .Q(slv_reg2[27]),
        .R(SR));
  FDRE \slv_reg2_reg[28] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s_axi_lite_wdata[28]),
        .Q(slv_reg2[28]),
        .R(SR));
  FDRE \slv_reg2_reg[29] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s_axi_lite_wdata[29]),
        .Q(slv_reg2[29]),
        .R(SR));
  FDRE \slv_reg2_reg[2] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s_axi_lite_wdata[2]),
        .Q(slv_reg2[2]),
        .R(SR));
  FDRE \slv_reg2_reg[30] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s_axi_lite_wdata[30]),
        .Q(slv_reg2[30]),
        .R(SR));
  FDRE \slv_reg2_reg[31] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s_axi_lite_wdata[31]),
        .Q(slv_reg2[31]),
        .R(SR));
  FDRE \slv_reg2_reg[3] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s_axi_lite_wdata[3]),
        .Q(slv_reg2[3]),
        .R(SR));
  FDRE \slv_reg2_reg[4] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s_axi_lite_wdata[4]),
        .Q(slv_reg2[4]),
        .R(SR));
  FDRE \slv_reg2_reg[5] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s_axi_lite_wdata[5]),
        .Q(slv_reg2[5]),
        .R(SR));
  FDRE \slv_reg2_reg[6] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s_axi_lite_wdata[6]),
        .Q(slv_reg2[6]),
        .R(SR));
  FDRE \slv_reg2_reg[7] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s_axi_lite_wdata[7]),
        .Q(slv_reg2[7]),
        .R(SR));
  FDRE \slv_reg2_reg[8] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s_axi_lite_wdata[8]),
        .Q(slv_reg2[8]),
        .R(SR));
  FDRE \slv_reg2_reg[9] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s_axi_lite_wdata[9]),
        .Q(slv_reg2[9]),
        .R(SR));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \slv_reg3[15]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(axi_awaddr[2]),
        .I2(\slv_reg0[31]_i_2_n_0 ),
        .I3(axi_awaddr[5]),
        .I4(axi_awaddr[4]),
        .I5(s_axi_lite_wstrb[1]),
        .O(\slv_reg3[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \slv_reg3[23]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(axi_awaddr[2]),
        .I2(\slv_reg0[31]_i_2_n_0 ),
        .I3(axi_awaddr[5]),
        .I4(axi_awaddr[4]),
        .I5(s_axi_lite_wstrb[2]),
        .O(\slv_reg3[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \slv_reg3[31]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(axi_awaddr[2]),
        .I2(\slv_reg0[31]_i_2_n_0 ),
        .I3(axi_awaddr[5]),
        .I4(axi_awaddr[4]),
        .I5(s_axi_lite_wstrb[3]),
        .O(\slv_reg3[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \slv_reg3[7]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(axi_awaddr[2]),
        .I2(\slv_reg0[31]_i_2_n_0 ),
        .I3(axi_awaddr[5]),
        .I4(axi_awaddr[4]),
        .I5(s_axi_lite_wstrb[0]),
        .O(\slv_reg3[7]_i_1_n_0 ));
  FDRE \slv_reg3_reg[0] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s_axi_lite_wdata[0]),
        .Q(slv_reg3[0]),
        .R(SR));
  FDRE \slv_reg3_reg[10] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s_axi_lite_wdata[10]),
        .Q(slv_reg3[10]),
        .R(SR));
  FDRE \slv_reg3_reg[11] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s_axi_lite_wdata[11]),
        .Q(slv_reg3[11]),
        .R(SR));
  FDRE \slv_reg3_reg[12] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s_axi_lite_wdata[12]),
        .Q(slv_reg3[12]),
        .R(SR));
  FDRE \slv_reg3_reg[13] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s_axi_lite_wdata[13]),
        .Q(slv_reg3[13]),
        .R(SR));
  FDRE \slv_reg3_reg[14] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s_axi_lite_wdata[14]),
        .Q(Q[0]),
        .R(SR));
  FDRE \slv_reg3_reg[15] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s_axi_lite_wdata[15]),
        .Q(Q[1]),
        .R(SR));
  FDRE \slv_reg3_reg[16] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s_axi_lite_wdata[16]),
        .Q(slv_reg3[16]),
        .R(SR));
  FDRE \slv_reg3_reg[17] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s_axi_lite_wdata[17]),
        .Q(slv_reg3[17]),
        .R(SR));
  FDRE \slv_reg3_reg[18] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s_axi_lite_wdata[18]),
        .Q(slv_reg3[18]),
        .R(SR));
  FDRE \slv_reg3_reg[19] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s_axi_lite_wdata[19]),
        .Q(slv_reg3[19]),
        .R(SR));
  FDRE \slv_reg3_reg[1] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s_axi_lite_wdata[1]),
        .Q(slv_reg3[1]),
        .R(SR));
  FDRE \slv_reg3_reg[20] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s_axi_lite_wdata[20]),
        .Q(slv_reg3[20]),
        .R(SR));
  FDRE \slv_reg3_reg[21] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s_axi_lite_wdata[21]),
        .Q(slv_reg3[21]),
        .R(SR));
  FDRE \slv_reg3_reg[22] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s_axi_lite_wdata[22]),
        .Q(slv_reg3[22]),
        .R(SR));
  FDRE \slv_reg3_reg[23] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s_axi_lite_wdata[23]),
        .Q(slv_reg3[23]),
        .R(SR));
  FDRE \slv_reg3_reg[24] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s_axi_lite_wdata[24]),
        .Q(slv_reg3[24]),
        .R(SR));
  FDRE \slv_reg3_reg[25] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s_axi_lite_wdata[25]),
        .Q(slv_reg3[25]),
        .R(SR));
  FDRE \slv_reg3_reg[26] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s_axi_lite_wdata[26]),
        .Q(slv_reg3[26]),
        .R(SR));
  FDRE \slv_reg3_reg[27] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s_axi_lite_wdata[27]),
        .Q(slv_reg3[27]),
        .R(SR));
  FDRE \slv_reg3_reg[28] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s_axi_lite_wdata[28]),
        .Q(slv_reg3[28]),
        .R(SR));
  FDRE \slv_reg3_reg[29] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s_axi_lite_wdata[29]),
        .Q(slv_reg3[29]),
        .R(SR));
  FDRE \slv_reg3_reg[2] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s_axi_lite_wdata[2]),
        .Q(slv_reg3[2]),
        .R(SR));
  FDRE \slv_reg3_reg[30] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s_axi_lite_wdata[30]),
        .Q(Q[2]),
        .R(SR));
  FDRE \slv_reg3_reg[31] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s_axi_lite_wdata[31]),
        .Q(Q[3]),
        .R(SR));
  FDRE \slv_reg3_reg[3] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s_axi_lite_wdata[3]),
        .Q(slv_reg3[3]),
        .R(SR));
  FDRE \slv_reg3_reg[4] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s_axi_lite_wdata[4]),
        .Q(slv_reg3[4]),
        .R(SR));
  FDRE \slv_reg3_reg[5] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s_axi_lite_wdata[5]),
        .Q(slv_reg3[5]),
        .R(SR));
  FDRE \slv_reg3_reg[6] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s_axi_lite_wdata[6]),
        .Q(slv_reg3[6]),
        .R(SR));
  FDRE \slv_reg3_reg[7] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s_axi_lite_wdata[7]),
        .Q(slv_reg3[7]),
        .R(SR));
  FDRE \slv_reg3_reg[8] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s_axi_lite_wdata[8]),
        .Q(slv_reg3[8]),
        .R(SR));
  FDRE \slv_reg3_reg[9] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s_axi_lite_wdata[9]),
        .Q(slv_reg3[9]),
        .R(SR));
  LUT6 #(
    .INIT(64'h0010000000000000)) 
    \slv_reg4[15]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(axi_awaddr[2]),
        .I2(\slv_reg0[31]_i_2_n_0 ),
        .I3(axi_awaddr[5]),
        .I4(axi_awaddr[4]),
        .I5(s_axi_lite_wstrb[1]),
        .O(\slv_reg4[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0010000000000000)) 
    \slv_reg4[23]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(axi_awaddr[2]),
        .I2(\slv_reg0[31]_i_2_n_0 ),
        .I3(axi_awaddr[5]),
        .I4(axi_awaddr[4]),
        .I5(s_axi_lite_wstrb[2]),
        .O(\slv_reg4[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0010000000000000)) 
    \slv_reg4[31]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(axi_awaddr[2]),
        .I2(\slv_reg0[31]_i_2_n_0 ),
        .I3(axi_awaddr[5]),
        .I4(axi_awaddr[4]),
        .I5(s_axi_lite_wstrb[3]),
        .O(\slv_reg4[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0010000000000000)) 
    \slv_reg4[7]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(axi_awaddr[2]),
        .I2(\slv_reg0[31]_i_2_n_0 ),
        .I3(axi_awaddr[5]),
        .I4(axi_awaddr[4]),
        .I5(s_axi_lite_wstrb[0]),
        .O(\slv_reg4[7]_i_1_n_0 ));
  FDRE \slv_reg4_reg[0] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s_axi_lite_wdata[0]),
        .Q(slv_reg4[0]),
        .R(SR));
  FDRE \slv_reg4_reg[10] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s_axi_lite_wdata[10]),
        .Q(slv_reg4[10]),
        .R(SR));
  FDRE \slv_reg4_reg[11] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s_axi_lite_wdata[11]),
        .Q(slv_reg4[11]),
        .R(SR));
  FDRE \slv_reg4_reg[12] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s_axi_lite_wdata[12]),
        .Q(slv_reg4[12]),
        .R(SR));
  FDRE \slv_reg4_reg[13] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s_axi_lite_wdata[13]),
        .Q(slv_reg4[13]),
        .R(SR));
  FDRE \slv_reg4_reg[14] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s_axi_lite_wdata[14]),
        .Q(slv_reg4[14]),
        .R(SR));
  FDRE \slv_reg4_reg[15] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s_axi_lite_wdata[15]),
        .Q(slv_reg4[15]),
        .R(SR));
  FDRE \slv_reg4_reg[16] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s_axi_lite_wdata[16]),
        .Q(slv_reg4[16]),
        .R(SR));
  FDRE \slv_reg4_reg[17] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s_axi_lite_wdata[17]),
        .Q(slv_reg4[17]),
        .R(SR));
  FDRE \slv_reg4_reg[18] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s_axi_lite_wdata[18]),
        .Q(slv_reg4[18]),
        .R(SR));
  FDRE \slv_reg4_reg[19] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s_axi_lite_wdata[19]),
        .Q(slv_reg4[19]),
        .R(SR));
  FDRE \slv_reg4_reg[1] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s_axi_lite_wdata[1]),
        .Q(slv_reg4[1]),
        .R(SR));
  FDRE \slv_reg4_reg[20] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s_axi_lite_wdata[20]),
        .Q(slv_reg4[20]),
        .R(SR));
  FDRE \slv_reg4_reg[21] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s_axi_lite_wdata[21]),
        .Q(slv_reg4[21]),
        .R(SR));
  FDRE \slv_reg4_reg[22] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s_axi_lite_wdata[22]),
        .Q(slv_reg4[22]),
        .R(SR));
  FDRE \slv_reg4_reg[23] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s_axi_lite_wdata[23]),
        .Q(slv_reg4[23]),
        .R(SR));
  FDRE \slv_reg4_reg[24] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s_axi_lite_wdata[24]),
        .Q(slv_reg4[24]),
        .R(SR));
  FDRE \slv_reg4_reg[25] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s_axi_lite_wdata[25]),
        .Q(slv_reg4[25]),
        .R(SR));
  FDRE \slv_reg4_reg[26] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s_axi_lite_wdata[26]),
        .Q(slv_reg4[26]),
        .R(SR));
  FDRE \slv_reg4_reg[27] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s_axi_lite_wdata[27]),
        .Q(slv_reg4[27]),
        .R(SR));
  FDRE \slv_reg4_reg[28] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s_axi_lite_wdata[28]),
        .Q(slv_reg4[28]),
        .R(SR));
  FDRE \slv_reg4_reg[29] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s_axi_lite_wdata[29]),
        .Q(slv_reg4[29]),
        .R(SR));
  FDRE \slv_reg4_reg[2] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s_axi_lite_wdata[2]),
        .Q(slv_reg4[2]),
        .R(SR));
  FDRE \slv_reg4_reg[30] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s_axi_lite_wdata[30]),
        .Q(slv_reg4[30]),
        .R(SR));
  FDRE \slv_reg4_reg[31] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s_axi_lite_wdata[31]),
        .Q(slv_reg4[31]),
        .R(SR));
  FDRE \slv_reg4_reg[3] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s_axi_lite_wdata[3]),
        .Q(slv_reg4[3]),
        .R(SR));
  FDRE \slv_reg4_reg[4] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s_axi_lite_wdata[4]),
        .Q(slv_reg4[4]),
        .R(SR));
  FDRE \slv_reg4_reg[5] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s_axi_lite_wdata[5]),
        .Q(slv_reg4[5]),
        .R(SR));
  FDRE \slv_reg4_reg[6] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s_axi_lite_wdata[6]),
        .Q(slv_reg4[6]),
        .R(SR));
  FDRE \slv_reg4_reg[7] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s_axi_lite_wdata[7]),
        .Q(slv_reg4[7]),
        .R(SR));
  FDRE \slv_reg4_reg[8] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s_axi_lite_wdata[8]),
        .Q(slv_reg4[8]),
        .R(SR));
  FDRE \slv_reg4_reg[9] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s_axi_lite_wdata[9]),
        .Q(slv_reg4[9]),
        .R(SR));
  LUT6 #(
    .INIT(64'h0040000000000000)) 
    \slv_reg5[15]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(axi_awaddr[2]),
        .I2(\slv_reg0[31]_i_2_n_0 ),
        .I3(axi_awaddr[5]),
        .I4(axi_awaddr[4]),
        .I5(s_axi_lite_wstrb[1]),
        .O(\slv_reg5[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0040000000000000)) 
    \slv_reg5[23]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(axi_awaddr[2]),
        .I2(\slv_reg0[31]_i_2_n_0 ),
        .I3(axi_awaddr[5]),
        .I4(axi_awaddr[4]),
        .I5(s_axi_lite_wstrb[2]),
        .O(\slv_reg5[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0040000000000000)) 
    \slv_reg5[31]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(axi_awaddr[2]),
        .I2(\slv_reg0[31]_i_2_n_0 ),
        .I3(axi_awaddr[5]),
        .I4(axi_awaddr[4]),
        .I5(s_axi_lite_wstrb[3]),
        .O(\slv_reg5[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0040000000000000)) 
    \slv_reg5[7]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(axi_awaddr[2]),
        .I2(\slv_reg0[31]_i_2_n_0 ),
        .I3(axi_awaddr[5]),
        .I4(axi_awaddr[4]),
        .I5(s_axi_lite_wstrb[0]),
        .O(\slv_reg5[7]_i_1_n_0 ));
  FDRE \slv_reg5_reg[0] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s_axi_lite_wdata[0]),
        .Q(slv_reg5[0]),
        .R(SR));
  FDRE \slv_reg5_reg[10] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s_axi_lite_wdata[10]),
        .Q(slv_reg5[10]),
        .R(SR));
  FDRE \slv_reg5_reg[11] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s_axi_lite_wdata[11]),
        .Q(slv_reg5[11]),
        .R(SR));
  FDRE \slv_reg5_reg[12] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s_axi_lite_wdata[12]),
        .Q(slv_reg5[12]),
        .R(SR));
  FDRE \slv_reg5_reg[13] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s_axi_lite_wdata[13]),
        .Q(slv_reg5[13]),
        .R(SR));
  FDRE \slv_reg5_reg[14] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s_axi_lite_wdata[14]),
        .Q(slv_reg5[14]),
        .R(SR));
  FDRE \slv_reg5_reg[15] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s_axi_lite_wdata[15]),
        .Q(slv_reg5[15]),
        .R(SR));
  FDRE \slv_reg5_reg[16] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s_axi_lite_wdata[16]),
        .Q(slv_reg5[16]),
        .R(SR));
  FDRE \slv_reg5_reg[17] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s_axi_lite_wdata[17]),
        .Q(slv_reg5[17]),
        .R(SR));
  FDRE \slv_reg5_reg[18] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s_axi_lite_wdata[18]),
        .Q(slv_reg5[18]),
        .R(SR));
  FDRE \slv_reg5_reg[19] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s_axi_lite_wdata[19]),
        .Q(slv_reg5[19]),
        .R(SR));
  FDRE \slv_reg5_reg[1] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s_axi_lite_wdata[1]),
        .Q(slv_reg5[1]),
        .R(SR));
  FDRE \slv_reg5_reg[20] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s_axi_lite_wdata[20]),
        .Q(slv_reg5[20]),
        .R(SR));
  FDRE \slv_reg5_reg[21] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s_axi_lite_wdata[21]),
        .Q(slv_reg5[21]),
        .R(SR));
  FDRE \slv_reg5_reg[22] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s_axi_lite_wdata[22]),
        .Q(slv_reg5[22]),
        .R(SR));
  FDRE \slv_reg5_reg[23] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s_axi_lite_wdata[23]),
        .Q(slv_reg5[23]),
        .R(SR));
  FDRE \slv_reg5_reg[24] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s_axi_lite_wdata[24]),
        .Q(slv_reg5[24]),
        .R(SR));
  FDRE \slv_reg5_reg[25] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s_axi_lite_wdata[25]),
        .Q(slv_reg5[25]),
        .R(SR));
  FDRE \slv_reg5_reg[26] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s_axi_lite_wdata[26]),
        .Q(slv_reg5[26]),
        .R(SR));
  FDRE \slv_reg5_reg[27] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s_axi_lite_wdata[27]),
        .Q(slv_reg5[27]),
        .R(SR));
  FDRE \slv_reg5_reg[28] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s_axi_lite_wdata[28]),
        .Q(slv_reg5[28]),
        .R(SR));
  FDRE \slv_reg5_reg[29] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s_axi_lite_wdata[29]),
        .Q(slv_reg5[29]),
        .R(SR));
  FDRE \slv_reg5_reg[2] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s_axi_lite_wdata[2]),
        .Q(slv_reg5[2]),
        .R(SR));
  FDRE \slv_reg5_reg[30] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s_axi_lite_wdata[30]),
        .Q(slv_reg5[30]),
        .R(SR));
  FDRE \slv_reg5_reg[31] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s_axi_lite_wdata[31]),
        .Q(slv_reg5[31]),
        .R(SR));
  FDRE \slv_reg5_reg[3] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s_axi_lite_wdata[3]),
        .Q(slv_reg5[3]),
        .R(SR));
  FDRE \slv_reg5_reg[4] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s_axi_lite_wdata[4]),
        .Q(slv_reg5[4]),
        .R(SR));
  FDRE \slv_reg5_reg[5] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s_axi_lite_wdata[5]),
        .Q(slv_reg5[5]),
        .R(SR));
  FDRE \slv_reg5_reg[6] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s_axi_lite_wdata[6]),
        .Q(slv_reg5[6]),
        .R(SR));
  FDRE \slv_reg5_reg[7] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s_axi_lite_wdata[7]),
        .Q(slv_reg5[7]),
        .R(SR));
  FDRE \slv_reg5_reg[8] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s_axi_lite_wdata[8]),
        .Q(slv_reg5[8]),
        .R(SR));
  FDRE \slv_reg5_reg[9] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s_axi_lite_wdata[9]),
        .Q(slv_reg5[9]),
        .R(SR));
  LUT6 #(
    .INIT(64'h0020000000000000)) 
    \slv_reg6[15]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(axi_awaddr[2]),
        .I2(\slv_reg0[31]_i_2_n_0 ),
        .I3(axi_awaddr[5]),
        .I4(axi_awaddr[4]),
        .I5(s_axi_lite_wstrb[1]),
        .O(\slv_reg6[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0020000000000000)) 
    \slv_reg6[23]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(axi_awaddr[2]),
        .I2(\slv_reg0[31]_i_2_n_0 ),
        .I3(axi_awaddr[5]),
        .I4(axi_awaddr[4]),
        .I5(s_axi_lite_wstrb[2]),
        .O(\slv_reg6[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0020000000000000)) 
    \slv_reg6[31]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(axi_awaddr[2]),
        .I2(\slv_reg0[31]_i_2_n_0 ),
        .I3(axi_awaddr[5]),
        .I4(axi_awaddr[4]),
        .I5(s_axi_lite_wstrb[3]),
        .O(\slv_reg6[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0020000000000000)) 
    \slv_reg6[7]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(axi_awaddr[2]),
        .I2(\slv_reg0[31]_i_2_n_0 ),
        .I3(axi_awaddr[5]),
        .I4(axi_awaddr[4]),
        .I5(s_axi_lite_wstrb[0]),
        .O(\slv_reg6[7]_i_1_n_0 ));
  FDRE \slv_reg6_reg[0] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s_axi_lite_wdata[0]),
        .Q(slv_reg6[0]),
        .R(SR));
  FDRE \slv_reg6_reg[10] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s_axi_lite_wdata[10]),
        .Q(slv_reg6[10]),
        .R(SR));
  FDRE \slv_reg6_reg[11] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s_axi_lite_wdata[11]),
        .Q(slv_reg6[11]),
        .R(SR));
  FDRE \slv_reg6_reg[12] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s_axi_lite_wdata[12]),
        .Q(slv_reg6[12]),
        .R(SR));
  FDRE \slv_reg6_reg[13] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s_axi_lite_wdata[13]),
        .Q(slv_reg6[13]),
        .R(SR));
  FDRE \slv_reg6_reg[14] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s_axi_lite_wdata[14]),
        .Q(slv_reg6[14]),
        .R(SR));
  FDRE \slv_reg6_reg[15] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s_axi_lite_wdata[15]),
        .Q(slv_reg6[15]),
        .R(SR));
  FDRE \slv_reg6_reg[16] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s_axi_lite_wdata[16]),
        .Q(slv_reg6[16]),
        .R(SR));
  FDRE \slv_reg6_reg[17] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s_axi_lite_wdata[17]),
        .Q(slv_reg6[17]),
        .R(SR));
  FDRE \slv_reg6_reg[18] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s_axi_lite_wdata[18]),
        .Q(slv_reg6[18]),
        .R(SR));
  FDRE \slv_reg6_reg[19] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s_axi_lite_wdata[19]),
        .Q(slv_reg6[19]),
        .R(SR));
  FDRE \slv_reg6_reg[1] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s_axi_lite_wdata[1]),
        .Q(slv_reg6[1]),
        .R(SR));
  FDRE \slv_reg6_reg[20] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s_axi_lite_wdata[20]),
        .Q(slv_reg6[20]),
        .R(SR));
  FDRE \slv_reg6_reg[21] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s_axi_lite_wdata[21]),
        .Q(slv_reg6[21]),
        .R(SR));
  FDRE \slv_reg6_reg[22] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s_axi_lite_wdata[22]),
        .Q(slv_reg6[22]),
        .R(SR));
  FDRE \slv_reg6_reg[23] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s_axi_lite_wdata[23]),
        .Q(slv_reg6[23]),
        .R(SR));
  FDRE \slv_reg6_reg[24] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s_axi_lite_wdata[24]),
        .Q(slv_reg6[24]),
        .R(SR));
  FDRE \slv_reg6_reg[25] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s_axi_lite_wdata[25]),
        .Q(slv_reg6[25]),
        .R(SR));
  FDRE \slv_reg6_reg[26] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s_axi_lite_wdata[26]),
        .Q(slv_reg6[26]),
        .R(SR));
  FDRE \slv_reg6_reg[27] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s_axi_lite_wdata[27]),
        .Q(slv_reg6[27]),
        .R(SR));
  FDRE \slv_reg6_reg[28] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s_axi_lite_wdata[28]),
        .Q(slv_reg6[28]),
        .R(SR));
  FDRE \slv_reg6_reg[29] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s_axi_lite_wdata[29]),
        .Q(slv_reg6[29]),
        .R(SR));
  FDRE \slv_reg6_reg[2] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s_axi_lite_wdata[2]),
        .Q(slv_reg6[2]),
        .R(SR));
  FDRE \slv_reg6_reg[30] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s_axi_lite_wdata[30]),
        .Q(\axi_rdata_reg[30]_0 ),
        .R(SR));
  FDRE \slv_reg6_reg[31] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s_axi_lite_wdata[31]),
        .Q(slv_reg6[31]),
        .R(SR));
  FDRE \slv_reg6_reg[3] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s_axi_lite_wdata[3]),
        .Q(slv_reg6[3]),
        .R(SR));
  FDRE \slv_reg6_reg[4] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s_axi_lite_wdata[4]),
        .Q(slv_reg6[4]),
        .R(SR));
  FDRE \slv_reg6_reg[5] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s_axi_lite_wdata[5]),
        .Q(slv_reg6[5]),
        .R(SR));
  FDRE \slv_reg6_reg[6] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s_axi_lite_wdata[6]),
        .Q(slv_reg6[6]),
        .R(SR));
  FDRE \slv_reg6_reg[7] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s_axi_lite_wdata[7]),
        .Q(slv_reg6[7]),
        .R(SR));
  FDRE \slv_reg6_reg[8] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s_axi_lite_wdata[8]),
        .Q(slv_reg6[8]),
        .R(SR));
  FDRE \slv_reg6_reg[9] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s_axi_lite_wdata[9]),
        .Q(slv_reg6[9]),
        .R(SR));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \slv_reg7[15]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(axi_awaddr[2]),
        .I2(\slv_reg0[31]_i_2_n_0 ),
        .I3(axi_awaddr[5]),
        .I4(axi_awaddr[4]),
        .I5(s_axi_lite_wstrb[1]),
        .O(\slv_reg7[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \slv_reg7[23]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(axi_awaddr[2]),
        .I2(\slv_reg0[31]_i_2_n_0 ),
        .I3(axi_awaddr[5]),
        .I4(axi_awaddr[4]),
        .I5(s_axi_lite_wstrb[2]),
        .O(\slv_reg7[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \slv_reg7[31]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(axi_awaddr[2]),
        .I2(\slv_reg0[31]_i_2_n_0 ),
        .I3(axi_awaddr[5]),
        .I4(axi_awaddr[4]),
        .I5(s_axi_lite_wstrb[3]),
        .O(\slv_reg7[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \slv_reg7[7]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(axi_awaddr[2]),
        .I2(\slv_reg0[31]_i_2_n_0 ),
        .I3(axi_awaddr[5]),
        .I4(axi_awaddr[4]),
        .I5(s_axi_lite_wstrb[0]),
        .O(\slv_reg7[7]_i_1_n_0 ));
  FDRE \slv_reg7_reg[0] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s_axi_lite_wdata[0]),
        .Q(slv_reg7[0]),
        .R(SR));
  FDRE \slv_reg7_reg[10] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s_axi_lite_wdata[10]),
        .Q(slv_reg7[10]),
        .R(SR));
  FDRE \slv_reg7_reg[11] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s_axi_lite_wdata[11]),
        .Q(slv_reg7[11]),
        .R(SR));
  FDRE \slv_reg7_reg[12] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s_axi_lite_wdata[12]),
        .Q(slv_reg7[12]),
        .R(SR));
  FDRE \slv_reg7_reg[13] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s_axi_lite_wdata[13]),
        .Q(slv_reg7[13]),
        .R(SR));
  FDRE \slv_reg7_reg[14] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s_axi_lite_wdata[14]),
        .Q(slv_reg7[14]),
        .R(SR));
  FDRE \slv_reg7_reg[15] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s_axi_lite_wdata[15]),
        .Q(slv_reg7[15]),
        .R(SR));
  FDRE \slv_reg7_reg[16] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s_axi_lite_wdata[16]),
        .Q(slv_reg7[16]),
        .R(SR));
  FDRE \slv_reg7_reg[17] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s_axi_lite_wdata[17]),
        .Q(slv_reg7[17]),
        .R(SR));
  FDRE \slv_reg7_reg[18] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s_axi_lite_wdata[18]),
        .Q(slv_reg7[18]),
        .R(SR));
  FDRE \slv_reg7_reg[19] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s_axi_lite_wdata[19]),
        .Q(slv_reg7[19]),
        .R(SR));
  FDRE \slv_reg7_reg[1] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s_axi_lite_wdata[1]),
        .Q(\axi_rdata_reg[25]_0 [0]),
        .R(SR));
  FDRE \slv_reg7_reg[20] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s_axi_lite_wdata[20]),
        .Q(slv_reg7[20]),
        .R(SR));
  FDRE \slv_reg7_reg[21] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s_axi_lite_wdata[21]),
        .Q(\axi_rdata_reg[25]_0 [5]),
        .R(SR));
  FDRE \slv_reg7_reg[22] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s_axi_lite_wdata[22]),
        .Q(slv_reg7[22]),
        .R(SR));
  FDRE \slv_reg7_reg[23] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s_axi_lite_wdata[23]),
        .Q(slv_reg7[23]),
        .R(SR));
  FDRE \slv_reg7_reg[24] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s_axi_lite_wdata[24]),
        .Q(slv_reg7[24]),
        .R(SR));
  FDRE \slv_reg7_reg[25] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s_axi_lite_wdata[25]),
        .Q(\axi_rdata_reg[25]_0 [6]),
        .R(SR));
  FDRE \slv_reg7_reg[26] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s_axi_lite_wdata[26]),
        .Q(slv_reg7[26]),
        .R(SR));
  FDRE \slv_reg7_reg[27] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s_axi_lite_wdata[27]),
        .Q(slv_reg7[27]),
        .R(SR));
  FDRE \slv_reg7_reg[28] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s_axi_lite_wdata[28]),
        .Q(slv_reg7[28]),
        .R(SR));
  FDRE \slv_reg7_reg[29] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s_axi_lite_wdata[29]),
        .Q(slv_reg7[29]),
        .R(SR));
  FDRE \slv_reg7_reg[2] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s_axi_lite_wdata[2]),
        .Q(\axi_rdata_reg[25]_0 [1]),
        .R(SR));
  FDRE \slv_reg7_reg[30] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s_axi_lite_wdata[30]),
        .Q(slv_reg7[30]),
        .R(SR));
  FDRE \slv_reg7_reg[31] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s_axi_lite_wdata[31]),
        .Q(slv_reg7[31]),
        .R(SR));
  FDRE \slv_reg7_reg[3] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s_axi_lite_wdata[3]),
        .Q(\axi_rdata_reg[25]_0 [2]),
        .R(SR));
  FDRE \slv_reg7_reg[4] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s_axi_lite_wdata[4]),
        .Q(slv_reg7[4]),
        .R(SR));
  FDRE \slv_reg7_reg[5] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s_axi_lite_wdata[5]),
        .Q(slv_reg7[5]),
        .R(SR));
  FDRE \slv_reg7_reg[6] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s_axi_lite_wdata[6]),
        .Q(\axi_rdata_reg[25]_0 [3]),
        .R(SR));
  FDRE \slv_reg7_reg[7] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s_axi_lite_wdata[7]),
        .Q(\axi_rdata_reg[25]_0 [4]),
        .R(SR));
  FDRE \slv_reg7_reg[8] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s_axi_lite_wdata[8]),
        .Q(slv_reg7[8]),
        .R(SR));
  FDRE \slv_reg7_reg[9] 
       (.C(s_axi_lite_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s_axi_lite_wdata[9]),
        .Q(slv_reg7[9]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "mmcme2_drp" *) 
module system_video_dynclk_0_mmcme2_drp
   (I,
    LOCKED_O,
    SRDY,
    rom_addr,
    REF_CLK_I,
    s_axi_lite_aclk,
    D,
    \slv_reg3_reg[26] ,
    \slv_reg4_reg[0] ,
    \slv_reg3_reg[29] ,
    \slv_reg4_reg[3] ,
    \slv_reg2_reg[30] ,
    Q,
    \slv_reg2_reg[31] ,
    \slv_reg7_reg[25] ,
    \slv_reg6_reg[30] ,
    SR,
    sen_reg);
  output I;
  output LOCKED_O;
  output SRDY;
  output [3:0]rom_addr;
  input REF_CLK_I;
  input s_axi_lite_aclk;
  input [11:0]D;
  input \slv_reg3_reg[26] ;
  input \slv_reg4_reg[0] ;
  input \slv_reg3_reg[29] ;
  input \slv_reg4_reg[3] ;
  input \slv_reg2_reg[30] ;
  input [3:0]Q;
  input \slv_reg2_reg[31] ;
  input [6:0]\slv_reg7_reg[25] ;
  input [0:0]\slv_reg6_reg[30] ;
  input [0:0]SR;
  input sen_reg;

  wire [11:0]D;
  wire [6:0]DADDR;
  wire \DADDR[0]_i_1_n_0 ;
  wire \DADDR[1]_i_1_n_0 ;
  wire \DADDR[2]_i_1_n_0 ;
  wire \DADDR[3]_i_1_n_0 ;
  wire \DADDR[4]_i_1_n_0 ;
  wire \DADDR[5]_i_1_n_0 ;
  wire \DADDR[6]_i_2_n_0 ;
  wire DEN;
  wire [15:0]DI;
  wire \DI[0]_i_1_n_0 ;
  wire \DI[10]_i_1_n_0 ;
  wire \DI[11]_i_1_n_0 ;
  wire \DI[12]_i_1_n_0 ;
  wire \DI[13]_i_1_n_0 ;
  wire \DI[14]_i_1_n_0 ;
  wire \DI[15]_i_1_n_0 ;
  wire \DI[15]_i_3_n_0 ;
  wire \DI[1]_i_1_n_0 ;
  wire \DI[2]_i_1_n_0 ;
  wire \DI[3]_i_1_n_0 ;
  wire \DI[4]_i_1_n_0 ;
  wire \DI[5]_i_1_n_0 ;
  wire \DI[6]_i_1_n_0 ;
  wire \DI[7]_i_1_n_0 ;
  wire \DI[8]_i_1_n_0 ;
  wire \DI[9]_i_1_n_0 ;
  wire [15:0]DO;
  wire DRDY;
  wire DWE;
  wire \FSM_sequential_current_state[0]_i_1_n_0 ;
  wire \FSM_sequential_current_state[0]_i_2_n_0 ;
  wire \FSM_sequential_current_state[1]_i_1_n_0 ;
  wire \FSM_sequential_current_state[1]_i_2_n_0 ;
  wire \FSM_sequential_current_state[2]_i_1_n_0 ;
  wire \FSM_sequential_current_state[3]_i_1_n_0 ;
  wire I;
  wire LOCKED_O;
  wire [3:0]Q;
  wire REF_CLK_I;
  wire RST_MMCM;
  wire RST_MMCM_i_1_n_0;
  wire [0:0]SR;
  wire SRDY;
  (* RTL_KEEP = "yes" *) wire [3:0]current_state;
  wire mmcm_fbclk_out;
  wire next_daddr;
  wire next_den;
  wire next_di;
  wire next_dwe;
  wire next_rom_addr;
  wire next_srdy;
  wire [6:0]p_0_in;
  wire [38:10]rom;
  wire [3:0]rom_addr;
  wire \rom_addr[0]_i_1_n_0 ;
  wire \rom_addr[1]_i_1_n_0 ;
  wire \rom_addr[2]_i_1_n_0 ;
  wire \rom_addr[3]_i_2_n_0 ;
  wire \rom_do[10]_i_2_n_0 ;
  wire \rom_do[13]_i_2_n_0 ;
  wire \rom_do[14]_i_2_n_0 ;
  wire \rom_do[14]_i_3_n_0 ;
  wire \rom_do[15]_i_2_n_0 ;
  wire \rom_do[15]_i_3_n_0 ;
  wire \rom_do[24]_i_1_n_0 ;
  wire \rom_do[35]_i_1_n_0 ;
  wire \rom_do[37]_i_1_n_0 ;
  wire \rom_do_reg_n_0_[0] ;
  wire \rom_do_reg_n_0_[10] ;
  wire \rom_do_reg_n_0_[11] ;
  wire \rom_do_reg_n_0_[12] ;
  wire \rom_do_reg_n_0_[13] ;
  wire \rom_do_reg_n_0_[14] ;
  wire \rom_do_reg_n_0_[15] ;
  wire \rom_do_reg_n_0_[1] ;
  wire \rom_do_reg_n_0_[23] ;
  wire \rom_do_reg_n_0_[24] ;
  wire \rom_do_reg_n_0_[25] ;
  wire \rom_do_reg_n_0_[27] ;
  wire \rom_do_reg_n_0_[28] ;
  wire \rom_do_reg_n_0_[29] ;
  wire \rom_do_reg_n_0_[2] ;
  wire \rom_do_reg_n_0_[30] ;
  wire \rom_do_reg_n_0_[31] ;
  wire \rom_do_reg_n_0_[3] ;
  wire \rom_do_reg_n_0_[4] ;
  wire \rom_do_reg_n_0_[5] ;
  wire \rom_do_reg_n_0_[6] ;
  wire \rom_do_reg_n_0_[7] ;
  wire \rom_do_reg_n_0_[8] ;
  wire \rom_do_reg_n_0_[9] ;
  wire s_axi_lite_aclk;
  wire sen_reg;
  wire \slv_reg2_reg[30] ;
  wire \slv_reg2_reg[31] ;
  wire \slv_reg3_reg[26] ;
  wire \slv_reg3_reg[29] ;
  wire \slv_reg4_reg[0] ;
  wire \slv_reg4_reg[3] ;
  wire [0:0]\slv_reg6_reg[30] ;
  wire [6:0]\slv_reg7_reg[25] ;
  wire [3:0]state_count;
  wire \state_count[0]_i_1_n_0 ;
  wire \state_count[1]_i_1_n_0 ;
  wire \state_count[2]_i_1_n_0 ;
  wire \state_count[3]_i_1_n_0 ;
  wire \state_count[3]_i_2_n_0 ;
  wire NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT1_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT1B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT2_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT2B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT3_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT3B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT4_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT5_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT6_UNCONNECTED;
  wire NLW_mmcm_adv_inst_PSDONE_UNCONNECTED;

  LUT2 #(
    .INIT(4'h8)) 
    \DADDR[0]_i_1 
       (.I0(p_0_in[0]),
        .I1(current_state[1]),
        .O(\DADDR[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \DADDR[1]_i_1 
       (.I0(p_0_in[1]),
        .I1(current_state[1]),
        .O(\DADDR[1]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \DADDR[2]_i_1 
       (.I0(p_0_in[2]),
        .I1(current_state[1]),
        .O(\DADDR[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \DADDR[3]_i_1 
       (.I0(p_0_in[3]),
        .I1(current_state[1]),
        .O(\DADDR[3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \DADDR[4]_i_1 
       (.I0(p_0_in[4]),
        .I1(current_state[1]),
        .O(\DADDR[4]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \DADDR[5]_i_1 
       (.I0(p_0_in[5]),
        .I1(current_state[1]),
        .O(\DADDR[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0041)) 
    \DADDR[6]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(current_state[3]),
        .O(next_daddr));
  LUT2 #(
    .INIT(4'h8)) 
    \DADDR[6]_i_2 
       (.I0(p_0_in[6]),
        .I1(current_state[1]),
        .O(\DADDR[6]_i_2_n_0 ));
  FDRE \DADDR_reg[0] 
       (.C(s_axi_lite_aclk),
        .CE(next_daddr),
        .D(\DADDR[0]_i_1_n_0 ),
        .Q(DADDR[0]),
        .R(1'b0));
  FDRE \DADDR_reg[1] 
       (.C(s_axi_lite_aclk),
        .CE(next_daddr),
        .D(\DADDR[1]_i_1_n_0 ),
        .Q(DADDR[1]),
        .R(1'b0));
  FDRE \DADDR_reg[2] 
       (.C(s_axi_lite_aclk),
        .CE(next_daddr),
        .D(\DADDR[2]_i_1_n_0 ),
        .Q(DADDR[2]),
        .R(1'b0));
  FDRE \DADDR_reg[3] 
       (.C(s_axi_lite_aclk),
        .CE(next_daddr),
        .D(\DADDR[3]_i_1_n_0 ),
        .Q(DADDR[3]),
        .R(1'b0));
  FDRE \DADDR_reg[4] 
       (.C(s_axi_lite_aclk),
        .CE(next_daddr),
        .D(\DADDR[4]_i_1_n_0 ),
        .Q(DADDR[4]),
        .R(1'b0));
  FDRE \DADDR_reg[5] 
       (.C(s_axi_lite_aclk),
        .CE(next_daddr),
        .D(\DADDR[5]_i_1_n_0 ),
        .Q(DADDR[5]),
        .R(1'b0));
  FDRE \DADDR_reg[6] 
       (.C(s_axi_lite_aclk),
        .CE(next_daddr),
        .D(\DADDR[6]_i_2_n_0 ),
        .Q(DADDR[6]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h40)) 
    DEN_i_1
       (.I0(current_state[3]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .O(next_den));
  FDRE DEN_reg
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(next_den),
        .Q(DEN),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hEEEEF000)) 
    \DI[0]_i_1 
       (.I0(\rom_do_reg_n_0_[0] ),
        .I1(DI[0]),
        .I2(\rom_do_reg_n_0_[25] ),
        .I3(DO[0]),
        .I4(current_state[1]),
        .O(\DI[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEEEEF000)) 
    \DI[10]_i_1 
       (.I0(\rom_do_reg_n_0_[10] ),
        .I1(DI[10]),
        .I2(\rom_do_reg_n_0_[29] ),
        .I3(DO[10]),
        .I4(current_state[1]),
        .O(\DI[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEEEEF000)) 
    \DI[11]_i_1 
       (.I0(\rom_do_reg_n_0_[11] ),
        .I1(DI[11]),
        .I2(\rom_do_reg_n_0_[27] ),
        .I3(DO[11]),
        .I4(current_state[1]),
        .O(\DI[11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEEEEF000)) 
    \DI[12]_i_1 
       (.I0(\rom_do_reg_n_0_[12] ),
        .I1(DI[12]),
        .I2(\rom_do_reg_n_0_[28] ),
        .I3(DO[12]),
        .I4(current_state[1]),
        .O(\DI[12]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEEEEF000)) 
    \DI[13]_i_1 
       (.I0(\rom_do_reg_n_0_[13] ),
        .I1(DI[13]),
        .I2(\rom_do_reg_n_0_[29] ),
        .I3(DO[13]),
        .I4(current_state[1]),
        .O(\DI[13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEEEEF000)) 
    \DI[14]_i_1 
       (.I0(\rom_do_reg_n_0_[14] ),
        .I1(DI[14]),
        .I2(\rom_do_reg_n_0_[30] ),
        .I3(DO[14]),
        .I4(current_state[1]),
        .O(\DI[14]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \DI[15]_i_1 
       (.I0(current_state[1]),
        .I1(current_state[2]),
        .I2(current_state[3]),
        .I3(current_state[0]),
        .O(\DI[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h1021)) 
    \DI[15]_i_2 
       (.I0(current_state[0]),
        .I1(current_state[3]),
        .I2(current_state[2]),
        .I3(current_state[1]),
        .O(next_di));
  LUT5 #(
    .INIT(32'hEEEEF000)) 
    \DI[15]_i_3 
       (.I0(\rom_do_reg_n_0_[15] ),
        .I1(DI[15]),
        .I2(\rom_do_reg_n_0_[31] ),
        .I3(DO[15]),
        .I4(current_state[1]),
        .O(\DI[15]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEEEEF000)) 
    \DI[1]_i_1 
       (.I0(\rom_do_reg_n_0_[1] ),
        .I1(DI[1]),
        .I2(\rom_do_reg_n_0_[25] ),
        .I3(DO[1]),
        .I4(current_state[1]),
        .O(\DI[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEEEEF000)) 
    \DI[2]_i_1 
       (.I0(\rom_do_reg_n_0_[2] ),
        .I1(DI[2]),
        .I2(\rom_do_reg_n_0_[25] ),
        .I3(DO[2]),
        .I4(current_state[1]),
        .O(\DI[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEEEEF000)) 
    \DI[3]_i_1 
       (.I0(\rom_do_reg_n_0_[3] ),
        .I1(DI[3]),
        .I2(\rom_do_reg_n_0_[25] ),
        .I3(DO[3]),
        .I4(current_state[1]),
        .O(\DI[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEEEEF000)) 
    \DI[4]_i_1 
       (.I0(\rom_do_reg_n_0_[4] ),
        .I1(DI[4]),
        .I2(\rom_do_reg_n_0_[23] ),
        .I3(DO[4]),
        .I4(current_state[1]),
        .O(\DI[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEEEEF000)) 
    \DI[5]_i_1 
       (.I0(\rom_do_reg_n_0_[5] ),
        .I1(DI[5]),
        .I2(\rom_do_reg_n_0_[25] ),
        .I3(DO[5]),
        .I4(current_state[1]),
        .O(\DI[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEEEEF000)) 
    \DI[6]_i_1 
       (.I0(\rom_do_reg_n_0_[6] ),
        .I1(DI[6]),
        .I2(\rom_do_reg_n_0_[25] ),
        .I3(DO[6]),
        .I4(current_state[1]),
        .O(\DI[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEEEEF000)) 
    \DI[7]_i_1 
       (.I0(\rom_do_reg_n_0_[7] ),
        .I1(DI[7]),
        .I2(\rom_do_reg_n_0_[23] ),
        .I3(DO[7]),
        .I4(current_state[1]),
        .O(\DI[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEEEEF000)) 
    \DI[8]_i_1 
       (.I0(\rom_do_reg_n_0_[8] ),
        .I1(DI[8]),
        .I2(\rom_do_reg_n_0_[24] ),
        .I3(DO[8]),
        .I4(current_state[1]),
        .O(\DI[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEEEEF000)) 
    \DI[9]_i_1 
       (.I0(\rom_do_reg_n_0_[9] ),
        .I1(DI[9]),
        .I2(\rom_do_reg_n_0_[25] ),
        .I3(DO[9]),
        .I4(current_state[1]),
        .O(\DI[9]_i_1_n_0 ));
  FDRE \DI_reg[0] 
       (.C(s_axi_lite_aclk),
        .CE(next_di),
        .D(\DI[0]_i_1_n_0 ),
        .Q(DI[0]),
        .R(\DI[15]_i_1_n_0 ));
  FDRE \DI_reg[10] 
       (.C(s_axi_lite_aclk),
        .CE(next_di),
        .D(\DI[10]_i_1_n_0 ),
        .Q(DI[10]),
        .R(\DI[15]_i_1_n_0 ));
  FDRE \DI_reg[11] 
       (.C(s_axi_lite_aclk),
        .CE(next_di),
        .D(\DI[11]_i_1_n_0 ),
        .Q(DI[11]),
        .R(\DI[15]_i_1_n_0 ));
  FDRE \DI_reg[12] 
       (.C(s_axi_lite_aclk),
        .CE(next_di),
        .D(\DI[12]_i_1_n_0 ),
        .Q(DI[12]),
        .R(\DI[15]_i_1_n_0 ));
  FDRE \DI_reg[13] 
       (.C(s_axi_lite_aclk),
        .CE(next_di),
        .D(\DI[13]_i_1_n_0 ),
        .Q(DI[13]),
        .R(\DI[15]_i_1_n_0 ));
  FDRE \DI_reg[14] 
       (.C(s_axi_lite_aclk),
        .CE(next_di),
        .D(\DI[14]_i_1_n_0 ),
        .Q(DI[14]),
        .R(\DI[15]_i_1_n_0 ));
  FDRE \DI_reg[15] 
       (.C(s_axi_lite_aclk),
        .CE(next_di),
        .D(\DI[15]_i_3_n_0 ),
        .Q(DI[15]),
        .R(\DI[15]_i_1_n_0 ));
  FDRE \DI_reg[1] 
       (.C(s_axi_lite_aclk),
        .CE(next_di),
        .D(\DI[1]_i_1_n_0 ),
        .Q(DI[1]),
        .R(\DI[15]_i_1_n_0 ));
  FDRE \DI_reg[2] 
       (.C(s_axi_lite_aclk),
        .CE(next_di),
        .D(\DI[2]_i_1_n_0 ),
        .Q(DI[2]),
        .R(\DI[15]_i_1_n_0 ));
  FDRE \DI_reg[3] 
       (.C(s_axi_lite_aclk),
        .CE(next_di),
        .D(\DI[3]_i_1_n_0 ),
        .Q(DI[3]),
        .R(\DI[15]_i_1_n_0 ));
  FDRE \DI_reg[4] 
       (.C(s_axi_lite_aclk),
        .CE(next_di),
        .D(\DI[4]_i_1_n_0 ),
        .Q(DI[4]),
        .R(\DI[15]_i_1_n_0 ));
  FDRE \DI_reg[5] 
       (.C(s_axi_lite_aclk),
        .CE(next_di),
        .D(\DI[5]_i_1_n_0 ),
        .Q(DI[5]),
        .R(\DI[15]_i_1_n_0 ));
  FDRE \DI_reg[6] 
       (.C(s_axi_lite_aclk),
        .CE(next_di),
        .D(\DI[6]_i_1_n_0 ),
        .Q(DI[6]),
        .R(\DI[15]_i_1_n_0 ));
  FDRE \DI_reg[7] 
       (.C(s_axi_lite_aclk),
        .CE(next_di),
        .D(\DI[7]_i_1_n_0 ),
        .Q(DI[7]),
        .R(\DI[15]_i_1_n_0 ));
  FDRE \DI_reg[8] 
       (.C(s_axi_lite_aclk),
        .CE(next_di),
        .D(\DI[8]_i_1_n_0 ),
        .Q(DI[8]),
        .R(\DI[15]_i_1_n_0 ));
  FDRE \DI_reg[9] 
       (.C(s_axi_lite_aclk),
        .CE(next_di),
        .D(\DI[9]_i_1_n_0 ),
        .Q(DI[9]),
        .R(\DI[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    DWE_i_1
       (.I0(current_state[2]),
        .I1(current_state[3]),
        .I2(current_state[0]),
        .I3(current_state[1]),
        .O(next_dwe));
  FDRE DWE_reg
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(next_dwe),
        .Q(DWE),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h000EFFFF000E0000)) 
    \FSM_sequential_current_state[0]_i_1 
       (.I0(current_state[2]),
        .I1(sen_reg),
        .I2(current_state[3]),
        .I3(current_state[0]),
        .I4(current_state[1]),
        .I5(\FSM_sequential_current_state[0]_i_2_n_0 ),
        .O(\FSM_sequential_current_state[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h03370007)) 
    \FSM_sequential_current_state[0]_i_2 
       (.I0(LOCKED_O),
        .I1(current_state[0]),
        .I2(current_state[2]),
        .I3(current_state[3]),
        .I4(DRDY),
        .O(\FSM_sequential_current_state[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00005A4A00055A4A)) 
    \FSM_sequential_current_state[1]_i_1 
       (.I0(current_state[1]),
        .I1(LOCKED_O),
        .I2(current_state[0]),
        .I3(current_state[2]),
        .I4(current_state[3]),
        .I5(\FSM_sequential_current_state[1]_i_2_n_0 ),
        .O(\FSM_sequential_current_state[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h55555557)) 
    \FSM_sequential_current_state[1]_i_2 
       (.I0(DRDY),
        .I1(state_count[3]),
        .I2(state_count[2]),
        .I3(state_count[0]),
        .I4(state_count[1]),
        .O(\FSM_sequential_current_state[1]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h006A)) 
    \FSM_sequential_current_state[2]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(current_state[3]),
        .O(\FSM_sequential_current_state[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h20200004)) 
    \FSM_sequential_current_state[3]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[3]),
        .I2(current_state[1]),
        .I3(DRDY),
        .I4(current_state[0]),
        .O(\FSM_sequential_current_state[3]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_current_state_reg[0] 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_current_state[0]_i_1_n_0 ),
        .Q(current_state[0]),
        .R(SR));
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_current_state_reg[1] 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_current_state[1]_i_1_n_0 ),
        .Q(current_state[1]),
        .R(SR));
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_current_state_reg[2] 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_current_state[2]_i_1_n_0 ),
        .Q(current_state[2]),
        .R(SR));
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_current_state_reg[3] 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_current_state[3]_i_1_n_0 ),
        .Q(current_state[3]),
        .R(SR));
  LUT5 #(
    .INIT(32'hFFFB0009)) 
    RST_MMCM_i_1
       (.I0(current_state[1]),
        .I1(current_state[0]),
        .I2(current_state[3]),
        .I3(current_state[2]),
        .I4(RST_MMCM),
        .O(RST_MMCM_i_1_n_0));
  FDRE RST_MMCM_reg
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(RST_MMCM_i_1_n_0),
        .Q(RST_MMCM),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00000020)) 
    SRDY_i_1
       (.I0(current_state[0]),
        .I1(current_state[2]),
        .I2(LOCKED_O),
        .I3(current_state[1]),
        .I4(current_state[3]),
        .O(next_srdy));
  FDRE SRDY_reg
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(next_srdy),
        .Q(SRDY),
        .R(1'b0));
  (* box_type = "PRIMITIVE" *) 
  MMCME2_ADV #(
    .BANDWIDTH("OPTIMIZED"),
    .CLKFBOUT_MULT_F(10.000000),
    .CLKFBOUT_PHASE(0.000000),
    .CLKFBOUT_USE_FINE_PS("FALSE"),
    .CLKIN1_PERIOD(10.000000),
    .CLKIN2_PERIOD(0.000000),
    .CLKOUT0_DIVIDE_F(2.000000),
    .CLKOUT0_DUTY_CYCLE(0.500000),
    .CLKOUT0_PHASE(0.000000),
    .CLKOUT0_USE_FINE_PS("FALSE"),
    .CLKOUT1_DIVIDE(1),
    .CLKOUT1_DUTY_CYCLE(0.500000),
    .CLKOUT1_PHASE(0.000000),
    .CLKOUT1_USE_FINE_PS("FALSE"),
    .CLKOUT2_DIVIDE(1),
    .CLKOUT2_DUTY_CYCLE(0.500000),
    .CLKOUT2_PHASE(0.000000),
    .CLKOUT2_USE_FINE_PS("FALSE"),
    .CLKOUT3_DIVIDE(1),
    .CLKOUT3_DUTY_CYCLE(0.500000),
    .CLKOUT3_PHASE(0.000000),
    .CLKOUT3_USE_FINE_PS("FALSE"),
    .CLKOUT4_CASCADE("FALSE"),
    .CLKOUT4_DIVIDE(1),
    .CLKOUT4_DUTY_CYCLE(0.500000),
    .CLKOUT4_PHASE(0.000000),
    .CLKOUT4_USE_FINE_PS("FALSE"),
    .CLKOUT5_DIVIDE(1),
    .CLKOUT5_DUTY_CYCLE(0.500000),
    .CLKOUT5_PHASE(0.000000),
    .CLKOUT5_USE_FINE_PS("FALSE"),
    .CLKOUT6_DIVIDE(1),
    .CLKOUT6_DUTY_CYCLE(0.500000),
    .CLKOUT6_PHASE(0.000000),
    .CLKOUT6_USE_FINE_PS("FALSE"),
    .COMPENSATION("INTERNAL"),
    .DIVCLK_DIVIDE(1),
    .IS_CLKINSEL_INVERTED(1'b0),
    .IS_PSEN_INVERTED(1'b0),
    .IS_PSINCDEC_INVERTED(1'b0),
    .IS_PWRDWN_INVERTED(1'b0),
    .IS_RST_INVERTED(1'b0),
    .REF_JITTER1(0.010000),
    .REF_JITTER2(0.010000),
    .SS_EN("FALSE"),
    .SS_MODE("CENTER_HIGH"),
    .SS_MOD_PERIOD(10000),
    .STARTUP_WAIT("FALSE")) 
    mmcm_adv_inst
       (.CLKFBIN(mmcm_fbclk_out),
        .CLKFBOUT(mmcm_fbclk_out),
        .CLKFBOUTB(NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED),
        .CLKFBSTOPPED(NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED),
        .CLKIN1(REF_CLK_I),
        .CLKIN2(1'b0),
        .CLKINSEL(1'b1),
        .CLKINSTOPPED(NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED),
        .CLKOUT0(I),
        .CLKOUT0B(NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED),
        .CLKOUT1(NLW_mmcm_adv_inst_CLKOUT1_UNCONNECTED),
        .CLKOUT1B(NLW_mmcm_adv_inst_CLKOUT1B_UNCONNECTED),
        .CLKOUT2(NLW_mmcm_adv_inst_CLKOUT2_UNCONNECTED),
        .CLKOUT2B(NLW_mmcm_adv_inst_CLKOUT2B_UNCONNECTED),
        .CLKOUT3(NLW_mmcm_adv_inst_CLKOUT3_UNCONNECTED),
        .CLKOUT3B(NLW_mmcm_adv_inst_CLKOUT3B_UNCONNECTED),
        .CLKOUT4(NLW_mmcm_adv_inst_CLKOUT4_UNCONNECTED),
        .CLKOUT5(NLW_mmcm_adv_inst_CLKOUT5_UNCONNECTED),
        .CLKOUT6(NLW_mmcm_adv_inst_CLKOUT6_UNCONNECTED),
        .DADDR(DADDR),
        .DCLK(s_axi_lite_aclk),
        .DEN(DEN),
        .DI(DI),
        .DO(DO),
        .DRDY(DRDY),
        .DWE(DWE),
        .LOCKED(LOCKED_O),
        .PSCLK(1'b0),
        .PSDONE(NLW_mmcm_adv_inst_PSDONE_UNCONNECTED),
        .PSEN(1'b0),
        .PSINCDEC(1'b0),
        .PWRDWN(1'b0),
        .RST(RST_MMCM));
  LUT2 #(
    .INIT(4'h2)) 
    \rom_addr[0]_i_1 
       (.I0(current_state[2]),
        .I1(rom_addr[0]),
        .O(\rom_addr[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h60)) 
    \rom_addr[1]_i_1 
       (.I0(rom_addr[1]),
        .I1(rom_addr[0]),
        .I2(current_state[2]),
        .O(\rom_addr[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h6A00)) 
    \rom_addr[2]_i_1 
       (.I0(rom_addr[2]),
        .I1(rom_addr[0]),
        .I2(rom_addr[1]),
        .I3(current_state[2]),
        .O(\rom_addr[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h10111001)) 
    \rom_addr[3]_i_1 
       (.I0(current_state[0]),
        .I1(current_state[3]),
        .I2(current_state[1]),
        .I3(current_state[2]),
        .I4(sen_reg),
        .O(next_rom_addr));
  LUT5 #(
    .INIT(32'h6AAA0000)) 
    \rom_addr[3]_i_2 
       (.I0(rom_addr[3]),
        .I1(rom_addr[2]),
        .I2(rom_addr[1]),
        .I3(rom_addr[0]),
        .I4(current_state[2]),
        .O(\rom_addr[3]_i_2_n_0 ));
  FDRE \rom_addr_reg[0] 
       (.C(s_axi_lite_aclk),
        .CE(next_rom_addr),
        .D(\rom_addr[0]_i_1_n_0 ),
        .Q(rom_addr[0]),
        .R(1'b0));
  FDRE \rom_addr_reg[1] 
       (.C(s_axi_lite_aclk),
        .CE(next_rom_addr),
        .D(\rom_addr[1]_i_1_n_0 ),
        .Q(rom_addr[1]),
        .R(1'b0));
  FDRE \rom_addr_reg[2] 
       (.C(s_axi_lite_aclk),
        .CE(next_rom_addr),
        .D(\rom_addr[2]_i_1_n_0 ),
        .Q(rom_addr[2]),
        .R(1'b0));
  FDRE \rom_addr_reg[3] 
       (.C(s_axi_lite_aclk),
        .CE(next_rom_addr),
        .D(\rom_addr[3]_i_2_n_0 ),
        .Q(rom_addr[3]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \rom_do[10]_i_1 
       (.I0(\rom_do[10]_i_2_n_0 ),
        .I1(rom_addr[3]),
        .I2(\slv_reg3_reg[26] ),
        .I3(rom_addr[2]),
        .I4(\slv_reg4_reg[0] ),
        .O(rom[10]));
  LUT5 #(
    .INIT(32'h00003808)) 
    \rom_do[10]_i_2 
       (.I0(\slv_reg6_reg[30] ),
        .I1(rom_addr[0]),
        .I2(rom_addr[1]),
        .I3(\slv_reg7_reg[25] [2]),
        .I4(rom_addr[2]),
        .O(\rom_do[10]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \rom_do[13]_i_1 
       (.I0(\rom_do[13]_i_2_n_0 ),
        .I1(rom_addr[3]),
        .I2(\slv_reg3_reg[29] ),
        .I3(rom_addr[2]),
        .I4(\slv_reg4_reg[3] ),
        .O(rom[13]));
  LUT5 #(
    .INIT(32'h00003808)) 
    \rom_do[13]_i_2 
       (.I0(\slv_reg7_reg[25] [0]),
        .I1(rom_addr[0]),
        .I2(rom_addr[1]),
        .I3(\slv_reg7_reg[25] [3]),
        .I4(rom_addr[2]),
        .O(\rom_do[13]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \rom_do[14]_i_1 
       (.I0(\rom_do[14]_i_2_n_0 ),
        .I1(rom_addr[3]),
        .I2(\rom_do[14]_i_3_n_0 ),
        .I3(rom_addr[2]),
        .I4(\slv_reg2_reg[30] ),
        .O(rom[14]));
  LUT5 #(
    .INIT(32'h00003808)) 
    \rom_do[14]_i_2 
       (.I0(\slv_reg7_reg[25] [1]),
        .I1(rom_addr[0]),
        .I2(rom_addr[1]),
        .I3(\slv_reg7_reg[25] [4]),
        .I4(rom_addr[2]),
        .O(\rom_do[14]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \rom_do[14]_i_3 
       (.I0(rom_addr[1]),
        .I1(Q[0]),
        .I2(rom_addr[0]),
        .I3(Q[2]),
        .O(\rom_do[14]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \rom_do[15]_i_1 
       (.I0(\rom_do[15]_i_2_n_0 ),
        .I1(rom_addr[3]),
        .I2(\rom_do[15]_i_3_n_0 ),
        .I3(rom_addr[2]),
        .I4(\slv_reg2_reg[31] ),
        .O(rom[15]));
  LUT5 #(
    .INIT(32'hB8888888)) 
    \rom_do[15]_i_2 
       (.I0(\slv_reg7_reg[25] [5]),
        .I1(rom_addr[2]),
        .I2(rom_addr[1]),
        .I3(\slv_reg7_reg[25] [6]),
        .I4(rom_addr[0]),
        .O(\rom_do[15]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \rom_do[15]_i_3 
       (.I0(rom_addr[1]),
        .I1(Q[1]),
        .I2(rom_addr[0]),
        .I3(Q[3]),
        .O(\rom_do[15]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h3004)) 
    \rom_do[23]_i_1 
       (.I0(rom_addr[3]),
        .I1(rom_addr[2]),
        .I2(rom_addr[0]),
        .I3(rom_addr[1]),
        .O(rom[23]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0018)) 
    \rom_do[24]_i_1 
       (.I0(rom_addr[1]),
        .I1(rom_addr[0]),
        .I2(rom_addr[2]),
        .I3(rom_addr[3]),
        .O(\rom_do[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hB88C)) 
    \rom_do[25]_i_1 
       (.I0(rom_addr[3]),
        .I1(rom_addr[2]),
        .I2(rom_addr[0]),
        .I3(rom_addr[1]),
        .O(rom[25]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \rom_do[27]_i_1 
       (.I0(rom_addr[3]),
        .I1(rom_addr[2]),
        .I2(rom_addr[1]),
        .I3(rom_addr[0]),
        .O(rom[27]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0412)) 
    \rom_do[28]_i_1 
       (.I0(rom_addr[3]),
        .I1(rom_addr[2]),
        .I2(rom_addr[0]),
        .I3(rom_addr[1]),
        .O(rom[28]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hAA82)) 
    \rom_do[29]_i_1 
       (.I0(rom_addr[3]),
        .I1(rom_addr[1]),
        .I2(rom_addr[0]),
        .I3(rom_addr[2]),
        .O(rom[29]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hB8CE)) 
    \rom_do[30]_i_1 
       (.I0(rom_addr[3]),
        .I1(rom_addr[2]),
        .I2(rom_addr[0]),
        .I3(rom_addr[1]),
        .O(rom[30]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h475A)) 
    \rom_do[31]_i_1 
       (.I0(rom_addr[3]),
        .I1(rom_addr[0]),
        .I2(rom_addr[2]),
        .I3(rom_addr[1]),
        .O(rom[31]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hE5B8)) 
    \rom_do[32]_i_1 
       (.I0(rom_addr[3]),
        .I1(rom_addr[0]),
        .I2(rom_addr[2]),
        .I3(rom_addr[1]),
        .O(rom[32]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hBACC)) 
    \rom_do[33]_i_1 
       (.I0(rom_addr[3]),
        .I1(rom_addr[2]),
        .I2(rom_addr[0]),
        .I3(rom_addr[1]),
        .O(rom[33]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hFCC8)) 
    \rom_do[34]_i_1 
       (.I0(rom_addr[3]),
        .I1(rom_addr[2]),
        .I2(rom_addr[0]),
        .I3(rom_addr[1]),
        .O(rom[34]));
  LUT4 #(
    .INIT(16'hFF15)) 
    \rom_do[35]_i_1 
       (.I0(rom_addr[2]),
        .I1(rom_addr[1]),
        .I2(rom_addr[0]),
        .I3(rom_addr[3]),
        .O(\rom_do[35]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0F70)) 
    \rom_do[36]_i_1 
       (.I0(rom_addr[0]),
        .I1(rom_addr[1]),
        .I2(rom_addr[3]),
        .I3(rom_addr[2]),
        .O(rom[36]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \rom_do[37]_i_1 
       (.I0(rom_addr[2]),
        .I1(rom_addr[1]),
        .I2(rom_addr[0]),
        .I3(rom_addr[3]),
        .O(\rom_do[37]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hAA80)) 
    \rom_do[38]_i_1 
       (.I0(rom_addr[3]),
        .I1(rom_addr[0]),
        .I2(rom_addr[1]),
        .I3(rom_addr[2]),
        .O(rom[38]));
  FDRE \rom_do_reg[0] 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(D[0]),
        .Q(\rom_do_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \rom_do_reg[10] 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(rom[10]),
        .Q(\rom_do_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \rom_do_reg[11] 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(D[10]),
        .Q(\rom_do_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \rom_do_reg[12] 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(D[11]),
        .Q(\rom_do_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \rom_do_reg[13] 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(rom[13]),
        .Q(\rom_do_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \rom_do_reg[14] 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(rom[14]),
        .Q(\rom_do_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \rom_do_reg[15] 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(rom[15]),
        .Q(\rom_do_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \rom_do_reg[1] 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(D[1]),
        .Q(\rom_do_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \rom_do_reg[23] 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(rom[23]),
        .Q(\rom_do_reg_n_0_[23] ),
        .R(1'b0));
  FDRE \rom_do_reg[24] 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(\rom_do[24]_i_1_n_0 ),
        .Q(\rom_do_reg_n_0_[24] ),
        .R(1'b0));
  FDRE \rom_do_reg[25] 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(rom[25]),
        .Q(\rom_do_reg_n_0_[25] ),
        .R(1'b0));
  FDRE \rom_do_reg[27] 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(rom[27]),
        .Q(\rom_do_reg_n_0_[27] ),
        .R(1'b0));
  FDRE \rom_do_reg[28] 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(rom[28]),
        .Q(\rom_do_reg_n_0_[28] ),
        .R(1'b0));
  FDRE \rom_do_reg[29] 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(rom[29]),
        .Q(\rom_do_reg_n_0_[29] ),
        .R(1'b0));
  FDRE \rom_do_reg[2] 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(D[2]),
        .Q(\rom_do_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \rom_do_reg[30] 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(rom[30]),
        .Q(\rom_do_reg_n_0_[30] ),
        .R(1'b0));
  FDRE \rom_do_reg[31] 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(rom[31]),
        .Q(\rom_do_reg_n_0_[31] ),
        .R(1'b0));
  FDRE \rom_do_reg[32] 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(rom[32]),
        .Q(p_0_in[0]),
        .R(1'b0));
  FDRE \rom_do_reg[33] 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(rom[33]),
        .Q(p_0_in[1]),
        .R(1'b0));
  FDRE \rom_do_reg[34] 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(rom[34]),
        .Q(p_0_in[2]),
        .R(1'b0));
  FDRE \rom_do_reg[35] 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(\rom_do[35]_i_1_n_0 ),
        .Q(p_0_in[3]),
        .R(1'b0));
  FDRE \rom_do_reg[36] 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(rom[36]),
        .Q(p_0_in[4]),
        .R(1'b0));
  FDRE \rom_do_reg[37] 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(\rom_do[37]_i_1_n_0 ),
        .Q(p_0_in[5]),
        .R(1'b0));
  FDRE \rom_do_reg[38] 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(rom[38]),
        .Q(p_0_in[6]),
        .R(1'b0));
  FDRE \rom_do_reg[3] 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(D[3]),
        .Q(\rom_do_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \rom_do_reg[4] 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(D[4]),
        .Q(\rom_do_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \rom_do_reg[5] 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(D[5]),
        .Q(\rom_do_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \rom_do_reg[6] 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(D[6]),
        .Q(\rom_do_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \rom_do_reg[7] 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(D[7]),
        .Q(\rom_do_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \rom_do_reg[8] 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(D[8]),
        .Q(\rom_do_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \rom_do_reg[9] 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(D[9]),
        .Q(\rom_do_reg_n_0_[9] ),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h7)) 
    \state_count[0]_i_1 
       (.I0(current_state[2]),
        .I1(state_count[0]),
        .O(\state_count[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h82)) 
    \state_count[1]_i_1 
       (.I0(current_state[2]),
        .I1(state_count[1]),
        .I2(state_count[0]),
        .O(\state_count[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hDDD7)) 
    \state_count[2]_i_1 
       (.I0(current_state[2]),
        .I1(state_count[2]),
        .I2(state_count[0]),
        .I3(state_count[1]),
        .O(\state_count[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4004)) 
    \state_count[3]_i_1 
       (.I0(current_state[3]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(current_state[2]),
        .O(\state_count[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hDDDDDDD7)) 
    \state_count[3]_i_2 
       (.I0(current_state[2]),
        .I1(state_count[3]),
        .I2(state_count[2]),
        .I3(state_count[1]),
        .I4(state_count[0]),
        .O(\state_count[3]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \state_count_reg[0] 
       (.C(s_axi_lite_aclk),
        .CE(\state_count[3]_i_1_n_0 ),
        .D(\state_count[0]_i_1_n_0 ),
        .Q(state_count[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_count_reg[1] 
       (.C(s_axi_lite_aclk),
        .CE(\state_count[3]_i_1_n_0 ),
        .D(\state_count[1]_i_1_n_0 ),
        .Q(state_count[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \state_count_reg[2] 
       (.C(s_axi_lite_aclk),
        .CE(\state_count[3]_i_1_n_0 ),
        .D(\state_count[2]_i_1_n_0 ),
        .Q(state_count[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \state_count_reg[3] 
       (.C(s_axi_lite_aclk),
        .CE(\state_count[3]_i_1_n_0 ),
        .D(\state_count[3]_i_2_n_0 ),
        .Q(state_count[3]),
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
