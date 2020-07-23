// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2.2 (win64) Build 2348494 Mon Oct  1 18:25:44 MDT 2018
// Date        : Mon Jan 13 20:55:51 2020
// Host        : dig1-ro running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               D:/Ionut/Camy/PublicGit/repo/local/ip/AXI_GammaCorrection/src/design_1/ip/design_1_axi4stream_vip_0_0/design_1_axi4stream_vip_0_0_stub.v
// Design      : design_1_axi4stream_vip_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "axi4stream_vip_v1_1_3_top,Vivado 2018.2.2" *)
module design_1_axi4stream_vip_0_0(aclk, aresetn, s_axis_tvalid, s_axis_tready, 
  s_axis_tdata, s_axis_tlast, s_axis_tuser)
/* synthesis syn_black_box black_box_pad_pin="aclk,aresetn,s_axis_tvalid[0:0],s_axis_tready[0:0],s_axis_tdata[23:0],s_axis_tlast[0:0],s_axis_tuser[0:0]" */;
  input aclk;
  input aresetn;
  input [0:0]s_axis_tvalid;
  output [0:0]s_axis_tready;
  input [23:0]s_axis_tdata;
  input [0:0]s_axis_tlast;
  input [0:0]s_axis_tuser;
endmodule
