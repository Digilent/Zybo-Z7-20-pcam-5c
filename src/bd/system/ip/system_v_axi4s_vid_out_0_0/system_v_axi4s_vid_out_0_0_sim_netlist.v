// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
// Date        : Tue Dec 19 13:29:18 2017
// Host        : WK73 running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode funcsim
//               C:/sam_work/git/digilent/Zybo-Z7-20-pcam-5c/src/bd/system/ip/system_v_axi4s_vid_out_0_0/system_v_axi4s_vid_out_0_0_sim_netlist.v
// Design      : system_v_axi4s_vid_out_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "system_v_axi4s_vid_out_0_0,v_axi4s_vid_out_v4_0_5,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "v_axi4s_vid_out_v4_0_5,Vivado 2016.4" *) 
(* NotValidForBitStream *)
module system_v_axi4s_vid_out_0_0
   (aclk,
    aclken,
    aresetn,
    s_axis_video_tdata,
    s_axis_video_tvalid,
    s_axis_video_tready,
    s_axis_video_tuser,
    s_axis_video_tlast,
    fid,
    vid_io_out_clk,
    vid_io_out_ce,
    vid_io_out_reset,
    vid_active_video,
    vid_vsync,
    vid_hsync,
    vid_vblank,
    vid_hblank,
    vid_field_id,
    vid_data,
    vtg_vsync,
    vtg_hsync,
    vtg_vblank,
    vtg_hblank,
    vtg_active_video,
    vtg_field_id,
    vtg_ce,
    locked,
    overflow,
    underflow,
    status);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk_intf CLK" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clockenable:1.0 aclken_intf CE" *) input aclken;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn_intf RST" *) input aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 video_in TDATA" *) input [23:0]s_axis_video_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 video_in TVALID" *) input s_axis_video_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 video_in TREADY" *) output s_axis_video_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 video_in TUSER" *) input s_axis_video_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 video_in TLAST" *) input s_axis_video_tlast;
  input fid;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 vid_io_out_clk_intf CLK" *) input vid_io_out_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clockenable:1.0 vid_io_out_ce_intf CE" *) input vid_io_out_ce;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 vid_io_out_reset_intf RST" *) input vid_io_out_reset;
  (* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 vid_io_out ACTIVE_VIDEO" *) output vid_active_video;
  (* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 vid_io_out VSYNC" *) output vid_vsync;
  (* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 vid_io_out HSYNC" *) output vid_hsync;
  (* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 vid_io_out VBLANK" *) output vid_vblank;
  (* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 vid_io_out HBLANK" *) output vid_hblank;
  (* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 vid_io_out FIELD" *) output vid_field_id;
  (* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 vid_io_out DATA" *) output [23:0]vid_data;
  (* X_INTERFACE_INFO = "xilinx.com:interface:video_timing:2.0 vtiming_in VSYNC" *) input vtg_vsync;
  (* X_INTERFACE_INFO = "xilinx.com:interface:video_timing:2.0 vtiming_in HSYNC" *) input vtg_hsync;
  (* X_INTERFACE_INFO = "xilinx.com:interface:video_timing:2.0 vtiming_in VBLANK" *) input vtg_vblank;
  (* X_INTERFACE_INFO = "xilinx.com:interface:video_timing:2.0 vtiming_in HBLANK" *) input vtg_hblank;
  (* X_INTERFACE_INFO = "xilinx.com:interface:video_timing:2.0 vtiming_in ACTIVE_VIDEO" *) input vtg_active_video;
  (* X_INTERFACE_INFO = "xilinx.com:interface:video_timing:2.0 vtiming_in FIELD" *) input vtg_field_id;
  output vtg_ce;
  output locked;
  output overflow;
  output underflow;
  output [31:0]status;

  wire aclk;
  wire aclken;
  wire aresetn;
  wire fid;
  wire locked;
  wire overflow;
  wire [23:0]s_axis_video_tdata;
  wire s_axis_video_tlast;
  wire s_axis_video_tready;
  wire s_axis_video_tuser;
  wire s_axis_video_tvalid;
  wire [31:0]status;
  wire underflow;
  wire vid_active_video;
  wire [23:0]vid_data;
  wire vid_field_id;
  wire vid_hblank;
  wire vid_hsync;
  wire vid_io_out_ce;
  wire vid_io_out_clk;
  wire vid_io_out_reset;
  wire vid_vblank;
  wire vid_vsync;
  wire vtg_active_video;
  wire vtg_ce;
  wire vtg_field_id;
  wire vtg_hblank;
  wire vtg_hsync;
  wire vtg_vblank;
  wire vtg_vsync;

  (* C_ADDR_WIDTH = "10" *) 
  (* C_COMPONENTS_PER_PIXEL = "3" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_HAS_ASYNC_CLK = "1" *) 
  (* C_HYSTERESIS_LEVEL = "12" *) 
  (* C_NATIVE_COMPONENT_WIDTH = "8" *) 
  (* C_NATIVE_DATA_WIDTH = "24" *) 
  (* C_PIXELS_PER_CLOCK = "1" *) 
  (* C_SYNC_LOCK_THRESHOLD = "4" *) 
  (* C_S_AXIS_COMPONENT_WIDTH = "8" *) 
  (* C_S_AXIS_TDATA_WIDTH = "24" *) 
  (* C_VTG_MASTER_SLAVE = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  system_v_axi4s_vid_out_0_0_v_axi4s_vid_out_v4_0_5 inst
       (.aclk(aclk),
        .aclken(aclken),
        .aresetn(aresetn),
        .fid(fid),
        .locked(locked),
        .overflow(overflow),
        .s_axis_video_tdata(s_axis_video_tdata),
        .s_axis_video_tlast(s_axis_video_tlast),
        .s_axis_video_tready(s_axis_video_tready),
        .s_axis_video_tuser(s_axis_video_tuser),
        .s_axis_video_tvalid(s_axis_video_tvalid),
        .status(status),
        .underflow(underflow),
        .vid_active_video(vid_active_video),
        .vid_data(vid_data),
        .vid_field_id(vid_field_id),
        .vid_hblank(vid_hblank),
        .vid_hsync(vid_hsync),
        .vid_io_out_ce(vid_io_out_ce),
        .vid_io_out_clk(vid_io_out_clk),
        .vid_io_out_reset(vid_io_out_reset),
        .vid_vblank(vid_vblank),
        .vid_vsync(vid_vsync),
        .vtg_active_video(vtg_active_video),
        .vtg_ce(vtg_ce),
        .vtg_field_id(vtg_field_id),
        .vtg_hblank(vtg_hblank),
        .vtg_hsync(vtg_hsync),
        .vtg_vblank(vtg_vblank),
        .vtg_vsync(vtg_vsync));
endmodule

(* C_ADDR_WIDTH = "10" *) (* C_COMPONENTS_PER_PIXEL = "3" *) (* C_FAMILY = "zynq" *) 
(* C_HAS_ASYNC_CLK = "1" *) (* C_HYSTERESIS_LEVEL = "12" *) (* C_NATIVE_COMPONENT_WIDTH = "8" *) 
(* C_NATIVE_DATA_WIDTH = "24" *) (* C_PIXELS_PER_CLOCK = "1" *) (* C_SYNC_LOCK_THRESHOLD = "4" *) 
(* C_S_AXIS_COMPONENT_WIDTH = "8" *) (* C_S_AXIS_TDATA_WIDTH = "24" *) (* C_VTG_MASTER_SLAVE = "1" *) 
(* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "v_axi4s_vid_out_v4_0_5" *) 
module system_v_axi4s_vid_out_0_0_v_axi4s_vid_out_v4_0_5
   (aclk,
    aclken,
    aresetn,
    s_axis_video_tdata,
    s_axis_video_tvalid,
    s_axis_video_tready,
    s_axis_video_tuser,
    s_axis_video_tlast,
    fid,
    vid_io_out_clk,
    vid_io_out_ce,
    vid_io_out_reset,
    vid_active_video,
    vid_vsync,
    vid_hsync,
    vid_vblank,
    vid_hblank,
    vid_field_id,
    vid_data,
    vtg_vsync,
    vtg_hsync,
    vtg_vblank,
    vtg_hblank,
    vtg_active_video,
    vtg_field_id,
    vtg_ce,
    locked,
    overflow,
    underflow,
    status);
  input aclk;
  input aclken;
  input aresetn;
  input [23:0]s_axis_video_tdata;
  input s_axis_video_tvalid;
  output s_axis_video_tready;
  input s_axis_video_tuser;
  input s_axis_video_tlast;
  input fid;
  input vid_io_out_clk;
  input vid_io_out_ce;
  input vid_io_out_reset;
  output vid_active_video;
  output vid_vsync;
  output vid_hsync;
  output vid_vblank;
  output vid_hblank;
  output vid_field_id;
  output [23:0]vid_data;
  input vtg_vsync;
  input vtg_hsync;
  input vtg_vblank;
  input vtg_hblank;
  input vtg_active_video;
  input vtg_field_id;
  output vtg_ce;
  output locked;
  output overflow;
  output underflow;
  output [31:0]status;

  wire \<const0> ;
  wire COUPLER_INST_n_41;
  wire SYNC_INST_n_3;
  wire aclk;
  wire aclken;
  wire aresetn;
  wire fid;
  wire [23:0]fifo_data;
  wire fifo_empty;
  wire fifo_eol;
  wire fifo_eol_dly;
  wire fifo_fid;
  wire [10:2]fifo_level_rd;
  wire fifo_sof;
  wire fifo_sof_cnt;
  wire fifo_sof_dly;
  wire fivid_reset_full_frame;
  wire in_data_mux;
  wire locked;
  wire overflow;
  wire [23:0]s_axis_video_tdata;
  wire s_axis_video_tlast;
  wire s_axis_video_tready;
  wire s_axis_video_tuser;
  wire s_axis_video_tvalid;
  wire [25:0]\^status ;
  wire underflow;
  wire vid_active_video;
  wire [23:0]vid_data;
  wire vid_field_id;
  wire vid_hblank;
  wire vid_hsync;
  wire vid_io_out_ce;
  wire vid_io_out_clk;
  wire vid_io_out_reset;
  wire vid_vblank;
  wire vid_vsync;
  wire vtg_active_video;
  wire vtg_field_id;
  wire vtg_hblank;
  wire vtg_hsync;
  wire vtg_vblank;
  wire vtg_vsync;

  assign status[31] = \<const0> ;
  assign status[30] = \<const0> ;
  assign status[29] = \<const0> ;
  assign status[28] = \<const0> ;
  assign status[27] = \<const0> ;
  assign status[26] = \<const0> ;
  assign status[25:16] = \^status [25:16];
  assign status[15] = \<const0> ;
  assign status[14:0] = \^status [14:0];
  assign vtg_ce = vid_io_out_ce;
  system_v_axi4s_vid_out_0_0_v_axi4s_vid_out_v4_0_5_coupler COUPLER_INST
       (.E(in_data_mux),
        .aclk(aclk),
        .aclken(aclken),
        .aresetn(aresetn),
        .din({fid,s_axis_video_tuser,s_axis_video_tlast,s_axis_video_tdata}),
        .dout({fifo_fid,fifo_sof,fifo_eol,fifo_data}),
        .empty(fifo_empty),
        .\fifo_eol_cnt_dly_reg[12] (fifo_sof_cnt),
        .fifo_eol_dly(fifo_eol_dly),
        .fifo_eol_re_dly_reg(COUPLER_INST_n_41),
        .fifo_sof_dly(fifo_sof_dly),
        .overflow(overflow),
        .rd_data_count(fifo_level_rd),
        .s_axis_video_tready(s_axis_video_tready),
        .s_axis_video_tvalid(s_axis_video_tvalid),
        .underflow(underflow),
        .vid_io_out_ce(vid_io_out_ce),
        .vid_io_out_clk(vid_io_out_clk),
        .vid_io_out_reset(vid_io_out_reset));
  system_v_axi4s_vid_out_0_0_v_axi4s_vid_out_v4_0_5_formatter FORMATTER_INST
       (.D(fifo_data),
        .E(in_data_mux),
        .\FSM_sequential_state_reg[0] (SYNC_INST_n_3),
        .fivid_reset_full_frame(fivid_reset_full_frame),
        .locked(locked),
        .vid_active_video(vid_active_video),
        .vid_data(vid_data),
        .vid_field_id(vid_field_id),
        .vid_hblank(vid_hblank),
        .vid_hsync(vid_hsync),
        .vid_io_out_ce(vid_io_out_ce),
        .vid_io_out_clk(vid_io_out_clk),
        .vid_io_out_reset(vid_io_out_reset),
        .vid_vblank(vid_vblank),
        .vid_vsync(vid_vsync),
        .vtg_active_video(vtg_active_video),
        .vtg_field_id(vtg_field_id),
        .vtg_hblank(vtg_hblank),
        .vtg_hsync(vtg_hsync),
        .vtg_vblank(vtg_vblank),
        .vtg_vsync(vtg_vsync));
  GND GND
       (.G(\<const0> ));
  system_v_axi4s_vid_out_0_0_v_axi4s_vid_out_v4_0_5_sync SYNC_INST
       (.\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram (COUPLER_INST_n_41),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 (fifo_sof_cnt),
        .E(in_data_mux),
        .dout({fifo_fid,fifo_sof,fifo_eol}),
        .empty(fifo_empty),
        .fifo_eol_dly(fifo_eol_dly),
        .fifo_sof_dly(fifo_sof_dly),
        .fivid_reset_full_frame(fivid_reset_full_frame),
        .\in_data_mux_reg[0] (SYNC_INST_n_3),
        .locked(locked),
        .rd_data_count(fifo_level_rd),
        .status({\^status [25:16],\^status [14:0]}),
        .vid_io_out_ce(vid_io_out_ce),
        .vid_io_out_clk(vid_io_out_clk),
        .vid_io_out_reset(vid_io_out_reset),
        .vtg_active_video(vtg_active_video),
        .vtg_field_id(vtg_field_id),
        .vtg_vsync(vtg_vsync));
endmodule

(* ORIG_REF_NAME = "v_axi4s_vid_out_v4_0_5_coupler" *) 
module system_v_axi4s_vid_out_0_0_v_axi4s_vid_out_v4_0_5_coupler
   (dout,
    overflow,
    empty,
    underflow,
    rd_data_count,
    \fifo_eol_cnt_dly_reg[12] ,
    s_axis_video_tready,
    fifo_eol_re_dly_reg,
    aclk,
    vid_io_out_clk,
    din,
    E,
    vid_io_out_ce,
    fifo_sof_dly,
    aclken,
    s_axis_video_tvalid,
    aresetn,
    fifo_eol_dly,
    vid_io_out_reset);
  output [26:0]dout;
  output overflow;
  output empty;
  output underflow;
  output [8:0]rd_data_count;
  output [0:0]\fifo_eol_cnt_dly_reg[12] ;
  output s_axis_video_tready;
  output fifo_eol_re_dly_reg;
  input aclk;
  input vid_io_out_clk;
  input [26:0]din;
  input [0:0]E;
  input vid_io_out_ce;
  input fifo_sof_dly;
  input aclken;
  input s_axis_video_tvalid;
  input aresetn;
  input fifo_eol_dly;
  input vid_io_out_reset;

  wire [0:0]E;
  wire FIFO_INST_i_1_n_0;
  wire aclk;
  wire aclken;
  wire aresetn;
  wire [26:0]din;
  wire [26:0]dout;
  wire empty;
  wire [0:0]\fifo_eol_cnt_dly_reg[12] ;
  wire fifo_eol_dly;
  wire fifo_eol_re_dly_reg;
  wire fifo_sof_dly;
  wire full_i;
  wire overflow;
  wire [8:0]rd_data_count;
  wire s_axis_video_tready;
  wire s_axis_video_tvalid;
  wire underflow;
  wire vid_io_out_ce;
  wire vid_io_out_clk;
  wire vid_io_out_reset;
  wire wr_en_i;
  wire wr_rst_busy_i;
  wire NLW_FIFO_INST_almost_empty_UNCONNECTED;
  wire NLW_FIFO_INST_almost_full_UNCONNECTED;
  wire NLW_FIFO_INST_axi_ar_dbiterr_UNCONNECTED;
  wire NLW_FIFO_INST_axi_ar_overflow_UNCONNECTED;
  wire NLW_FIFO_INST_axi_ar_prog_empty_UNCONNECTED;
  wire NLW_FIFO_INST_axi_ar_prog_full_UNCONNECTED;
  wire NLW_FIFO_INST_axi_ar_sbiterr_UNCONNECTED;
  wire NLW_FIFO_INST_axi_ar_underflow_UNCONNECTED;
  wire NLW_FIFO_INST_axi_aw_dbiterr_UNCONNECTED;
  wire NLW_FIFO_INST_axi_aw_overflow_UNCONNECTED;
  wire NLW_FIFO_INST_axi_aw_prog_empty_UNCONNECTED;
  wire NLW_FIFO_INST_axi_aw_prog_full_UNCONNECTED;
  wire NLW_FIFO_INST_axi_aw_sbiterr_UNCONNECTED;
  wire NLW_FIFO_INST_axi_aw_underflow_UNCONNECTED;
  wire NLW_FIFO_INST_axi_b_dbiterr_UNCONNECTED;
  wire NLW_FIFO_INST_axi_b_overflow_UNCONNECTED;
  wire NLW_FIFO_INST_axi_b_prog_empty_UNCONNECTED;
  wire NLW_FIFO_INST_axi_b_prog_full_UNCONNECTED;
  wire NLW_FIFO_INST_axi_b_sbiterr_UNCONNECTED;
  wire NLW_FIFO_INST_axi_b_underflow_UNCONNECTED;
  wire NLW_FIFO_INST_axi_r_dbiterr_UNCONNECTED;
  wire NLW_FIFO_INST_axi_r_overflow_UNCONNECTED;
  wire NLW_FIFO_INST_axi_r_prog_empty_UNCONNECTED;
  wire NLW_FIFO_INST_axi_r_prog_full_UNCONNECTED;
  wire NLW_FIFO_INST_axi_r_sbiterr_UNCONNECTED;
  wire NLW_FIFO_INST_axi_r_underflow_UNCONNECTED;
  wire NLW_FIFO_INST_axi_w_dbiterr_UNCONNECTED;
  wire NLW_FIFO_INST_axi_w_overflow_UNCONNECTED;
  wire NLW_FIFO_INST_axi_w_prog_empty_UNCONNECTED;
  wire NLW_FIFO_INST_axi_w_prog_full_UNCONNECTED;
  wire NLW_FIFO_INST_axi_w_sbiterr_UNCONNECTED;
  wire NLW_FIFO_INST_axi_w_underflow_UNCONNECTED;
  wire NLW_FIFO_INST_axis_dbiterr_UNCONNECTED;
  wire NLW_FIFO_INST_axis_overflow_UNCONNECTED;
  wire NLW_FIFO_INST_axis_prog_empty_UNCONNECTED;
  wire NLW_FIFO_INST_axis_prog_full_UNCONNECTED;
  wire NLW_FIFO_INST_axis_sbiterr_UNCONNECTED;
  wire NLW_FIFO_INST_axis_underflow_UNCONNECTED;
  wire NLW_FIFO_INST_dbiterr_UNCONNECTED;
  wire NLW_FIFO_INST_m_axi_arvalid_UNCONNECTED;
  wire NLW_FIFO_INST_m_axi_awvalid_UNCONNECTED;
  wire NLW_FIFO_INST_m_axi_bready_UNCONNECTED;
  wire NLW_FIFO_INST_m_axi_rready_UNCONNECTED;
  wire NLW_FIFO_INST_m_axi_wlast_UNCONNECTED;
  wire NLW_FIFO_INST_m_axi_wvalid_UNCONNECTED;
  wire NLW_FIFO_INST_m_axis_tlast_UNCONNECTED;
  wire NLW_FIFO_INST_m_axis_tvalid_UNCONNECTED;
  wire NLW_FIFO_INST_prog_empty_UNCONNECTED;
  wire NLW_FIFO_INST_prog_full_UNCONNECTED;
  wire NLW_FIFO_INST_rd_rst_busy_UNCONNECTED;
  wire NLW_FIFO_INST_s_axi_arready_UNCONNECTED;
  wire NLW_FIFO_INST_s_axi_awready_UNCONNECTED;
  wire NLW_FIFO_INST_s_axi_bvalid_UNCONNECTED;
  wire NLW_FIFO_INST_s_axi_rlast_UNCONNECTED;
  wire NLW_FIFO_INST_s_axi_rvalid_UNCONNECTED;
  wire NLW_FIFO_INST_s_axi_wready_UNCONNECTED;
  wire NLW_FIFO_INST_s_axis_tready_UNCONNECTED;
  wire NLW_FIFO_INST_sbiterr_UNCONNECTED;
  wire NLW_FIFO_INST_valid_UNCONNECTED;
  wire NLW_FIFO_INST_wr_ack_UNCONNECTED;
  wire [4:0]NLW_FIFO_INST_axi_ar_data_count_UNCONNECTED;
  wire [4:0]NLW_FIFO_INST_axi_ar_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_FIFO_INST_axi_ar_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_FIFO_INST_axi_aw_data_count_UNCONNECTED;
  wire [4:0]NLW_FIFO_INST_axi_aw_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_FIFO_INST_axi_aw_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_FIFO_INST_axi_b_data_count_UNCONNECTED;
  wire [4:0]NLW_FIFO_INST_axi_b_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_FIFO_INST_axi_b_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_FIFO_INST_axi_r_data_count_UNCONNECTED;
  wire [10:0]NLW_FIFO_INST_axi_r_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_FIFO_INST_axi_r_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_FIFO_INST_axi_w_data_count_UNCONNECTED;
  wire [10:0]NLW_FIFO_INST_axi_w_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_FIFO_INST_axi_w_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_FIFO_INST_axis_data_count_UNCONNECTED;
  wire [10:0]NLW_FIFO_INST_axis_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_FIFO_INST_axis_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_FIFO_INST_data_count_UNCONNECTED;
  wire [31:0]NLW_FIFO_INST_m_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_FIFO_INST_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_FIFO_INST_m_axi_arcache_UNCONNECTED;
  wire [0:0]NLW_FIFO_INST_m_axi_arid_UNCONNECTED;
  wire [7:0]NLW_FIFO_INST_m_axi_arlen_UNCONNECTED;
  wire [0:0]NLW_FIFO_INST_m_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_FIFO_INST_m_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_FIFO_INST_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_FIFO_INST_m_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_FIFO_INST_m_axi_arsize_UNCONNECTED;
  wire [0:0]NLW_FIFO_INST_m_axi_aruser_UNCONNECTED;
  wire [31:0]NLW_FIFO_INST_m_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_FIFO_INST_m_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_FIFO_INST_m_axi_awcache_UNCONNECTED;
  wire [0:0]NLW_FIFO_INST_m_axi_awid_UNCONNECTED;
  wire [7:0]NLW_FIFO_INST_m_axi_awlen_UNCONNECTED;
  wire [0:0]NLW_FIFO_INST_m_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_FIFO_INST_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_FIFO_INST_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_FIFO_INST_m_axi_awregion_UNCONNECTED;
  wire [2:0]NLW_FIFO_INST_m_axi_awsize_UNCONNECTED;
  wire [0:0]NLW_FIFO_INST_m_axi_awuser_UNCONNECTED;
  wire [63:0]NLW_FIFO_INST_m_axi_wdata_UNCONNECTED;
  wire [0:0]NLW_FIFO_INST_m_axi_wid_UNCONNECTED;
  wire [7:0]NLW_FIFO_INST_m_axi_wstrb_UNCONNECTED;
  wire [0:0]NLW_FIFO_INST_m_axi_wuser_UNCONNECTED;
  wire [7:0]NLW_FIFO_INST_m_axis_tdata_UNCONNECTED;
  wire [0:0]NLW_FIFO_INST_m_axis_tdest_UNCONNECTED;
  wire [0:0]NLW_FIFO_INST_m_axis_tid_UNCONNECTED;
  wire [0:0]NLW_FIFO_INST_m_axis_tkeep_UNCONNECTED;
  wire [0:0]NLW_FIFO_INST_m_axis_tstrb_UNCONNECTED;
  wire [3:0]NLW_FIFO_INST_m_axis_tuser_UNCONNECTED;
  wire [1:0]NLW_FIFO_INST_rd_data_count_UNCONNECTED;
  wire [0:0]NLW_FIFO_INST_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_FIFO_INST_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_FIFO_INST_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_FIFO_INST_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_FIFO_INST_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_FIFO_INST_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_FIFO_INST_s_axi_ruser_UNCONNECTED;
  wire [10:0]NLW_FIFO_INST_wr_data_count_UNCONNECTED;

  (* C_ADD_NGC_CONSTRAINT = "0" *) 
  (* C_APPLICATION_TYPE_AXIS = "0" *) 
  (* C_APPLICATION_TYPE_RACH = "0" *) 
  (* C_APPLICATION_TYPE_RDCH = "0" *) 
  (* C_APPLICATION_TYPE_WACH = "0" *) 
  (* C_APPLICATION_TYPE_WDCH = "0" *) 
  (* C_APPLICATION_TYPE_WRCH = "0" *) 
  (* C_AXIS_TDATA_WIDTH = "8" *) 
  (* C_AXIS_TDEST_WIDTH = "1" *) 
  (* C_AXIS_TID_WIDTH = "1" *) 
  (* C_AXIS_TKEEP_WIDTH = "1" *) 
  (* C_AXIS_TSTRB_WIDTH = "1" *) 
  (* C_AXIS_TUSER_WIDTH = "4" *) 
  (* C_AXIS_TYPE = "0" *) 
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "64" *) 
  (* C_AXI_ID_WIDTH = "1" *) 
  (* C_AXI_LEN_WIDTH = "8" *) 
  (* C_AXI_LOCK_WIDTH = "1" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_COMMON_CLOCK = "0" *) 
  (* C_COUNT_TYPE = "0" *) 
  (* C_DATA_COUNT_WIDTH = "11" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "27" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "32" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "27" *) 
  (* C_ENABLE_RLOCS = "0" *) 
  (* C_ENABLE_RST_SYNC = "1" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_ERROR_INJECTION_TYPE = "0" *) 
  (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_FULL_FLAGS_RST_VAL = "1" *) 
  (* C_HAS_ALMOST_EMPTY = "0" *) 
  (* C_HAS_ALMOST_FULL = "0" *) 
  (* C_HAS_AXIS_TDATA = "1" *) 
  (* C_HAS_AXIS_TDEST = "0" *) 
  (* C_HAS_AXIS_TID = "0" *) 
  (* C_HAS_AXIS_TKEEP = "0" *) 
  (* C_HAS_AXIS_TLAST = "0" *) 
  (* C_HAS_AXIS_TREADY = "1" *) 
  (* C_HAS_AXIS_TSTRB = "0" *) 
  (* C_HAS_AXIS_TUSER = "1" *) 
  (* C_HAS_AXI_ARUSER = "0" *) 
  (* C_HAS_AXI_AWUSER = "0" *) 
  (* C_HAS_AXI_BUSER = "0" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_AXI_RD_CHANNEL = "1" *) 
  (* C_HAS_AXI_RUSER = "0" *) 
  (* C_HAS_AXI_WR_CHANNEL = "1" *) 
  (* C_HAS_AXI_WUSER = "0" *) 
  (* C_HAS_BACKUP = "0" *) 
  (* C_HAS_DATA_COUNT = "0" *) 
  (* C_HAS_DATA_COUNTS_AXIS = "0" *) 
  (* C_HAS_DATA_COUNTS_RACH = "0" *) 
  (* C_HAS_DATA_COUNTS_RDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WACH = "0" *) 
  (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WRCH = "0" *) 
  (* C_HAS_INT_CLK = "0" *) 
  (* C_HAS_MASTER_CE = "0" *) 
  (* C_HAS_MEMINIT_FILE = "0" *) 
  (* C_HAS_OVERFLOW = "1" *) 
  (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
  (* C_HAS_PROG_FLAGS_RACH = "0" *) 
  (* C_HAS_PROG_FLAGS_RDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WACH = "0" *) 
  (* C_HAS_PROG_FLAGS_WDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WRCH = "0" *) 
  (* C_HAS_RD_DATA_COUNT = "1" *) 
  (* C_HAS_RD_RST = "0" *) 
  (* C_HAS_RST = "1" *) 
  (* C_HAS_SLAVE_CE = "0" *) 
  (* C_HAS_SRST = "0" *) 
  (* C_HAS_UNDERFLOW = "1" *) 
  (* C_HAS_VALID = "1" *) 
  (* C_HAS_WR_ACK = "0" *) 
  (* C_HAS_WR_DATA_COUNT = "1" *) 
  (* C_HAS_WR_RST = "0" *) 
  (* C_IMPLEMENTATION_TYPE = "2" *) 
  (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WRCH = "1" *) 
  (* C_INIT_WR_PNTR_VAL = "0" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_MEMORY_TYPE = "1" *) 
  (* C_MIF_FILE_NAME = "BlankString" *) 
  (* C_MSGON_VAL = "1" *) 
  (* C_OPTIMIZATION_MODE = "0" *) 
  (* C_OVERFLOW_LOW = "0" *) 
  (* C_POWER_SAVING_MODE = "0" *) 
  (* C_PRELOAD_LATENCY = "0" *) 
  (* C_PRELOAD_REGS = "1" *) 
  (* C_PRIM_FIFO_TYPE = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "1kx18" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "4" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "5" *) 
  (* C_PROG_EMPTY_TYPE = "0" *) 
  (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
  (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "1022" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "11" *) 
  (* C_RD_DEPTH = "1024" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "10" *) 
  (* C_REG_SLICE_MODE_AXIS = "0" *) 
  (* C_REG_SLICE_MODE_RACH = "0" *) 
  (* C_REG_SLICE_MODE_RDCH = "0" *) 
  (* C_REG_SLICE_MODE_WACH = "0" *) 
  (* C_REG_SLICE_MODE_WDCH = "0" *) 
  (* C_REG_SLICE_MODE_WRCH = "0" *) 
  (* C_SELECT_XPM = "0" *) 
  (* C_SYNCHRONIZER_STAGE = "2" *) 
  (* C_UNDERFLOW_LOW = "0" *) 
  (* C_USE_COMMON_OVERFLOW = "0" *) 
  (* C_USE_COMMON_UNDERFLOW = "0" *) 
  (* C_USE_DEFAULT_SETTINGS = "0" *) 
  (* C_USE_DOUT_RST = "1" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_ECC_AXIS = "0" *) 
  (* C_USE_ECC_RACH = "0" *) 
  (* C_USE_ECC_RDCH = "0" *) 
  (* C_USE_ECC_WACH = "0" *) 
  (* C_USE_ECC_WDCH = "0" *) 
  (* C_USE_ECC_WRCH = "0" *) 
  (* C_USE_EMBEDDED_REG = "1" *) 
  (* C_USE_FIFO16_FLAGS = "0" *) 
  (* C_USE_FWFT_DATA_COUNT = "1" *) 
  (* C_USE_PIPELINE_REG = "0" *) 
  (* C_VALID_LOW = "0" *) 
  (* C_WACH_TYPE = "0" *) 
  (* C_WDCH_TYPE = "0" *) 
  (* C_WRCH_TYPE = "0" *) 
  (* C_WR_ACK_LOW = "0" *) 
  (* C_WR_DATA_COUNT_WIDTH = "11" *) 
  (* C_WR_DEPTH = "1024" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "10" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  system_v_axi4s_vid_out_0_0_fifo_generator_v13_1_3 FIFO_INST
       (.almost_empty(NLW_FIFO_INST_almost_empty_UNCONNECTED),
        .almost_full(NLW_FIFO_INST_almost_full_UNCONNECTED),
        .axi_ar_data_count(NLW_FIFO_INST_axi_ar_data_count_UNCONNECTED[4:0]),
        .axi_ar_dbiterr(NLW_FIFO_INST_axi_ar_dbiterr_UNCONNECTED),
        .axi_ar_injectdbiterr(1'b0),
        .axi_ar_injectsbiterr(1'b0),
        .axi_ar_overflow(NLW_FIFO_INST_axi_ar_overflow_UNCONNECTED),
        .axi_ar_prog_empty(NLW_FIFO_INST_axi_ar_prog_empty_UNCONNECTED),
        .axi_ar_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_prog_full(NLW_FIFO_INST_axi_ar_prog_full_UNCONNECTED),
        .axi_ar_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_rd_data_count(NLW_FIFO_INST_axi_ar_rd_data_count_UNCONNECTED[4:0]),
        .axi_ar_sbiterr(NLW_FIFO_INST_axi_ar_sbiterr_UNCONNECTED),
        .axi_ar_underflow(NLW_FIFO_INST_axi_ar_underflow_UNCONNECTED),
        .axi_ar_wr_data_count(NLW_FIFO_INST_axi_ar_wr_data_count_UNCONNECTED[4:0]),
        .axi_aw_data_count(NLW_FIFO_INST_axi_aw_data_count_UNCONNECTED[4:0]),
        .axi_aw_dbiterr(NLW_FIFO_INST_axi_aw_dbiterr_UNCONNECTED),
        .axi_aw_injectdbiterr(1'b0),
        .axi_aw_injectsbiterr(1'b0),
        .axi_aw_overflow(NLW_FIFO_INST_axi_aw_overflow_UNCONNECTED),
        .axi_aw_prog_empty(NLW_FIFO_INST_axi_aw_prog_empty_UNCONNECTED),
        .axi_aw_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_prog_full(NLW_FIFO_INST_axi_aw_prog_full_UNCONNECTED),
        .axi_aw_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_rd_data_count(NLW_FIFO_INST_axi_aw_rd_data_count_UNCONNECTED[4:0]),
        .axi_aw_sbiterr(NLW_FIFO_INST_axi_aw_sbiterr_UNCONNECTED),
        .axi_aw_underflow(NLW_FIFO_INST_axi_aw_underflow_UNCONNECTED),
        .axi_aw_wr_data_count(NLW_FIFO_INST_axi_aw_wr_data_count_UNCONNECTED[4:0]),
        .axi_b_data_count(NLW_FIFO_INST_axi_b_data_count_UNCONNECTED[4:0]),
        .axi_b_dbiterr(NLW_FIFO_INST_axi_b_dbiterr_UNCONNECTED),
        .axi_b_injectdbiterr(1'b0),
        .axi_b_injectsbiterr(1'b0),
        .axi_b_overflow(NLW_FIFO_INST_axi_b_overflow_UNCONNECTED),
        .axi_b_prog_empty(NLW_FIFO_INST_axi_b_prog_empty_UNCONNECTED),
        .axi_b_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_prog_full(NLW_FIFO_INST_axi_b_prog_full_UNCONNECTED),
        .axi_b_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_rd_data_count(NLW_FIFO_INST_axi_b_rd_data_count_UNCONNECTED[4:0]),
        .axi_b_sbiterr(NLW_FIFO_INST_axi_b_sbiterr_UNCONNECTED),
        .axi_b_underflow(NLW_FIFO_INST_axi_b_underflow_UNCONNECTED),
        .axi_b_wr_data_count(NLW_FIFO_INST_axi_b_wr_data_count_UNCONNECTED[4:0]),
        .axi_r_data_count(NLW_FIFO_INST_axi_r_data_count_UNCONNECTED[10:0]),
        .axi_r_dbiterr(NLW_FIFO_INST_axi_r_dbiterr_UNCONNECTED),
        .axi_r_injectdbiterr(1'b0),
        .axi_r_injectsbiterr(1'b0),
        .axi_r_overflow(NLW_FIFO_INST_axi_r_overflow_UNCONNECTED),
        .axi_r_prog_empty(NLW_FIFO_INST_axi_r_prog_empty_UNCONNECTED),
        .axi_r_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_prog_full(NLW_FIFO_INST_axi_r_prog_full_UNCONNECTED),
        .axi_r_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_rd_data_count(NLW_FIFO_INST_axi_r_rd_data_count_UNCONNECTED[10:0]),
        .axi_r_sbiterr(NLW_FIFO_INST_axi_r_sbiterr_UNCONNECTED),
        .axi_r_underflow(NLW_FIFO_INST_axi_r_underflow_UNCONNECTED),
        .axi_r_wr_data_count(NLW_FIFO_INST_axi_r_wr_data_count_UNCONNECTED[10:0]),
        .axi_w_data_count(NLW_FIFO_INST_axi_w_data_count_UNCONNECTED[10:0]),
        .axi_w_dbiterr(NLW_FIFO_INST_axi_w_dbiterr_UNCONNECTED),
        .axi_w_injectdbiterr(1'b0),
        .axi_w_injectsbiterr(1'b0),
        .axi_w_overflow(NLW_FIFO_INST_axi_w_overflow_UNCONNECTED),
        .axi_w_prog_empty(NLW_FIFO_INST_axi_w_prog_empty_UNCONNECTED),
        .axi_w_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_prog_full(NLW_FIFO_INST_axi_w_prog_full_UNCONNECTED),
        .axi_w_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_rd_data_count(NLW_FIFO_INST_axi_w_rd_data_count_UNCONNECTED[10:0]),
        .axi_w_sbiterr(NLW_FIFO_INST_axi_w_sbiterr_UNCONNECTED),
        .axi_w_underflow(NLW_FIFO_INST_axi_w_underflow_UNCONNECTED),
        .axi_w_wr_data_count(NLW_FIFO_INST_axi_w_wr_data_count_UNCONNECTED[10:0]),
        .axis_data_count(NLW_FIFO_INST_axis_data_count_UNCONNECTED[10:0]),
        .axis_dbiterr(NLW_FIFO_INST_axis_dbiterr_UNCONNECTED),
        .axis_injectdbiterr(1'b0),
        .axis_injectsbiterr(1'b0),
        .axis_overflow(NLW_FIFO_INST_axis_overflow_UNCONNECTED),
        .axis_prog_empty(NLW_FIFO_INST_axis_prog_empty_UNCONNECTED),
        .axis_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_prog_full(NLW_FIFO_INST_axis_prog_full_UNCONNECTED),
        .axis_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_rd_data_count(NLW_FIFO_INST_axis_rd_data_count_UNCONNECTED[10:0]),
        .axis_sbiterr(NLW_FIFO_INST_axis_sbiterr_UNCONNECTED),
        .axis_underflow(NLW_FIFO_INST_axis_underflow_UNCONNECTED),
        .axis_wr_data_count(NLW_FIFO_INST_axis_wr_data_count_UNCONNECTED[10:0]),
        .backup(1'b0),
        .backup_marker(1'b0),
        .clk(1'b0),
        .data_count(NLW_FIFO_INST_data_count_UNCONNECTED[10:0]),
        .dbiterr(NLW_FIFO_INST_dbiterr_UNCONNECTED),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full_i),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .int_clk(1'b0),
        .m_aclk(1'b0),
        .m_aclk_en(1'b0),
        .m_axi_araddr(NLW_FIFO_INST_m_axi_araddr_UNCONNECTED[31:0]),
        .m_axi_arburst(NLW_FIFO_INST_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_FIFO_INST_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arid(NLW_FIFO_INST_m_axi_arid_UNCONNECTED[0]),
        .m_axi_arlen(NLW_FIFO_INST_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arlock(NLW_FIFO_INST_m_axi_arlock_UNCONNECTED[0]),
        .m_axi_arprot(NLW_FIFO_INST_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_FIFO_INST_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(1'b0),
        .m_axi_arregion(NLW_FIFO_INST_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(NLW_FIFO_INST_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_aruser(NLW_FIFO_INST_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(NLW_FIFO_INST_m_axi_arvalid_UNCONNECTED),
        .m_axi_awaddr(NLW_FIFO_INST_m_axi_awaddr_UNCONNECTED[31:0]),
        .m_axi_awburst(NLW_FIFO_INST_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awcache(NLW_FIFO_INST_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awid(NLW_FIFO_INST_m_axi_awid_UNCONNECTED[0]),
        .m_axi_awlen(NLW_FIFO_INST_m_axi_awlen_UNCONNECTED[7:0]),
        .m_axi_awlock(NLW_FIFO_INST_m_axi_awlock_UNCONNECTED[0]),
        .m_axi_awprot(NLW_FIFO_INST_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awqos(NLW_FIFO_INST_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(1'b0),
        .m_axi_awregion(NLW_FIFO_INST_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(NLW_FIFO_INST_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awuser(NLW_FIFO_INST_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(NLW_FIFO_INST_m_axi_awvalid_UNCONNECTED),
        .m_axi_bid(1'b0),
        .m_axi_bready(NLW_FIFO_INST_m_axi_bready_UNCONNECTED),
        .m_axi_bresp({1'b0,1'b0}),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(1'b0),
        .m_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rid(1'b0),
        .m_axi_rlast(1'b0),
        .m_axi_rready(NLW_FIFO_INST_m_axi_rready_UNCONNECTED),
        .m_axi_rresp({1'b0,1'b0}),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(1'b0),
        .m_axi_wdata(NLW_FIFO_INST_m_axi_wdata_UNCONNECTED[63:0]),
        .m_axi_wid(NLW_FIFO_INST_m_axi_wid_UNCONNECTED[0]),
        .m_axi_wlast(NLW_FIFO_INST_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(1'b0),
        .m_axi_wstrb(NLW_FIFO_INST_m_axi_wstrb_UNCONNECTED[7:0]),
        .m_axi_wuser(NLW_FIFO_INST_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(NLW_FIFO_INST_m_axi_wvalid_UNCONNECTED),
        .m_axis_tdata(NLW_FIFO_INST_m_axis_tdata_UNCONNECTED[7:0]),
        .m_axis_tdest(NLW_FIFO_INST_m_axis_tdest_UNCONNECTED[0]),
        .m_axis_tid(NLW_FIFO_INST_m_axis_tid_UNCONNECTED[0]),
        .m_axis_tkeep(NLW_FIFO_INST_m_axis_tkeep_UNCONNECTED[0]),
        .m_axis_tlast(NLW_FIFO_INST_m_axis_tlast_UNCONNECTED),
        .m_axis_tready(1'b0),
        .m_axis_tstrb(NLW_FIFO_INST_m_axis_tstrb_UNCONNECTED[0]),
        .m_axis_tuser(NLW_FIFO_INST_m_axis_tuser_UNCONNECTED[3:0]),
        .m_axis_tvalid(NLW_FIFO_INST_m_axis_tvalid_UNCONNECTED),
        .overflow(overflow),
        .prog_empty(NLW_FIFO_INST_prog_empty_UNCONNECTED),
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full(NLW_FIFO_INST_prog_full_UNCONNECTED),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(vid_io_out_clk),
        .rd_data_count({rd_data_count,NLW_FIFO_INST_rd_data_count_UNCONNECTED[1:0]}),
        .rd_en(E),
        .rd_rst(1'b0),
        .rd_rst_busy(NLW_FIFO_INST_rd_rst_busy_UNCONNECTED),
        .rst(FIFO_INST_i_1_n_0),
        .s_aclk(1'b0),
        .s_aclk_en(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arid(1'b0),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock(1'b0),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_FIFO_INST_s_axi_arready_UNCONNECTED),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid(1'b0),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock(1'b0),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_FIFO_INST_s_axi_awready_UNCONNECTED),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_FIFO_INST_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_FIFO_INST_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_buser(NLW_FIFO_INST_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(NLW_FIFO_INST_s_axi_bvalid_UNCONNECTED),
        .s_axi_rdata(NLW_FIFO_INST_s_axi_rdata_UNCONNECTED[63:0]),
        .s_axi_rid(NLW_FIFO_INST_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(NLW_FIFO_INST_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_FIFO_INST_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_ruser(NLW_FIFO_INST_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(NLW_FIFO_INST_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wid(1'b0),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_FIFO_INST_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(1'b0),
        .s_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tdest(1'b0),
        .s_axis_tid(1'b0),
        .s_axis_tkeep(1'b0),
        .s_axis_tlast(1'b0),
        .s_axis_tready(NLW_FIFO_INST_s_axis_tready_UNCONNECTED),
        .s_axis_tstrb(1'b0),
        .s_axis_tuser({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tvalid(1'b0),
        .sbiterr(NLW_FIFO_INST_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .srst(1'b0),
        .underflow(underflow),
        .valid(NLW_FIFO_INST_valid_UNCONNECTED),
        .wr_ack(NLW_FIFO_INST_wr_ack_UNCONNECTED),
        .wr_clk(aclk),
        .wr_data_count(NLW_FIFO_INST_wr_data_count_UNCONNECTED[10:0]),
        .wr_en(wr_en_i),
        .wr_rst(1'b0),
        .wr_rst_busy(wr_rst_busy_i));
  LUT2 #(
    .INIT(4'hB)) 
    FIFO_INST_i_1
       (.I0(vid_io_out_reset),
        .I1(aresetn),
        .O(FIFO_INST_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h10000000)) 
    FIFO_INST_i_2
       (.I0(full_i),
        .I1(wr_rst_busy_i),
        .I2(aclken),
        .I3(s_axis_video_tvalid),
        .I4(aresetn),
        .O(wr_en_i));
  LUT3 #(
    .INIT(8'h20)) 
    \fifo_eol_cnt_dly[12]_i_1 
       (.I0(vid_io_out_ce),
        .I1(dout[25]),
        .I2(fifo_sof_dly),
        .O(\fifo_eol_cnt_dly_reg[12] ));
  LUT2 #(
    .INIT(4'h2)) 
    fifo_eol_re_dly_i_1
       (.I0(dout[24]),
        .I1(fifo_eol_dly),
        .O(fifo_eol_re_dly_reg));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h02)) 
    s_axis_video_tready_INST_0
       (.I0(aresetn),
        .I1(full_i),
        .I2(wr_rst_busy_i),
        .O(s_axis_video_tready));
endmodule

(* ORIG_REF_NAME = "v_axi4s_vid_out_v4_0_5_formatter" *) 
module system_v_axi4s_vid_out_0_0_v_axi4s_vid_out_v4_0_5_formatter
   (vid_active_video,
    vid_vsync,
    vid_hsync,
    vid_vblank,
    vid_hblank,
    vid_field_id,
    fivid_reset_full_frame,
    vid_data,
    \FSM_sequential_state_reg[0] ,
    vid_io_out_ce,
    vtg_active_video,
    vid_io_out_clk,
    vtg_vsync,
    vtg_hsync,
    vtg_vblank,
    vtg_hblank,
    vtg_field_id,
    locked,
    vid_io_out_reset,
    E,
    D);
  output vid_active_video;
  output vid_vsync;
  output vid_hsync;
  output vid_vblank;
  output vid_hblank;
  output vid_field_id;
  output fivid_reset_full_frame;
  output [23:0]vid_data;
  input \FSM_sequential_state_reg[0] ;
  input vid_io_out_ce;
  input vtg_active_video;
  input vid_io_out_clk;
  input vtg_vsync;
  input vtg_hsync;
  input vtg_vblank;
  input vtg_hblank;
  input vtg_field_id;
  input locked;
  input vid_io_out_reset;
  input [0:0]E;
  input [23:0]D;

  wire [23:0]D;
  wire [0:0]E;
  wire \FSM_sequential_state_reg[0] ;
  wire fivid_reset_full_frame;
  wire fivid_reset_full_frame_i_1_n_0;
  wire locked;
  wire vblank_rising;
  wire vblank_rising_i_1_n_0;
  wire vid_active_video;
  wire [23:0]vid_data;
  wire vid_field_id;
  wire vid_hblank;
  wire vid_hsync;
  wire vid_io_out_ce;
  wire vid_io_out_clk;
  wire vid_io_out_reset;
  wire vid_vblank;
  wire vid_vsync;
  wire vtg_active_video;
  wire vtg_field_id;
  wire vtg_hblank;
  wire vtg_hsync;
  wire vtg_vblank;
  wire vtg_vblank_1;
  wire vtg_vblank_1_i_1_n_0;
  wire vtg_vsync;

  LUT5 #(
    .INIT(32'h0000EA00)) 
    fivid_reset_full_frame_i_1
       (.I0(fivid_reset_full_frame),
        .I1(vblank_rising),
        .I2(vid_io_out_ce),
        .I3(locked),
        .I4(vid_io_out_reset),
        .O(fivid_reset_full_frame_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    fivid_reset_full_frame_reg
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(fivid_reset_full_frame_i_1_n_0),
        .Q(fivid_reset_full_frame),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[0] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(D[0]),
        .Q(vid_data[0]),
        .R(\FSM_sequential_state_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[10] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(D[10]),
        .Q(vid_data[10]),
        .R(\FSM_sequential_state_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[11] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(D[11]),
        .Q(vid_data[11]),
        .R(\FSM_sequential_state_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[12] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(D[12]),
        .Q(vid_data[12]),
        .R(\FSM_sequential_state_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[13] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(D[13]),
        .Q(vid_data[13]),
        .R(\FSM_sequential_state_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[14] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(D[14]),
        .Q(vid_data[14]),
        .R(\FSM_sequential_state_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[15] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(D[15]),
        .Q(vid_data[15]),
        .R(\FSM_sequential_state_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[16] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(D[16]),
        .Q(vid_data[16]),
        .R(\FSM_sequential_state_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[17] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(D[17]),
        .Q(vid_data[17]),
        .R(\FSM_sequential_state_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[18] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(D[18]),
        .Q(vid_data[18]),
        .R(\FSM_sequential_state_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[19] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(D[19]),
        .Q(vid_data[19]),
        .R(\FSM_sequential_state_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[1] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(D[1]),
        .Q(vid_data[1]),
        .R(\FSM_sequential_state_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[20] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(D[20]),
        .Q(vid_data[20]),
        .R(\FSM_sequential_state_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[21] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(D[21]),
        .Q(vid_data[21]),
        .R(\FSM_sequential_state_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[22] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(D[22]),
        .Q(vid_data[22]),
        .R(\FSM_sequential_state_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[23] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(D[23]),
        .Q(vid_data[23]),
        .R(\FSM_sequential_state_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[2] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(D[2]),
        .Q(vid_data[2]),
        .R(\FSM_sequential_state_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[3] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(D[3]),
        .Q(vid_data[3]),
        .R(\FSM_sequential_state_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[4] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(D[4]),
        .Q(vid_data[4]),
        .R(\FSM_sequential_state_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[5] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(D[5]),
        .Q(vid_data[5]),
        .R(\FSM_sequential_state_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[6] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(D[6]),
        .Q(vid_data[6]),
        .R(\FSM_sequential_state_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[7] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(D[7]),
        .Q(vid_data[7]),
        .R(\FSM_sequential_state_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[8] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(D[8]),
        .Q(vid_data[8]),
        .R(\FSM_sequential_state_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[9] 
       (.C(vid_io_out_clk),
        .CE(E),
        .D(D[9]),
        .Q(vid_data[9]),
        .R(\FSM_sequential_state_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    in_de_mux_reg
       (.C(vid_io_out_clk),
        .CE(vid_io_out_ce),
        .D(vtg_active_video),
        .Q(vid_active_video),
        .R(\FSM_sequential_state_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    in_field_id_mux_reg
       (.C(vid_io_out_clk),
        .CE(vid_io_out_ce),
        .D(vtg_field_id),
        .Q(vid_field_id),
        .R(\FSM_sequential_state_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    in_hblank_mux_reg
       (.C(vid_io_out_clk),
        .CE(vid_io_out_ce),
        .D(vtg_hblank),
        .Q(vid_hblank),
        .R(\FSM_sequential_state_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    in_hsync_mux_reg
       (.C(vid_io_out_clk),
        .CE(vid_io_out_ce),
        .D(vtg_hsync),
        .Q(vid_hsync),
        .R(\FSM_sequential_state_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    in_vblank_mux_reg
       (.C(vid_io_out_clk),
        .CE(vid_io_out_ce),
        .D(vtg_vblank),
        .Q(vid_vblank),
        .R(\FSM_sequential_state_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    in_vsync_mux_reg
       (.C(vid_io_out_clk),
        .CE(vid_io_out_ce),
        .D(vtg_vsync),
        .Q(vid_vsync),
        .R(\FSM_sequential_state_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    vblank_rising_i_1
       (.I0(vtg_vblank),
        .I1(vtg_vblank_1),
        .I2(vid_io_out_ce),
        .I3(vblank_rising),
        .O(vblank_rising_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    vblank_rising_reg
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(vblank_rising_i_1_n_0),
        .Q(vblank_rising),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    vtg_vblank_1_i_1
       (.I0(vtg_vblank),
        .I1(vid_io_out_ce),
        .I2(vtg_vblank_1),
        .O(vtg_vblank_1_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    vtg_vblank_1_reg
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(vtg_vblank_1_i_1_n_0),
        .Q(vtg_vblank_1),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "v_axi4s_vid_out_v4_0_5_sync" *) 
module system_v_axi4s_vid_out_0_0_v_axi4s_vid_out_v4_0_5_sync
   (fifo_eol_dly,
    fifo_sof_dly,
    E,
    \in_data_mux_reg[0] ,
    status,
    locked,
    vid_io_out_reset,
    vid_io_out_ce,
    vtg_active_video,
    vid_io_out_clk,
    vtg_vsync,
    dout,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ,
    empty,
    fivid_reset_full_frame,
    rd_data_count,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ,
    vtg_field_id);
  output fifo_eol_dly;
  output fifo_sof_dly;
  output [0:0]E;
  output \in_data_mux_reg[0] ;
  output [24:0]status;
  output locked;
  input vid_io_out_reset;
  input vid_io_out_ce;
  input vtg_active_video;
  input vid_io_out_clk;
  input vtg_vsync;
  input [2:0]dout;
  input \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ;
  input empty;
  input fivid_reset_full_frame;
  input [8:0]rd_data_count;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ;
  input vtg_field_id;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ;
  wire [0:0]E;
  wire \FSM_sequential_state[0]_i_1_n_0 ;
  wire \FSM_sequential_state[0]_i_2_n_0 ;
  wire \FSM_sequential_state[0]_i_3_n_0 ;
  wire \FSM_sequential_state[0]_i_4_n_0 ;
  wire \FSM_sequential_state[0]_i_5_n_0 ;
  wire \FSM_sequential_state[0]_i_6_n_0 ;
  wire \FSM_sequential_state[0]_i_7_n_0 ;
  wire \FSM_sequential_state[1]_i_1_n_0 ;
  wire \FSM_sequential_state[1]_i_2_n_0 ;
  wire \FSM_sequential_state[1]_i_3_n_0 ;
  wire \FSM_sequential_state[1]_i_4_n_0 ;
  wire \FSM_sequential_state[1]_i_5_n_0 ;
  wire \FSM_sequential_state[1]_i_6_n_0 ;
  wire \FSM_sequential_state[2]_i_10_n_0 ;
  wire \FSM_sequential_state[2]_i_11_n_0 ;
  wire \FSM_sequential_state[2]_i_1_n_0 ;
  wire \FSM_sequential_state[2]_i_2_n_0 ;
  wire \FSM_sequential_state[2]_i_3_n_0 ;
  wire \FSM_sequential_state[2]_i_4_n_0 ;
  wire \FSM_sequential_state[2]_i_5_n_0 ;
  wire \FSM_sequential_state[2]_i_6_n_0 ;
  wire \FSM_sequential_state[2]_i_7_n_0 ;
  wire \FSM_sequential_state[2]_i_8_n_0 ;
  wire \FSM_sequential_state[2]_i_9_n_0 ;
  wire \FSM_sequential_state[3]_i_1_n_0 ;
  wire \FSM_sequential_state[3]_i_3_n_0 ;
  wire \FSM_sequential_state[3]_i_4_n_0 ;
  wire \FSM_sequential_state[3]_i_5_n_0 ;
  wire \FSM_sequential_state[3]_i_6_n_0 ;
  wire \FSM_sequential_state[3]_i_7_n_0 ;
  wire \FSM_sequential_state[3]_i_8_n_0 ;
  wire \FSM_sequential_state[3]_i_9_n_0 ;
  wire [2:0]dout;
  wire empty;
  wire fifo_eol_cnt;
  wire fifo_eol_cnt1;
  wire \fifo_eol_cnt[0]_i_1_n_0 ;
  wire \fifo_eol_cnt[0]_i_4_n_0 ;
  wire \fifo_eol_cnt[0]_i_5_n_0 ;
  wire \fifo_eol_cnt[0]_i_6_n_0 ;
  wire \fifo_eol_cnt[0]_i_7_n_0 ;
  wire \fifo_eol_cnt[12]_i_2_n_0 ;
  wire \fifo_eol_cnt[4]_i_2_n_0 ;
  wire \fifo_eol_cnt[4]_i_3_n_0 ;
  wire \fifo_eol_cnt[4]_i_4_n_0 ;
  wire \fifo_eol_cnt[4]_i_5_n_0 ;
  wire \fifo_eol_cnt[8]_i_2_n_0 ;
  wire \fifo_eol_cnt[8]_i_3_n_0 ;
  wire \fifo_eol_cnt[8]_i_4_n_0 ;
  wire \fifo_eol_cnt[8]_i_5_n_0 ;
  wire [12:0]fifo_eol_cnt_dly;
  wire [12:0]fifo_eol_cnt_reg;
  wire \fifo_eol_cnt_reg[0]_i_3_n_0 ;
  wire \fifo_eol_cnt_reg[0]_i_3_n_1 ;
  wire \fifo_eol_cnt_reg[0]_i_3_n_2 ;
  wire \fifo_eol_cnt_reg[0]_i_3_n_3 ;
  wire \fifo_eol_cnt_reg[0]_i_3_n_4 ;
  wire \fifo_eol_cnt_reg[0]_i_3_n_5 ;
  wire \fifo_eol_cnt_reg[0]_i_3_n_6 ;
  wire \fifo_eol_cnt_reg[0]_i_3_n_7 ;
  wire \fifo_eol_cnt_reg[12]_i_1_n_7 ;
  wire \fifo_eol_cnt_reg[4]_i_1_n_0 ;
  wire \fifo_eol_cnt_reg[4]_i_1_n_1 ;
  wire \fifo_eol_cnt_reg[4]_i_1_n_2 ;
  wire \fifo_eol_cnt_reg[4]_i_1_n_3 ;
  wire \fifo_eol_cnt_reg[4]_i_1_n_4 ;
  wire \fifo_eol_cnt_reg[4]_i_1_n_5 ;
  wire \fifo_eol_cnt_reg[4]_i_1_n_6 ;
  wire \fifo_eol_cnt_reg[4]_i_1_n_7 ;
  wire \fifo_eol_cnt_reg[8]_i_1_n_0 ;
  wire \fifo_eol_cnt_reg[8]_i_1_n_1 ;
  wire \fifo_eol_cnt_reg[8]_i_1_n_2 ;
  wire \fifo_eol_cnt_reg[8]_i_1_n_3 ;
  wire \fifo_eol_cnt_reg[8]_i_1_n_4 ;
  wire \fifo_eol_cnt_reg[8]_i_1_n_5 ;
  wire \fifo_eol_cnt_reg[8]_i_1_n_6 ;
  wire \fifo_eol_cnt_reg[8]_i_1_n_7 ;
  wire fifo_eol_dly;
  wire fifo_eol_error;
  wire fifo_eol_error1;
  wire fifo_eol_error1_carry__0_i_1_n_0;
  wire fifo_eol_error1_carry_i_1_n_0;
  wire fifo_eol_error1_carry_i_2_n_0;
  wire fifo_eol_error1_carry_i_3_n_0;
  wire fifo_eol_error1_carry_i_4_n_0;
  wire fifo_eol_error1_carry_n_0;
  wire fifo_eol_error1_carry_n_1;
  wire fifo_eol_error1_carry_n_2;
  wire fifo_eol_error1_carry_n_3;
  wire fifo_eol_error_i_1_n_0;
  wire fifo_eol_error_i_2_n_0;
  wire fifo_eol_error_i_3_n_0;
  wire fifo_eol_error_i_4_n_0;
  wire fifo_eol_re_dly;
  wire \fifo_pix_cnt[0]_i_1_n_0 ;
  wire \fifo_pix_cnt[0]_i_2_n_0 ;
  wire \fifo_pix_cnt[0]_i_4_n_0 ;
  wire \fifo_pix_cnt[0]_i_5_n_0 ;
  wire \fifo_pix_cnt[0]_i_6_n_0 ;
  wire \fifo_pix_cnt[0]_i_7_n_0 ;
  wire \fifo_pix_cnt[12]_i_2_n_0 ;
  wire \fifo_pix_cnt[4]_i_2_n_0 ;
  wire \fifo_pix_cnt[4]_i_3_n_0 ;
  wire \fifo_pix_cnt[4]_i_4_n_0 ;
  wire \fifo_pix_cnt[4]_i_5_n_0 ;
  wire \fifo_pix_cnt[8]_i_2_n_0 ;
  wire \fifo_pix_cnt[8]_i_3_n_0 ;
  wire \fifo_pix_cnt[8]_i_4_n_0 ;
  wire \fifo_pix_cnt[8]_i_5_n_0 ;
  wire [12:0]fifo_pix_cnt_dly;
  wire fifo_pix_cnt_dly1__11;
  wire \fifo_pix_cnt_dly[12]_i_3_n_0 ;
  wire \fifo_pix_cnt_dly[12]_i_5_n_0 ;
  wire \fifo_pix_cnt_dly[12]_i_6_n_0 ;
  wire \fifo_pix_cnt_dly[12]_i_7_n_0 ;
  wire \fifo_pix_cnt_dly[12]_i_8_n_0 ;
  wire fifo_pix_cnt_dly_0;
  wire [12:0]fifo_pix_cnt_reg;
  wire \fifo_pix_cnt_reg[0]_i_3_n_0 ;
  wire \fifo_pix_cnt_reg[0]_i_3_n_1 ;
  wire \fifo_pix_cnt_reg[0]_i_3_n_2 ;
  wire \fifo_pix_cnt_reg[0]_i_3_n_3 ;
  wire \fifo_pix_cnt_reg[0]_i_3_n_4 ;
  wire \fifo_pix_cnt_reg[0]_i_3_n_5 ;
  wire \fifo_pix_cnt_reg[0]_i_3_n_6 ;
  wire \fifo_pix_cnt_reg[0]_i_3_n_7 ;
  wire \fifo_pix_cnt_reg[12]_i_1_n_7 ;
  wire \fifo_pix_cnt_reg[4]_i_1_n_0 ;
  wire \fifo_pix_cnt_reg[4]_i_1_n_1 ;
  wire \fifo_pix_cnt_reg[4]_i_1_n_2 ;
  wire \fifo_pix_cnt_reg[4]_i_1_n_3 ;
  wire \fifo_pix_cnt_reg[4]_i_1_n_4 ;
  wire \fifo_pix_cnt_reg[4]_i_1_n_5 ;
  wire \fifo_pix_cnt_reg[4]_i_1_n_6 ;
  wire \fifo_pix_cnt_reg[4]_i_1_n_7 ;
  wire \fifo_pix_cnt_reg[8]_i_1_n_0 ;
  wire \fifo_pix_cnt_reg[8]_i_1_n_1 ;
  wire \fifo_pix_cnt_reg[8]_i_1_n_2 ;
  wire \fifo_pix_cnt_reg[8]_i_1_n_3 ;
  wire \fifo_pix_cnt_reg[8]_i_1_n_4 ;
  wire \fifo_pix_cnt_reg[8]_i_1_n_5 ;
  wire \fifo_pix_cnt_reg[8]_i_1_n_6 ;
  wire \fifo_pix_cnt_reg[8]_i_1_n_7 ;
  wire fifo_pix_error;
  wire fifo_pix_error0;
  wire fifo_pix_error1;
  wire fifo_pix_error1_carry__0_i_1_n_0;
  wire fifo_pix_error1_carry_i_1_n_0;
  wire fifo_pix_error1_carry_i_2_n_0;
  wire fifo_pix_error1_carry_i_3_n_0;
  wire fifo_pix_error1_carry_i_4_n_0;
  wire fifo_pix_error1_carry_n_0;
  wire fifo_pix_error1_carry_n_1;
  wire fifo_pix_error1_carry_n_2;
  wire fifo_pix_error1_carry_n_3;
  wire fifo_pix_error_i_1_n_0;
  wire \fifo_sof_cnt[7]_i_2_n_0 ;
  wire [7:0]fifo_sof_cnt_reg__0;
  wire fifo_sof_dly;
  wire fivid_reset_full_frame;
  wire \in_data_mux_reg[0] ;
  wire locked;
  wire next_state121_out;
  wire \next_state1_inferred__0/FSM_sequential_state[1]_i_7_n_0 ;
  wire \next_state1_inferred__0/FSM_sequential_state[1]_i_8_n_0 ;
  wire [7:0]p_0_in;
  wire [7:0]p_0_in__0;
  wire [8:0]rd_data_count;
  wire sof_ignore;
  wire sof_ignore0;
  wire sof_ignore_i_1_n_0;
  (* RTL_KEEP = "yes" *) wire [3:0]state;
  wire [3:0]state_dly;
  wire \state_dly[3]_i_1_n_0 ;
  wire [3:0]state_reg;
  wire [24:0]status;
  wire [5:0]status_reg;
  wire status_reg1;
  wire \status_reg[0]_i_1_n_0 ;
  wire \status_reg[10]_i_1_n_0 ;
  wire \status_reg[11]_i_1_n_0 ;
  wire \status_reg[11]_i_2_n_0 ;
  wire \status_reg[12]_i_1_n_0 ;
  wire \status_reg[12]_i_3_n_0 ;
  wire \status_reg[1]_i_1_n_0 ;
  wire \status_reg[2]_i_1_n_0 ;
  wire \status_reg[3]_i_1_n_0 ;
  wire \status_reg[4]_i_1_n_0 ;
  wire \status_reg[4]_i_2_n_0 ;
  wire \status_reg[5]_i_1_n_0 ;
  wire \status_reg[6]_i_1_n_0 ;
  wire \status_reg[6]_i_2_n_0 ;
  wire \status_reg[7]_i_1_n_0 ;
  wire \status_reg[8]_i_1_n_0 ;
  wire \status_reg[9]_i_1_n_0 ;
  wire \status_reg[9]_i_2_n_0 ;
  wire vid_io_out_ce;
  wire vid_io_out_clk;
  wire vid_io_out_reset;
  wire vtg_active_video;
  wire vtg_de_dly;
  wire vtg_field_id;
  wire vtg_lag;
  wire \vtg_lag[0]_i_4_n_0 ;
  wire \vtg_lag[0]_i_5_n_0 ;
  wire \vtg_lag[0]_i_6_n_0 ;
  wire \vtg_lag[0]_i_7_n_0 ;
  wire \vtg_lag[12]_i_2_n_0 ;
  wire \vtg_lag[12]_i_3_n_0 ;
  wire \vtg_lag[12]_i_4_n_0 ;
  wire \vtg_lag[12]_i_5_n_0 ;
  wire \vtg_lag[16]_i_2_n_0 ;
  wire \vtg_lag[16]_i_3_n_0 ;
  wire \vtg_lag[16]_i_4_n_0 ;
  wire \vtg_lag[16]_i_5_n_0 ;
  wire \vtg_lag[20]_i_2_n_0 ;
  wire \vtg_lag[20]_i_3_n_0 ;
  wire \vtg_lag[20]_i_4_n_0 ;
  wire \vtg_lag[20]_i_5_n_0 ;
  wire \vtg_lag[24]_i_2_n_0 ;
  wire \vtg_lag[24]_i_3_n_0 ;
  wire \vtg_lag[24]_i_4_n_0 ;
  wire \vtg_lag[24]_i_5_n_0 ;
  wire \vtg_lag[28]_i_2_n_0 ;
  wire \vtg_lag[28]_i_3_n_0 ;
  wire \vtg_lag[28]_i_4_n_0 ;
  wire \vtg_lag[28]_i_5_n_0 ;
  wire \vtg_lag[4]_i_2_n_0 ;
  wire \vtg_lag[4]_i_3_n_0 ;
  wire \vtg_lag[4]_i_4_n_0 ;
  wire \vtg_lag[4]_i_5_n_0 ;
  wire \vtg_lag[8]_i_2_n_0 ;
  wire \vtg_lag[8]_i_3_n_0 ;
  wire \vtg_lag[8]_i_4_n_0 ;
  wire \vtg_lag[8]_i_5_n_0 ;
  wire [9:0]vtg_lag_reg;
  wire \vtg_lag_reg[0]_i_3_n_0 ;
  wire \vtg_lag_reg[0]_i_3_n_1 ;
  wire \vtg_lag_reg[0]_i_3_n_2 ;
  wire \vtg_lag_reg[0]_i_3_n_3 ;
  wire \vtg_lag_reg[0]_i_3_n_4 ;
  wire \vtg_lag_reg[0]_i_3_n_5 ;
  wire \vtg_lag_reg[0]_i_3_n_6 ;
  wire \vtg_lag_reg[0]_i_3_n_7 ;
  wire \vtg_lag_reg[12]_i_1_n_0 ;
  wire \vtg_lag_reg[12]_i_1_n_1 ;
  wire \vtg_lag_reg[12]_i_1_n_2 ;
  wire \vtg_lag_reg[12]_i_1_n_3 ;
  wire \vtg_lag_reg[12]_i_1_n_4 ;
  wire \vtg_lag_reg[12]_i_1_n_5 ;
  wire \vtg_lag_reg[12]_i_1_n_6 ;
  wire \vtg_lag_reg[12]_i_1_n_7 ;
  wire \vtg_lag_reg[16]_i_1_n_0 ;
  wire \vtg_lag_reg[16]_i_1_n_1 ;
  wire \vtg_lag_reg[16]_i_1_n_2 ;
  wire \vtg_lag_reg[16]_i_1_n_3 ;
  wire \vtg_lag_reg[16]_i_1_n_4 ;
  wire \vtg_lag_reg[16]_i_1_n_5 ;
  wire \vtg_lag_reg[16]_i_1_n_6 ;
  wire \vtg_lag_reg[16]_i_1_n_7 ;
  wire \vtg_lag_reg[20]_i_1_n_0 ;
  wire \vtg_lag_reg[20]_i_1_n_1 ;
  wire \vtg_lag_reg[20]_i_1_n_2 ;
  wire \vtg_lag_reg[20]_i_1_n_3 ;
  wire \vtg_lag_reg[20]_i_1_n_4 ;
  wire \vtg_lag_reg[20]_i_1_n_5 ;
  wire \vtg_lag_reg[20]_i_1_n_6 ;
  wire \vtg_lag_reg[20]_i_1_n_7 ;
  wire \vtg_lag_reg[24]_i_1_n_0 ;
  wire \vtg_lag_reg[24]_i_1_n_1 ;
  wire \vtg_lag_reg[24]_i_1_n_2 ;
  wire \vtg_lag_reg[24]_i_1_n_3 ;
  wire \vtg_lag_reg[24]_i_1_n_4 ;
  wire \vtg_lag_reg[24]_i_1_n_5 ;
  wire \vtg_lag_reg[24]_i_1_n_6 ;
  wire \vtg_lag_reg[24]_i_1_n_7 ;
  wire \vtg_lag_reg[28]_i_1_n_1 ;
  wire \vtg_lag_reg[28]_i_1_n_2 ;
  wire \vtg_lag_reg[28]_i_1_n_3 ;
  wire \vtg_lag_reg[28]_i_1_n_4 ;
  wire \vtg_lag_reg[28]_i_1_n_5 ;
  wire \vtg_lag_reg[28]_i_1_n_6 ;
  wire \vtg_lag_reg[28]_i_1_n_7 ;
  wire \vtg_lag_reg[4]_i_1_n_0 ;
  wire \vtg_lag_reg[4]_i_1_n_1 ;
  wire \vtg_lag_reg[4]_i_1_n_2 ;
  wire \vtg_lag_reg[4]_i_1_n_3 ;
  wire \vtg_lag_reg[4]_i_1_n_4 ;
  wire \vtg_lag_reg[4]_i_1_n_5 ;
  wire \vtg_lag_reg[4]_i_1_n_6 ;
  wire \vtg_lag_reg[4]_i_1_n_7 ;
  wire \vtg_lag_reg[8]_i_1_n_0 ;
  wire \vtg_lag_reg[8]_i_1_n_1 ;
  wire \vtg_lag_reg[8]_i_1_n_2 ;
  wire \vtg_lag_reg[8]_i_1_n_3 ;
  wire \vtg_lag_reg[8]_i_1_n_4 ;
  wire \vtg_lag_reg[8]_i_1_n_5 ;
  wire \vtg_lag_reg[8]_i_1_n_6 ;
  wire \vtg_lag_reg[8]_i_1_n_7 ;
  wire [31:10]vtg_lag_reg__0;
  wire vtg_sof;
  wire vtg_sof_cnt;
  wire vtg_sof_cnt0;
  wire \vtg_sof_cnt[7]_i_4_n_0 ;
  wire [7:0]vtg_sof_cnt_reg__0;
  wire vtg_sof_dly;
  wire vtg_vsync;
  wire vtg_vsync_bp_i_1_n_0;
  wire vtg_vsync_bp_reg_n_0;
  wire vtg_vsync_dly;
  wire [3:0]\NLW_fifo_eol_cnt_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_fifo_eol_cnt_reg[12]_i_1_O_UNCONNECTED ;
  wire [3:0]NLW_fifo_eol_error1_carry_O_UNCONNECTED;
  wire [3:1]NLW_fifo_eol_error1_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_fifo_eol_error1_carry__0_O_UNCONNECTED;
  wire [3:0]\NLW_fifo_pix_cnt_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_fifo_pix_cnt_reg[12]_i_1_O_UNCONNECTED ;
  wire [3:0]NLW_fifo_pix_error1_carry_O_UNCONNECTED;
  wire [3:1]NLW_fifo_pix_error1_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_fifo_pix_error1_carry__0_O_UNCONNECTED;
  wire [3:3]\NLW_vtg_lag_reg[28]_i_1_CO_UNCONNECTED ;

  LUT6 #(
    .INIT(64'h333033BB33300088)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(\FSM_sequential_state[0]_i_2_n_0 ),
        .I1(state[3]),
        .I2(\FSM_sequential_state[0]_i_3_n_0 ),
        .I3(state[2]),
        .I4(state[0]),
        .I5(\FSM_sequential_state[0]_i_4_n_0 ),
        .O(\FSM_sequential_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000045D0404)) 
    \FSM_sequential_state[0]_i_2 
       (.I0(fifo_eol_re_dly),
        .I1(vtg_de_dly),
        .I2(vtg_active_video),
        .I3(\FSM_sequential_state[3]_i_4_n_0 ),
        .I4(vtg_sof_dly),
        .I5(state[1]),
        .O(\FSM_sequential_state[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEF400000EF40FFFF)) 
    \FSM_sequential_state[0]_i_3 
       (.I0(\FSM_sequential_state[1]_i_5_n_0 ),
        .I1(\FSM_sequential_state[0]_i_5_n_0 ),
        .I2(next_state121_out),
        .I3(\FSM_sequential_state[0]_i_6_n_0 ),
        .I4(state[1]),
        .I5(\next_state1_inferred__0/FSM_sequential_state[1]_i_7_n_0 ),
        .O(\FSM_sequential_state[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \FSM_sequential_state[0]_i_4 
       (.I0(fifo_eol_re_dly),
        .I1(state[1]),
        .I2(\FSM_sequential_state[3]_i_4_n_0 ),
        .I3(\FSM_sequential_state[2]_i_5_n_0 ),
        .I4(state[2]),
        .I5(\FSM_sequential_state[0]_i_7_n_0 ),
        .O(\FSM_sequential_state[0]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h4404)) 
    \FSM_sequential_state[0]_i_5 
       (.I0(status_reg[3]),
        .I1(fifo_eol_re_dly),
        .I2(vtg_de_dly),
        .I3(vtg_active_video),
        .O(\FSM_sequential_state[0]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h73733073)) 
    \FSM_sequential_state[0]_i_6 
       (.I0(status_reg[3]),
        .I1(\FSM_sequential_state[1]_i_6_n_0 ),
        .I2(fifo_eol_re_dly),
        .I3(vtg_de_dly),
        .I4(vtg_active_video),
        .O(\FSM_sequential_state[0]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h20202F20)) 
    \FSM_sequential_state[0]_i_7 
       (.I0(vtg_sof),
        .I1(vtg_field_id),
        .I2(state[1]),
        .I3(dout[1]),
        .I4(dout[2]),
        .O(\FSM_sequential_state[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h333033BB33300088)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(\FSM_sequential_state[1]_i_2_n_0 ),
        .I1(state[3]),
        .I2(\FSM_sequential_state[1]_i_3_n_0 ),
        .I3(state[2]),
        .I4(state[0]),
        .I5(\FSM_sequential_state[1]_i_4_n_0 ),
        .O(\FSM_sequential_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000B0FBB0B0)) 
    \FSM_sequential_state[1]_i_2 
       (.I0(vtg_active_video),
        .I1(vtg_de_dly),
        .I2(fifo_eol_re_dly),
        .I3(\FSM_sequential_state[3]_i_4_n_0 ),
        .I4(vtg_sof_dly),
        .I5(state[1]),
        .O(\FSM_sequential_state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEF00FFFFEF000000)) 
    \FSM_sequential_state[1]_i_3 
       (.I0(\FSM_sequential_state[1]_i_5_n_0 ),
        .I1(\FSM_sequential_state[1]_i_6_n_0 ),
        .I2(next_state121_out),
        .I3(\FSM_sequential_state[3]_i_9_n_0 ),
        .I4(state[1]),
        .I5(\next_state1_inferred__0/FSM_sequential_state[1]_i_7_n_0 ),
        .O(\FSM_sequential_state[1]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h3F20)) 
    \FSM_sequential_state[1]_i_4 
       (.I0(fifo_eol_re_dly),
        .I1(\FSM_sequential_state[2]_i_5_n_0 ),
        .I2(state[2]),
        .I3(state[1]),
        .O(\FSM_sequential_state[1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h00000010)) 
    \FSM_sequential_state[1]_i_5 
       (.I0(sof_ignore),
        .I1(dout[1]),
        .I2(fifo_sof_dly),
        .I3(vtg_sof_dly),
        .I4(status_reg[3]),
        .O(\FSM_sequential_state[1]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h00D0)) 
    \FSM_sequential_state[1]_i_6 
       (.I0(fifo_sof_dly),
        .I1(dout[1]),
        .I2(vtg_sof_dly),
        .I3(sof_ignore),
        .O(\FSM_sequential_state[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h003033BB00300088)) 
    \FSM_sequential_state[2]_i_1 
       (.I0(\FSM_sequential_state[2]_i_2_n_0 ),
        .I1(state[3]),
        .I2(\FSM_sequential_state[2]_i_3_n_0 ),
        .I3(state[2]),
        .I4(state[0]),
        .I5(\FSM_sequential_state[2]_i_4_n_0 ),
        .O(\FSM_sequential_state[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \FSM_sequential_state[2]_i_10 
       (.I0(vtg_lag_reg[0]),
        .I1(vtg_lag_reg[1]),
        .I2(vtg_lag_reg[2]),
        .I3(vtg_lag_reg[4]),
        .I4(vtg_lag_reg[3]),
        .O(\FSM_sequential_state[2]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \FSM_sequential_state[2]_i_11 
       (.I0(vtg_lag_reg[5]),
        .I1(vtg_lag_reg[6]),
        .I2(vtg_lag_reg[7]),
        .I3(vtg_lag_reg[8]),
        .I4(vtg_lag_reg[9]),
        .O(\FSM_sequential_state[2]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0000000004400404)) 
    \FSM_sequential_state[2]_i_2 
       (.I0(vtg_sof_dly),
        .I1(\FSM_sequential_state[3]_i_4_n_0 ),
        .I2(fifo_eol_re_dly),
        .I3(vtg_active_video),
        .I4(vtg_de_dly),
        .I5(state[1]),
        .O(\FSM_sequential_state[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h1014FFFF00000000)) 
    \FSM_sequential_state[2]_i_3 
       (.I0(sof_ignore),
        .I1(\FSM_sequential_state[3]_i_4_n_0 ),
        .I2(vtg_sof_dly),
        .I3(status_reg[3]),
        .I4(\FSM_sequential_state[3]_i_9_n_0 ),
        .I5(state[1]),
        .O(\FSM_sequential_state[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h4500455500000000)) 
    \FSM_sequential_state[2]_i_4 
       (.I0(\FSM_sequential_state[2]_i_5_n_0 ),
        .I1(dout[1]),
        .I2(fifo_sof_dly),
        .I3(state[1]),
        .I4(fifo_eol_re_dly),
        .I5(state[2]),
        .O(\FSM_sequential_state[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBFFFBFFFBFFF)) 
    \FSM_sequential_state[2]_i_5 
       (.I0(\FSM_sequential_state[2]_i_6_n_0 ),
        .I1(\FSM_sequential_state[2]_i_7_n_0 ),
        .I2(\FSM_sequential_state[2]_i_8_n_0 ),
        .I3(\FSM_sequential_state[2]_i_9_n_0 ),
        .I4(\FSM_sequential_state[2]_i_10_n_0 ),
        .I5(\FSM_sequential_state[2]_i_11_n_0 ),
        .O(\FSM_sequential_state[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_sequential_state[2]_i_6 
       (.I0(vtg_lag_reg__0[12]),
        .I1(vtg_lag_reg__0[10]),
        .I2(vtg_lag_reg__0[11]),
        .I3(vtg_lag_reg__0[15]),
        .I4(vtg_lag_reg__0[13]),
        .I5(vtg_lag_reg__0[14]),
        .O(\FSM_sequential_state[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \FSM_sequential_state[2]_i_7 
       (.I0(vtg_lag_reg__0[21]),
        .I1(vtg_lag_reg__0[19]),
        .I2(vtg_lag_reg__0[20]),
        .I3(vtg_lag_reg__0[16]),
        .I4(vtg_lag_reg__0[17]),
        .I5(vtg_lag_reg__0[18]),
        .O(\FSM_sequential_state[2]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \FSM_sequential_state[2]_i_8 
       (.I0(vtg_lag_reg__0[26]),
        .I1(vtg_lag_reg__0[25]),
        .I2(vtg_lag_reg__0[22]),
        .I3(vtg_lag_reg__0[23]),
        .I4(vtg_lag_reg__0[24]),
        .O(\FSM_sequential_state[2]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \FSM_sequential_state[2]_i_9 
       (.I0(vtg_lag_reg__0[30]),
        .I1(vtg_lag_reg__0[31]),
        .I2(vtg_lag_reg__0[27]),
        .I3(vtg_lag_reg__0[28]),
        .I4(vtg_lag_reg__0[29]),
        .O(\FSM_sequential_state[2]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h1000000000002222)) 
    \FSM_sequential_state[3]_i_1 
       (.I0(state[3]),
        .I1(state[2]),
        .I2(next_state121_out),
        .I3(\FSM_sequential_state[3]_i_3_n_0 ),
        .I4(state[1]),
        .I5(state[0]),
        .O(\FSM_sequential_state[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8880888088800000)) 
    \FSM_sequential_state[3]_i_2 
       (.I0(vtg_sof_dly),
        .I1(\FSM_sequential_state[3]_i_4_n_0 ),
        .I2(\FSM_sequential_state[3]_i_5_n_0 ),
        .I3(\FSM_sequential_state[3]_i_6_n_0 ),
        .I4(\FSM_sequential_state[3]_i_7_n_0 ),
        .I5(\FSM_sequential_state[3]_i_8_n_0 ),
        .O(next_state121_out));
  LUT6 #(
    .INIT(64'hAAAAAAAA0A0AA80A)) 
    \FSM_sequential_state[3]_i_3 
       (.I0(\FSM_sequential_state[3]_i_9_n_0 ),
        .I1(status_reg[3]),
        .I2(vtg_sof_dly),
        .I3(fifo_sof_dly),
        .I4(dout[1]),
        .I5(sof_ignore),
        .O(\FSM_sequential_state[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_sequential_state[3]_i_4 
       (.I0(fifo_sof_dly),
        .I1(dout[1]),
        .O(\FSM_sequential_state[3]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \FSM_sequential_state[3]_i_5 
       (.I0(vtg_sof_cnt_reg__0[7]),
        .I1(vtg_sof_cnt_reg__0[5]),
        .I2(vtg_sof_cnt_reg__0[6]),
        .O(\FSM_sequential_state[3]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'hFFFFFEEE)) 
    \FSM_sequential_state[3]_i_6 
       (.I0(vtg_sof_cnt_reg__0[3]),
        .I1(vtg_sof_cnt_reg__0[4]),
        .I2(vtg_sof_cnt_reg__0[0]),
        .I3(vtg_sof_cnt_reg__0[1]),
        .I4(vtg_sof_cnt_reg__0[2]),
        .O(\FSM_sequential_state[3]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \FSM_sequential_state[3]_i_7 
       (.I0(fifo_sof_cnt_reg__0[7]),
        .I1(fifo_sof_cnt_reg__0[5]),
        .I2(fifo_sof_cnt_reg__0[6]),
        .O(\FSM_sequential_state[3]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'hFFFFFEEE)) 
    \FSM_sequential_state[3]_i_8 
       (.I0(fifo_sof_cnt_reg__0[3]),
        .I1(fifo_sof_cnt_reg__0[4]),
        .I2(fifo_sof_cnt_reg__0[0]),
        .I3(fifo_sof_cnt_reg__0[1]),
        .I4(fifo_sof_cnt_reg__0[2]),
        .O(\FSM_sequential_state[3]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hBBCB)) 
    \FSM_sequential_state[3]_i_9 
       (.I0(status_reg[3]),
        .I1(fifo_eol_re_dly),
        .I2(vtg_de_dly),
        .I3(vtg_active_video),
        .O(\FSM_sequential_state[3]_i_9_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_state_reg[0] 
       (.C(vid_io_out_clk),
        .CE(vid_io_out_ce),
        .D(\FSM_sequential_state[0]_i_1_n_0 ),
        .Q(state[0]),
        .R(vid_io_out_reset));
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_state_reg[1] 
       (.C(vid_io_out_clk),
        .CE(vid_io_out_ce),
        .D(\FSM_sequential_state[1]_i_1_n_0 ),
        .Q(state[1]),
        .R(vid_io_out_reset));
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_state_reg[2] 
       (.C(vid_io_out_clk),
        .CE(vid_io_out_ce),
        .D(\FSM_sequential_state[2]_i_1_n_0 ),
        .Q(state[2]),
        .R(vid_io_out_reset));
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_state_reg[3] 
       (.C(vid_io_out_clk),
        .CE(vid_io_out_ce),
        .D(\FSM_sequential_state[3]_i_1_n_0 ),
        .Q(state[3]),
        .R(vid_io_out_reset));
  LUT4 #(
    .INIT(16'hAEAA)) 
    \fifo_eol_cnt[0]_i_1 
       (.I0(fifo_eol_cnt1),
        .I1(fifo_sof_dly),
        .I2(dout[1]),
        .I3(vid_io_out_ce),
        .O(\fifo_eol_cnt[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \fifo_eol_cnt[0]_i_2 
       (.I0(vid_io_out_ce),
        .I1(fifo_eol_re_dly),
        .O(fifo_eol_cnt));
  LUT1 #(
    .INIT(2'h2)) 
    \fifo_eol_cnt[0]_i_4 
       (.I0(fifo_eol_cnt_reg[3]),
        .O(\fifo_eol_cnt[0]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \fifo_eol_cnt[0]_i_5 
       (.I0(fifo_eol_cnt_reg[2]),
        .O(\fifo_eol_cnt[0]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \fifo_eol_cnt[0]_i_6 
       (.I0(fifo_eol_cnt_reg[1]),
        .O(\fifo_eol_cnt[0]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \fifo_eol_cnt[0]_i_7 
       (.I0(fifo_eol_cnt_reg[0]),
        .O(\fifo_eol_cnt[0]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \fifo_eol_cnt[12]_i_2 
       (.I0(fifo_eol_cnt_reg[12]),
        .O(\fifo_eol_cnt[12]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \fifo_eol_cnt[4]_i_2 
       (.I0(fifo_eol_cnt_reg[7]),
        .O(\fifo_eol_cnt[4]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \fifo_eol_cnt[4]_i_3 
       (.I0(fifo_eol_cnt_reg[6]),
        .O(\fifo_eol_cnt[4]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \fifo_eol_cnt[4]_i_4 
       (.I0(fifo_eol_cnt_reg[5]),
        .O(\fifo_eol_cnt[4]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \fifo_eol_cnt[4]_i_5 
       (.I0(fifo_eol_cnt_reg[4]),
        .O(\fifo_eol_cnt[4]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \fifo_eol_cnt[8]_i_2 
       (.I0(fifo_eol_cnt_reg[11]),
        .O(\fifo_eol_cnt[8]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \fifo_eol_cnt[8]_i_3 
       (.I0(fifo_eol_cnt_reg[10]),
        .O(\fifo_eol_cnt[8]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \fifo_eol_cnt[8]_i_4 
       (.I0(fifo_eol_cnt_reg[9]),
        .O(\fifo_eol_cnt[8]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \fifo_eol_cnt[8]_i_5 
       (.I0(fifo_eol_cnt_reg[8]),
        .O(\fifo_eol_cnt[8]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_eol_cnt_dly_reg[0] 
       (.C(vid_io_out_clk),
        .CE(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ),
        .D(fifo_eol_cnt_reg[0]),
        .Q(fifo_eol_cnt_dly[0]),
        .R(fifo_eol_cnt1));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_eol_cnt_dly_reg[10] 
       (.C(vid_io_out_clk),
        .CE(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ),
        .D(fifo_eol_cnt_reg[10]),
        .Q(fifo_eol_cnt_dly[10]),
        .R(fifo_eol_cnt1));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_eol_cnt_dly_reg[11] 
       (.C(vid_io_out_clk),
        .CE(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ),
        .D(fifo_eol_cnt_reg[11]),
        .Q(fifo_eol_cnt_dly[11]),
        .R(fifo_eol_cnt1));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_eol_cnt_dly_reg[12] 
       (.C(vid_io_out_clk),
        .CE(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ),
        .D(fifo_eol_cnt_reg[12]),
        .Q(fifo_eol_cnt_dly[12]),
        .R(fifo_eol_cnt1));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_eol_cnt_dly_reg[1] 
       (.C(vid_io_out_clk),
        .CE(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ),
        .D(fifo_eol_cnt_reg[1]),
        .Q(fifo_eol_cnt_dly[1]),
        .R(fifo_eol_cnt1));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_eol_cnt_dly_reg[2] 
       (.C(vid_io_out_clk),
        .CE(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ),
        .D(fifo_eol_cnt_reg[2]),
        .Q(fifo_eol_cnt_dly[2]),
        .R(fifo_eol_cnt1));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_eol_cnt_dly_reg[3] 
       (.C(vid_io_out_clk),
        .CE(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ),
        .D(fifo_eol_cnt_reg[3]),
        .Q(fifo_eol_cnt_dly[3]),
        .R(fifo_eol_cnt1));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_eol_cnt_dly_reg[4] 
       (.C(vid_io_out_clk),
        .CE(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ),
        .D(fifo_eol_cnt_reg[4]),
        .Q(fifo_eol_cnt_dly[4]),
        .R(fifo_eol_cnt1));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_eol_cnt_dly_reg[5] 
       (.C(vid_io_out_clk),
        .CE(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ),
        .D(fifo_eol_cnt_reg[5]),
        .Q(fifo_eol_cnt_dly[5]),
        .R(fifo_eol_cnt1));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_eol_cnt_dly_reg[6] 
       (.C(vid_io_out_clk),
        .CE(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ),
        .D(fifo_eol_cnt_reg[6]),
        .Q(fifo_eol_cnt_dly[6]),
        .R(fifo_eol_cnt1));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_eol_cnt_dly_reg[7] 
       (.C(vid_io_out_clk),
        .CE(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ),
        .D(fifo_eol_cnt_reg[7]),
        .Q(fifo_eol_cnt_dly[7]),
        .R(fifo_eol_cnt1));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_eol_cnt_dly_reg[8] 
       (.C(vid_io_out_clk),
        .CE(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ),
        .D(fifo_eol_cnt_reg[8]),
        .Q(fifo_eol_cnt_dly[8]),
        .R(fifo_eol_cnt1));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_eol_cnt_dly_reg[9] 
       (.C(vid_io_out_clk),
        .CE(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ),
        .D(fifo_eol_cnt_reg[9]),
        .Q(fifo_eol_cnt_dly[9]),
        .R(fifo_eol_cnt1));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_eol_cnt_reg[0] 
       (.C(vid_io_out_clk),
        .CE(fifo_eol_cnt),
        .D(\fifo_eol_cnt_reg[0]_i_3_n_7 ),
        .Q(fifo_eol_cnt_reg[0]),
        .R(\fifo_eol_cnt[0]_i_1_n_0 ));
  CARRY4 \fifo_eol_cnt_reg[0]_i_3 
       (.CI(1'b0),
        .CO({\fifo_eol_cnt_reg[0]_i_3_n_0 ,\fifo_eol_cnt_reg[0]_i_3_n_1 ,\fifo_eol_cnt_reg[0]_i_3_n_2 ,\fifo_eol_cnt_reg[0]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\fifo_eol_cnt_reg[0]_i_3_n_4 ,\fifo_eol_cnt_reg[0]_i_3_n_5 ,\fifo_eol_cnt_reg[0]_i_3_n_6 ,\fifo_eol_cnt_reg[0]_i_3_n_7 }),
        .S({\fifo_eol_cnt[0]_i_4_n_0 ,\fifo_eol_cnt[0]_i_5_n_0 ,\fifo_eol_cnt[0]_i_6_n_0 ,\fifo_eol_cnt[0]_i_7_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_eol_cnt_reg[10] 
       (.C(vid_io_out_clk),
        .CE(fifo_eol_cnt),
        .D(\fifo_eol_cnt_reg[8]_i_1_n_5 ),
        .Q(fifo_eol_cnt_reg[10]),
        .R(\fifo_eol_cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_eol_cnt_reg[11] 
       (.C(vid_io_out_clk),
        .CE(fifo_eol_cnt),
        .D(\fifo_eol_cnt_reg[8]_i_1_n_4 ),
        .Q(fifo_eol_cnt_reg[11]),
        .R(\fifo_eol_cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_eol_cnt_reg[12] 
       (.C(vid_io_out_clk),
        .CE(fifo_eol_cnt),
        .D(\fifo_eol_cnt_reg[12]_i_1_n_7 ),
        .Q(fifo_eol_cnt_reg[12]),
        .R(\fifo_eol_cnt[0]_i_1_n_0 ));
  CARRY4 \fifo_eol_cnt_reg[12]_i_1 
       (.CI(\fifo_eol_cnt_reg[8]_i_1_n_0 ),
        .CO(\NLW_fifo_eol_cnt_reg[12]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_fifo_eol_cnt_reg[12]_i_1_O_UNCONNECTED [3:1],\fifo_eol_cnt_reg[12]_i_1_n_7 }),
        .S({1'b0,1'b0,1'b0,\fifo_eol_cnt[12]_i_2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_eol_cnt_reg[1] 
       (.C(vid_io_out_clk),
        .CE(fifo_eol_cnt),
        .D(\fifo_eol_cnt_reg[0]_i_3_n_6 ),
        .Q(fifo_eol_cnt_reg[1]),
        .R(\fifo_eol_cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_eol_cnt_reg[2] 
       (.C(vid_io_out_clk),
        .CE(fifo_eol_cnt),
        .D(\fifo_eol_cnt_reg[0]_i_3_n_5 ),
        .Q(fifo_eol_cnt_reg[2]),
        .R(\fifo_eol_cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_eol_cnt_reg[3] 
       (.C(vid_io_out_clk),
        .CE(fifo_eol_cnt),
        .D(\fifo_eol_cnt_reg[0]_i_3_n_4 ),
        .Q(fifo_eol_cnt_reg[3]),
        .R(\fifo_eol_cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_eol_cnt_reg[4] 
       (.C(vid_io_out_clk),
        .CE(fifo_eol_cnt),
        .D(\fifo_eol_cnt_reg[4]_i_1_n_7 ),
        .Q(fifo_eol_cnt_reg[4]),
        .R(\fifo_eol_cnt[0]_i_1_n_0 ));
  CARRY4 \fifo_eol_cnt_reg[4]_i_1 
       (.CI(\fifo_eol_cnt_reg[0]_i_3_n_0 ),
        .CO({\fifo_eol_cnt_reg[4]_i_1_n_0 ,\fifo_eol_cnt_reg[4]_i_1_n_1 ,\fifo_eol_cnt_reg[4]_i_1_n_2 ,\fifo_eol_cnt_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\fifo_eol_cnt_reg[4]_i_1_n_4 ,\fifo_eol_cnt_reg[4]_i_1_n_5 ,\fifo_eol_cnt_reg[4]_i_1_n_6 ,\fifo_eol_cnt_reg[4]_i_1_n_7 }),
        .S({\fifo_eol_cnt[4]_i_2_n_0 ,\fifo_eol_cnt[4]_i_3_n_0 ,\fifo_eol_cnt[4]_i_4_n_0 ,\fifo_eol_cnt[4]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_eol_cnt_reg[5] 
       (.C(vid_io_out_clk),
        .CE(fifo_eol_cnt),
        .D(\fifo_eol_cnt_reg[4]_i_1_n_6 ),
        .Q(fifo_eol_cnt_reg[5]),
        .R(\fifo_eol_cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_eol_cnt_reg[6] 
       (.C(vid_io_out_clk),
        .CE(fifo_eol_cnt),
        .D(\fifo_eol_cnt_reg[4]_i_1_n_5 ),
        .Q(fifo_eol_cnt_reg[6]),
        .R(\fifo_eol_cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_eol_cnt_reg[7] 
       (.C(vid_io_out_clk),
        .CE(fifo_eol_cnt),
        .D(\fifo_eol_cnt_reg[4]_i_1_n_4 ),
        .Q(fifo_eol_cnt_reg[7]),
        .R(\fifo_eol_cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_eol_cnt_reg[8] 
       (.C(vid_io_out_clk),
        .CE(fifo_eol_cnt),
        .D(\fifo_eol_cnt_reg[8]_i_1_n_7 ),
        .Q(fifo_eol_cnt_reg[8]),
        .R(\fifo_eol_cnt[0]_i_1_n_0 ));
  CARRY4 \fifo_eol_cnt_reg[8]_i_1 
       (.CI(\fifo_eol_cnt_reg[4]_i_1_n_0 ),
        .CO({\fifo_eol_cnt_reg[8]_i_1_n_0 ,\fifo_eol_cnt_reg[8]_i_1_n_1 ,\fifo_eol_cnt_reg[8]_i_1_n_2 ,\fifo_eol_cnt_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\fifo_eol_cnt_reg[8]_i_1_n_4 ,\fifo_eol_cnt_reg[8]_i_1_n_5 ,\fifo_eol_cnt_reg[8]_i_1_n_6 ,\fifo_eol_cnt_reg[8]_i_1_n_7 }),
        .S({\fifo_eol_cnt[8]_i_2_n_0 ,\fifo_eol_cnt[8]_i_3_n_0 ,\fifo_eol_cnt[8]_i_4_n_0 ,\fifo_eol_cnt[8]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_eol_cnt_reg[9] 
       (.C(vid_io_out_clk),
        .CE(fifo_eol_cnt),
        .D(\fifo_eol_cnt_reg[8]_i_1_n_6 ),
        .Q(fifo_eol_cnt_reg[9]),
        .R(\fifo_eol_cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    fifo_eol_dly_reg
       (.C(vid_io_out_clk),
        .CE(vid_io_out_ce),
        .D(dout[0]),
        .Q(fifo_eol_dly),
        .R(vid_io_out_reset));
  CARRY4 fifo_eol_error1_carry
       (.CI(1'b0),
        .CO({fifo_eol_error1_carry_n_0,fifo_eol_error1_carry_n_1,fifo_eol_error1_carry_n_2,fifo_eol_error1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(NLW_fifo_eol_error1_carry_O_UNCONNECTED[3:0]),
        .S({fifo_eol_error1_carry_i_1_n_0,fifo_eol_error1_carry_i_2_n_0,fifo_eol_error1_carry_i_3_n_0,fifo_eol_error1_carry_i_4_n_0}));
  CARRY4 fifo_eol_error1_carry__0
       (.CI(fifo_eol_error1_carry_n_0),
        .CO({NLW_fifo_eol_error1_carry__0_CO_UNCONNECTED[3:1],fifo_eol_error1}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O(NLW_fifo_eol_error1_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,fifo_eol_error1_carry__0_i_1_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    fifo_eol_error1_carry__0_i_1
       (.I0(fifo_eol_cnt_dly[12]),
        .I1(fifo_eol_cnt_reg[12]),
        .O(fifo_eol_error1_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    fifo_eol_error1_carry_i_1
       (.I0(fifo_eol_cnt_reg[9]),
        .I1(fifo_eol_cnt_dly[9]),
        .I2(fifo_eol_cnt_dly[11]),
        .I3(fifo_eol_cnt_reg[11]),
        .I4(fifo_eol_cnt_dly[10]),
        .I5(fifo_eol_cnt_reg[10]),
        .O(fifo_eol_error1_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    fifo_eol_error1_carry_i_2
       (.I0(fifo_eol_cnt_reg[6]),
        .I1(fifo_eol_cnt_dly[6]),
        .I2(fifo_eol_cnt_dly[8]),
        .I3(fifo_eol_cnt_reg[8]),
        .I4(fifo_eol_cnt_dly[7]),
        .I5(fifo_eol_cnt_reg[7]),
        .O(fifo_eol_error1_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    fifo_eol_error1_carry_i_3
       (.I0(fifo_eol_cnt_reg[3]),
        .I1(fifo_eol_cnt_dly[3]),
        .I2(fifo_eol_cnt_dly[5]),
        .I3(fifo_eol_cnt_reg[5]),
        .I4(fifo_eol_cnt_dly[4]),
        .I5(fifo_eol_cnt_reg[4]),
        .O(fifo_eol_error1_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    fifo_eol_error1_carry_i_4
       (.I0(fifo_eol_cnt_reg[0]),
        .I1(fifo_eol_cnt_dly[0]),
        .I2(fifo_eol_cnt_dly[2]),
        .I3(fifo_eol_cnt_reg[2]),
        .I4(fifo_eol_cnt_dly[1]),
        .I5(fifo_eol_cnt_reg[1]),
        .O(fifo_eol_error1_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF00008000)) 
    fifo_eol_error_i_1
       (.I0(fifo_eol_error_i_2_n_0),
        .I1(fifo_eol_error1),
        .I2(vid_io_out_ce),
        .I3(fifo_sof_dly),
        .I4(dout[1]),
        .I5(fifo_eol_error),
        .O(fifo_eol_error_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    fifo_eol_error_i_2
       (.I0(fifo_eol_error_i_3_n_0),
        .I1(fifo_eol_error_i_4_n_0),
        .I2(fifo_eol_cnt_dly[6]),
        .I3(fifo_eol_cnt_dly[7]),
        .I4(fifo_eol_cnt_dly[4]),
        .I5(fifo_eol_cnt_dly[5]),
        .O(fifo_eol_error_i_2_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    fifo_eol_error_i_3
       (.I0(fifo_eol_cnt_dly[11]),
        .I1(fifo_eol_cnt_dly[9]),
        .I2(fifo_eol_cnt_dly[8]),
        .I3(fifo_eol_cnt_dly[12]),
        .I4(fifo_eol_cnt_dly[10]),
        .O(fifo_eol_error_i_3_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    fifo_eol_error_i_4
       (.I0(fifo_eol_cnt_dly[2]),
        .I1(fifo_eol_cnt_dly[3]),
        .I2(fifo_eol_cnt_dly[0]),
        .I3(fifo_eol_cnt_dly[1]),
        .O(fifo_eol_error_i_4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    fifo_eol_error_reg
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(fifo_eol_error_i_1_n_0),
        .Q(fifo_eol_error),
        .R(vid_io_out_reset));
  FDRE #(
    .INIT(1'b0)) 
    fifo_eol_re_dly_reg
       (.C(vid_io_out_clk),
        .CE(vid_io_out_ce),
        .D(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ),
        .Q(fifo_eol_re_dly),
        .R(vid_io_out_reset));
  LUT3 #(
    .INIT(8'hEA)) 
    \fifo_pix_cnt[0]_i_1 
       (.I0(fifo_eol_cnt1),
        .I1(fifo_eol_re_dly),
        .I2(vid_io_out_ce),
        .O(\fifo_pix_cnt[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \fifo_pix_cnt[0]_i_2 
       (.I0(E),
        .I1(empty),
        .O(\fifo_pix_cnt[0]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \fifo_pix_cnt[0]_i_4 
       (.I0(fifo_pix_cnt_reg[3]),
        .O(\fifo_pix_cnt[0]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \fifo_pix_cnt[0]_i_5 
       (.I0(fifo_pix_cnt_reg[2]),
        .O(\fifo_pix_cnt[0]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \fifo_pix_cnt[0]_i_6 
       (.I0(fifo_pix_cnt_reg[1]),
        .O(\fifo_pix_cnt[0]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \fifo_pix_cnt[0]_i_7 
       (.I0(fifo_pix_cnt_reg[0]),
        .O(\fifo_pix_cnt[0]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \fifo_pix_cnt[12]_i_2 
       (.I0(fifo_pix_cnt_reg[12]),
        .O(\fifo_pix_cnt[12]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \fifo_pix_cnt[4]_i_2 
       (.I0(fifo_pix_cnt_reg[7]),
        .O(\fifo_pix_cnt[4]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \fifo_pix_cnt[4]_i_3 
       (.I0(fifo_pix_cnt_reg[6]),
        .O(\fifo_pix_cnt[4]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \fifo_pix_cnt[4]_i_4 
       (.I0(fifo_pix_cnt_reg[5]),
        .O(\fifo_pix_cnt[4]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \fifo_pix_cnt[4]_i_5 
       (.I0(fifo_pix_cnt_reg[4]),
        .O(\fifo_pix_cnt[4]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \fifo_pix_cnt[8]_i_2 
       (.I0(fifo_pix_cnt_reg[11]),
        .O(\fifo_pix_cnt[8]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \fifo_pix_cnt[8]_i_3 
       (.I0(fifo_pix_cnt_reg[10]),
        .O(\fifo_pix_cnt[8]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \fifo_pix_cnt[8]_i_4 
       (.I0(fifo_pix_cnt_reg[9]),
        .O(\fifo_pix_cnt[8]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \fifo_pix_cnt[8]_i_5 
       (.I0(fifo_pix_cnt_reg[8]),
        .O(\fifo_pix_cnt[8]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hEEEAAABB)) 
    \fifo_pix_cnt_dly[12]_i_1 
       (.I0(vid_io_out_reset),
        .I1(state[2]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[3]),
        .O(fifo_eol_cnt1));
  LUT4 #(
    .INIT(16'hA800)) 
    \fifo_pix_cnt_dly[12]_i_2 
       (.I0(vid_io_out_ce),
        .I1(\fifo_pix_cnt_dly[12]_i_3_n_0 ),
        .I2(fifo_pix_cnt_dly1__11),
        .I3(fifo_eol_re_dly),
        .O(fifo_pix_cnt_dly_0));
  LUT5 #(
    .INIT(32'hFFFEFFFF)) 
    \fifo_pix_cnt_dly[12]_i_3 
       (.I0(\fifo_pix_cnt_dly[12]_i_5_n_0 ),
        .I1(fifo_eol_cnt_reg[5]),
        .I2(fifo_eol_cnt_reg[4]),
        .I3(fifo_eol_cnt_reg[6]),
        .I4(\fifo_pix_cnt_dly[12]_i_6_n_0 ),
        .O(\fifo_pix_cnt_dly[12]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFEFFFF)) 
    \fifo_pix_cnt_dly[12]_i_4 
       (.I0(\fifo_pix_cnt_dly[12]_i_7_n_0 ),
        .I1(fifo_pix_cnt_dly[5]),
        .I2(fifo_pix_cnt_dly[4]),
        .I3(fifo_pix_cnt_dly[6]),
        .I4(\fifo_pix_cnt_dly[12]_i_8_n_0 ),
        .O(fifo_pix_cnt_dly1__11));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \fifo_pix_cnt_dly[12]_i_5 
       (.I0(fifo_eol_cnt_reg[1]),
        .I1(fifo_eol_cnt_reg[0]),
        .I2(fifo_eol_cnt_reg[3]),
        .I3(fifo_eol_cnt_reg[2]),
        .O(\fifo_pix_cnt_dly[12]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \fifo_pix_cnt_dly[12]_i_6 
       (.I0(fifo_eol_cnt_reg[11]),
        .I1(fifo_eol_cnt_reg[10]),
        .I2(fifo_eol_cnt_reg[12]),
        .I3(fifo_eol_cnt_reg[7]),
        .I4(fifo_eol_cnt_reg[8]),
        .I5(fifo_eol_cnt_reg[9]),
        .O(\fifo_pix_cnt_dly[12]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \fifo_pix_cnt_dly[12]_i_7 
       (.I0(fifo_pix_cnt_dly[1]),
        .I1(fifo_pix_cnt_dly[0]),
        .I2(fifo_pix_cnt_dly[3]),
        .I3(fifo_pix_cnt_dly[2]),
        .O(\fifo_pix_cnt_dly[12]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \fifo_pix_cnt_dly[12]_i_8 
       (.I0(fifo_pix_cnt_dly[11]),
        .I1(fifo_pix_cnt_dly[10]),
        .I2(fifo_pix_cnt_dly[12]),
        .I3(fifo_pix_cnt_dly[7]),
        .I4(fifo_pix_cnt_dly[8]),
        .I5(fifo_pix_cnt_dly[9]),
        .O(\fifo_pix_cnt_dly[12]_i_8_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_pix_cnt_dly_reg[0] 
       (.C(vid_io_out_clk),
        .CE(fifo_pix_cnt_dly_0),
        .D(fifo_pix_cnt_reg[0]),
        .Q(fifo_pix_cnt_dly[0]),
        .R(fifo_eol_cnt1));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_pix_cnt_dly_reg[10] 
       (.C(vid_io_out_clk),
        .CE(fifo_pix_cnt_dly_0),
        .D(fifo_pix_cnt_reg[10]),
        .Q(fifo_pix_cnt_dly[10]),
        .R(fifo_eol_cnt1));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_pix_cnt_dly_reg[11] 
       (.C(vid_io_out_clk),
        .CE(fifo_pix_cnt_dly_0),
        .D(fifo_pix_cnt_reg[11]),
        .Q(fifo_pix_cnt_dly[11]),
        .R(fifo_eol_cnt1));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_pix_cnt_dly_reg[12] 
       (.C(vid_io_out_clk),
        .CE(fifo_pix_cnt_dly_0),
        .D(fifo_pix_cnt_reg[12]),
        .Q(fifo_pix_cnt_dly[12]),
        .R(fifo_eol_cnt1));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_pix_cnt_dly_reg[1] 
       (.C(vid_io_out_clk),
        .CE(fifo_pix_cnt_dly_0),
        .D(fifo_pix_cnt_reg[1]),
        .Q(fifo_pix_cnt_dly[1]),
        .R(fifo_eol_cnt1));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_pix_cnt_dly_reg[2] 
       (.C(vid_io_out_clk),
        .CE(fifo_pix_cnt_dly_0),
        .D(fifo_pix_cnt_reg[2]),
        .Q(fifo_pix_cnt_dly[2]),
        .R(fifo_eol_cnt1));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_pix_cnt_dly_reg[3] 
       (.C(vid_io_out_clk),
        .CE(fifo_pix_cnt_dly_0),
        .D(fifo_pix_cnt_reg[3]),
        .Q(fifo_pix_cnt_dly[3]),
        .R(fifo_eol_cnt1));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_pix_cnt_dly_reg[4] 
       (.C(vid_io_out_clk),
        .CE(fifo_pix_cnt_dly_0),
        .D(fifo_pix_cnt_reg[4]),
        .Q(fifo_pix_cnt_dly[4]),
        .R(fifo_eol_cnt1));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_pix_cnt_dly_reg[5] 
       (.C(vid_io_out_clk),
        .CE(fifo_pix_cnt_dly_0),
        .D(fifo_pix_cnt_reg[5]),
        .Q(fifo_pix_cnt_dly[5]),
        .R(fifo_eol_cnt1));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_pix_cnt_dly_reg[6] 
       (.C(vid_io_out_clk),
        .CE(fifo_pix_cnt_dly_0),
        .D(fifo_pix_cnt_reg[6]),
        .Q(fifo_pix_cnt_dly[6]),
        .R(fifo_eol_cnt1));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_pix_cnt_dly_reg[7] 
       (.C(vid_io_out_clk),
        .CE(fifo_pix_cnt_dly_0),
        .D(fifo_pix_cnt_reg[7]),
        .Q(fifo_pix_cnt_dly[7]),
        .R(fifo_eol_cnt1));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_pix_cnt_dly_reg[8] 
       (.C(vid_io_out_clk),
        .CE(fifo_pix_cnt_dly_0),
        .D(fifo_pix_cnt_reg[8]),
        .Q(fifo_pix_cnt_dly[8]),
        .R(fifo_eol_cnt1));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_pix_cnt_dly_reg[9] 
       (.C(vid_io_out_clk),
        .CE(fifo_pix_cnt_dly_0),
        .D(fifo_pix_cnt_reg[9]),
        .Q(fifo_pix_cnt_dly[9]),
        .R(fifo_eol_cnt1));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_pix_cnt_reg[0] 
       (.C(vid_io_out_clk),
        .CE(\fifo_pix_cnt[0]_i_2_n_0 ),
        .D(\fifo_pix_cnt_reg[0]_i_3_n_7 ),
        .Q(fifo_pix_cnt_reg[0]),
        .R(\fifo_pix_cnt[0]_i_1_n_0 ));
  CARRY4 \fifo_pix_cnt_reg[0]_i_3 
       (.CI(1'b0),
        .CO({\fifo_pix_cnt_reg[0]_i_3_n_0 ,\fifo_pix_cnt_reg[0]_i_3_n_1 ,\fifo_pix_cnt_reg[0]_i_3_n_2 ,\fifo_pix_cnt_reg[0]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\fifo_pix_cnt_reg[0]_i_3_n_4 ,\fifo_pix_cnt_reg[0]_i_3_n_5 ,\fifo_pix_cnt_reg[0]_i_3_n_6 ,\fifo_pix_cnt_reg[0]_i_3_n_7 }),
        .S({\fifo_pix_cnt[0]_i_4_n_0 ,\fifo_pix_cnt[0]_i_5_n_0 ,\fifo_pix_cnt[0]_i_6_n_0 ,\fifo_pix_cnt[0]_i_7_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_pix_cnt_reg[10] 
       (.C(vid_io_out_clk),
        .CE(\fifo_pix_cnt[0]_i_2_n_0 ),
        .D(\fifo_pix_cnt_reg[8]_i_1_n_5 ),
        .Q(fifo_pix_cnt_reg[10]),
        .R(\fifo_pix_cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_pix_cnt_reg[11] 
       (.C(vid_io_out_clk),
        .CE(\fifo_pix_cnt[0]_i_2_n_0 ),
        .D(\fifo_pix_cnt_reg[8]_i_1_n_4 ),
        .Q(fifo_pix_cnt_reg[11]),
        .R(\fifo_pix_cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_pix_cnt_reg[12] 
       (.C(vid_io_out_clk),
        .CE(\fifo_pix_cnt[0]_i_2_n_0 ),
        .D(\fifo_pix_cnt_reg[12]_i_1_n_7 ),
        .Q(fifo_pix_cnt_reg[12]),
        .R(\fifo_pix_cnt[0]_i_1_n_0 ));
  CARRY4 \fifo_pix_cnt_reg[12]_i_1 
       (.CI(\fifo_pix_cnt_reg[8]_i_1_n_0 ),
        .CO(\NLW_fifo_pix_cnt_reg[12]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_fifo_pix_cnt_reg[12]_i_1_O_UNCONNECTED [3:1],\fifo_pix_cnt_reg[12]_i_1_n_7 }),
        .S({1'b0,1'b0,1'b0,\fifo_pix_cnt[12]_i_2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_pix_cnt_reg[1] 
       (.C(vid_io_out_clk),
        .CE(\fifo_pix_cnt[0]_i_2_n_0 ),
        .D(\fifo_pix_cnt_reg[0]_i_3_n_6 ),
        .Q(fifo_pix_cnt_reg[1]),
        .R(\fifo_pix_cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_pix_cnt_reg[2] 
       (.C(vid_io_out_clk),
        .CE(\fifo_pix_cnt[0]_i_2_n_0 ),
        .D(\fifo_pix_cnt_reg[0]_i_3_n_5 ),
        .Q(fifo_pix_cnt_reg[2]),
        .R(\fifo_pix_cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_pix_cnt_reg[3] 
       (.C(vid_io_out_clk),
        .CE(\fifo_pix_cnt[0]_i_2_n_0 ),
        .D(\fifo_pix_cnt_reg[0]_i_3_n_4 ),
        .Q(fifo_pix_cnt_reg[3]),
        .R(\fifo_pix_cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_pix_cnt_reg[4] 
       (.C(vid_io_out_clk),
        .CE(\fifo_pix_cnt[0]_i_2_n_0 ),
        .D(\fifo_pix_cnt_reg[4]_i_1_n_7 ),
        .Q(fifo_pix_cnt_reg[4]),
        .R(\fifo_pix_cnt[0]_i_1_n_0 ));
  CARRY4 \fifo_pix_cnt_reg[4]_i_1 
       (.CI(\fifo_pix_cnt_reg[0]_i_3_n_0 ),
        .CO({\fifo_pix_cnt_reg[4]_i_1_n_0 ,\fifo_pix_cnt_reg[4]_i_1_n_1 ,\fifo_pix_cnt_reg[4]_i_1_n_2 ,\fifo_pix_cnt_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\fifo_pix_cnt_reg[4]_i_1_n_4 ,\fifo_pix_cnt_reg[4]_i_1_n_5 ,\fifo_pix_cnt_reg[4]_i_1_n_6 ,\fifo_pix_cnt_reg[4]_i_1_n_7 }),
        .S({\fifo_pix_cnt[4]_i_2_n_0 ,\fifo_pix_cnt[4]_i_3_n_0 ,\fifo_pix_cnt[4]_i_4_n_0 ,\fifo_pix_cnt[4]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_pix_cnt_reg[5] 
       (.C(vid_io_out_clk),
        .CE(\fifo_pix_cnt[0]_i_2_n_0 ),
        .D(\fifo_pix_cnt_reg[4]_i_1_n_6 ),
        .Q(fifo_pix_cnt_reg[5]),
        .R(\fifo_pix_cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_pix_cnt_reg[6] 
       (.C(vid_io_out_clk),
        .CE(\fifo_pix_cnt[0]_i_2_n_0 ),
        .D(\fifo_pix_cnt_reg[4]_i_1_n_5 ),
        .Q(fifo_pix_cnt_reg[6]),
        .R(\fifo_pix_cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_pix_cnt_reg[7] 
       (.C(vid_io_out_clk),
        .CE(\fifo_pix_cnt[0]_i_2_n_0 ),
        .D(\fifo_pix_cnt_reg[4]_i_1_n_4 ),
        .Q(fifo_pix_cnt_reg[7]),
        .R(\fifo_pix_cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_pix_cnt_reg[8] 
       (.C(vid_io_out_clk),
        .CE(\fifo_pix_cnt[0]_i_2_n_0 ),
        .D(\fifo_pix_cnt_reg[8]_i_1_n_7 ),
        .Q(fifo_pix_cnt_reg[8]),
        .R(\fifo_pix_cnt[0]_i_1_n_0 ));
  CARRY4 \fifo_pix_cnt_reg[8]_i_1 
       (.CI(\fifo_pix_cnt_reg[4]_i_1_n_0 ),
        .CO({\fifo_pix_cnt_reg[8]_i_1_n_0 ,\fifo_pix_cnt_reg[8]_i_1_n_1 ,\fifo_pix_cnt_reg[8]_i_1_n_2 ,\fifo_pix_cnt_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\fifo_pix_cnt_reg[8]_i_1_n_4 ,\fifo_pix_cnt_reg[8]_i_1_n_5 ,\fifo_pix_cnt_reg[8]_i_1_n_6 ,\fifo_pix_cnt_reg[8]_i_1_n_7 }),
        .S({\fifo_pix_cnt[8]_i_2_n_0 ,\fifo_pix_cnt[8]_i_3_n_0 ,\fifo_pix_cnt[8]_i_4_n_0 ,\fifo_pix_cnt[8]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_pix_cnt_reg[9] 
       (.C(vid_io_out_clk),
        .CE(\fifo_pix_cnt[0]_i_2_n_0 ),
        .D(\fifo_pix_cnt_reg[8]_i_1_n_6 ),
        .Q(fifo_pix_cnt_reg[9]),
        .R(\fifo_pix_cnt[0]_i_1_n_0 ));
  CARRY4 fifo_pix_error1_carry
       (.CI(1'b0),
        .CO({fifo_pix_error1_carry_n_0,fifo_pix_error1_carry_n_1,fifo_pix_error1_carry_n_2,fifo_pix_error1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(NLW_fifo_pix_error1_carry_O_UNCONNECTED[3:0]),
        .S({fifo_pix_error1_carry_i_1_n_0,fifo_pix_error1_carry_i_2_n_0,fifo_pix_error1_carry_i_3_n_0,fifo_pix_error1_carry_i_4_n_0}));
  CARRY4 fifo_pix_error1_carry__0
       (.CI(fifo_pix_error1_carry_n_0),
        .CO({NLW_fifo_pix_error1_carry__0_CO_UNCONNECTED[3:1],fifo_pix_error1}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O(NLW_fifo_pix_error1_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,fifo_pix_error1_carry__0_i_1_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    fifo_pix_error1_carry__0_i_1
       (.I0(fifo_pix_cnt_dly[12]),
        .I1(fifo_pix_cnt_reg[12]),
        .O(fifo_pix_error1_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    fifo_pix_error1_carry_i_1
       (.I0(fifo_pix_cnt_reg[9]),
        .I1(fifo_pix_cnt_dly[9]),
        .I2(fifo_pix_cnt_dly[11]),
        .I3(fifo_pix_cnt_reg[11]),
        .I4(fifo_pix_cnt_dly[10]),
        .I5(fifo_pix_cnt_reg[10]),
        .O(fifo_pix_error1_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    fifo_pix_error1_carry_i_2
       (.I0(fifo_pix_cnt_reg[6]),
        .I1(fifo_pix_cnt_dly[6]),
        .I2(fifo_pix_cnt_dly[8]),
        .I3(fifo_pix_cnt_reg[8]),
        .I4(fifo_pix_cnt_dly[7]),
        .I5(fifo_pix_cnt_reg[7]),
        .O(fifo_pix_error1_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    fifo_pix_error1_carry_i_3
       (.I0(fifo_pix_cnt_reg[3]),
        .I1(fifo_pix_cnt_dly[3]),
        .I2(fifo_pix_cnt_dly[5]),
        .I3(fifo_pix_cnt_reg[5]),
        .I4(fifo_pix_cnt_dly[4]),
        .I5(fifo_pix_cnt_reg[4]),
        .O(fifo_pix_error1_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    fifo_pix_error1_carry_i_4
       (.I0(fifo_pix_cnt_reg[0]),
        .I1(fifo_pix_cnt_dly[0]),
        .I2(fifo_pix_cnt_dly[2]),
        .I3(fifo_pix_cnt_reg[2]),
        .I4(fifo_pix_cnt_dly[1]),
        .I5(fifo_pix_cnt_reg[1]),
        .O(fifo_pix_error1_carry_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hFFF7AA00)) 
    fifo_pix_error_i_1
       (.I0(vid_io_out_ce),
        .I1(fifo_sof_dly),
        .I2(dout[1]),
        .I3(fifo_pix_error0),
        .I4(fifo_pix_error),
        .O(fifo_pix_error_i_1_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    fifo_pix_error_i_2
       (.I0(fifo_pix_error1),
        .I1(fifo_eol_re_dly),
        .I2(fifo_pix_cnt_dly1__11),
        .O(fifo_pix_error0));
  FDRE #(
    .INIT(1'b0)) 
    fifo_pix_error_reg
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(fifo_pix_error_i_1_n_0),
        .Q(fifo_pix_error),
        .R(vid_io_out_reset));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \fifo_sof_cnt[0]_i_1 
       (.I0(fifo_sof_cnt_reg__0[0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \fifo_sof_cnt[1]_i_1 
       (.I0(fifo_sof_cnt_reg__0[0]),
        .I1(fifo_sof_cnt_reg__0[1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \fifo_sof_cnt[2]_i_1 
       (.I0(fifo_sof_cnt_reg__0[0]),
        .I1(fifo_sof_cnt_reg__0[1]),
        .I2(fifo_sof_cnt_reg__0[2]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \fifo_sof_cnt[3]_i_1 
       (.I0(fifo_sof_cnt_reg__0[1]),
        .I1(fifo_sof_cnt_reg__0[0]),
        .I2(fifo_sof_cnt_reg__0[2]),
        .I3(fifo_sof_cnt_reg__0[3]),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \fifo_sof_cnt[4]_i_1 
       (.I0(fifo_sof_cnt_reg__0[2]),
        .I1(fifo_sof_cnt_reg__0[0]),
        .I2(fifo_sof_cnt_reg__0[1]),
        .I3(fifo_sof_cnt_reg__0[3]),
        .I4(fifo_sof_cnt_reg__0[4]),
        .O(p_0_in__0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \fifo_sof_cnt[5]_i_1 
       (.I0(fifo_sof_cnt_reg__0[3]),
        .I1(fifo_sof_cnt_reg__0[1]),
        .I2(fifo_sof_cnt_reg__0[0]),
        .I3(fifo_sof_cnt_reg__0[2]),
        .I4(fifo_sof_cnt_reg__0[4]),
        .I5(fifo_sof_cnt_reg__0[5]),
        .O(p_0_in__0[5]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \fifo_sof_cnt[6]_i_1 
       (.I0(\fifo_sof_cnt[7]_i_2_n_0 ),
        .I1(fifo_sof_cnt_reg__0[6]),
        .O(p_0_in__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \fifo_sof_cnt[7]_i_1 
       (.I0(\fifo_sof_cnt[7]_i_2_n_0 ),
        .I1(fifo_sof_cnt_reg__0[6]),
        .I2(fifo_sof_cnt_reg__0[7]),
        .O(p_0_in__0[7]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \fifo_sof_cnt[7]_i_2 
       (.I0(fifo_sof_cnt_reg__0[5]),
        .I1(fifo_sof_cnt_reg__0[3]),
        .I2(fifo_sof_cnt_reg__0[1]),
        .I3(fifo_sof_cnt_reg__0[0]),
        .I4(fifo_sof_cnt_reg__0[2]),
        .I5(fifo_sof_cnt_reg__0[4]),
        .O(\fifo_sof_cnt[7]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_sof_cnt_reg[0] 
       (.C(vid_io_out_clk),
        .CE(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ),
        .D(p_0_in__0[0]),
        .Q(fifo_sof_cnt_reg__0[0]),
        .R(vtg_sof_cnt0));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_sof_cnt_reg[1] 
       (.C(vid_io_out_clk),
        .CE(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ),
        .D(p_0_in__0[1]),
        .Q(fifo_sof_cnt_reg__0[1]),
        .R(vtg_sof_cnt0));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_sof_cnt_reg[2] 
       (.C(vid_io_out_clk),
        .CE(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ),
        .D(p_0_in__0[2]),
        .Q(fifo_sof_cnt_reg__0[2]),
        .R(vtg_sof_cnt0));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_sof_cnt_reg[3] 
       (.C(vid_io_out_clk),
        .CE(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ),
        .D(p_0_in__0[3]),
        .Q(fifo_sof_cnt_reg__0[3]),
        .R(vtg_sof_cnt0));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_sof_cnt_reg[4] 
       (.C(vid_io_out_clk),
        .CE(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ),
        .D(p_0_in__0[4]),
        .Q(fifo_sof_cnt_reg__0[4]),
        .R(vtg_sof_cnt0));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_sof_cnt_reg[5] 
       (.C(vid_io_out_clk),
        .CE(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ),
        .D(p_0_in__0[5]),
        .Q(fifo_sof_cnt_reg__0[5]),
        .R(vtg_sof_cnt0));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_sof_cnt_reg[6] 
       (.C(vid_io_out_clk),
        .CE(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ),
        .D(p_0_in__0[6]),
        .Q(fifo_sof_cnt_reg__0[6]),
        .R(vtg_sof_cnt0));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_sof_cnt_reg[7] 
       (.C(vid_io_out_clk),
        .CE(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ),
        .D(p_0_in__0[7]),
        .Q(fifo_sof_cnt_reg__0[7]),
        .R(vtg_sof_cnt0));
  FDRE #(
    .INIT(1'b0)) 
    fifo_sof_dly_reg
       (.C(vid_io_out_clk),
        .CE(vid_io_out_ce),
        .D(dout[1]),
        .Q(fifo_sof_dly),
        .R(vid_io_out_reset));
  LUT6 #(
    .INIT(64'h222AA88B00000000)) 
    \in_data_mux[23]_i_1 
       (.I0(vtg_active_video),
        .I1(state[3]),
        .I2(state[0]),
        .I3(state[1]),
        .I4(state[2]),
        .I5(vid_io_out_ce),
        .O(E));
  LUT6 #(
    .INIT(64'hFFFFFEFFFFFFFFFF)) 
    in_de_mux_i_1
       (.I0(state[0]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[3]),
        .I4(vid_io_out_reset),
        .I5(fivid_reset_full_frame),
        .O(\in_data_mux_reg[0] ));
  LUT4 #(
    .INIT(16'h0100)) 
    locked_INST_0
       (.I0(state[0]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[3]),
        .O(locked));
  LUT5 #(
    .INIT(32'hFFFFFFFD)) 
    \next_state1_inferred__0/FSM_sequential_state[1]_i_7 
       (.I0(\next_state1_inferred__0/FSM_sequential_state[1]_i_8_n_0 ),
        .I1(rd_data_count[5]),
        .I2(rd_data_count[6]),
        .I3(rd_data_count[8]),
        .I4(rd_data_count[7]),
        .O(\next_state1_inferred__0/FSM_sequential_state[1]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h00000111)) 
    \next_state1_inferred__0/FSM_sequential_state[1]_i_8 
       (.I0(rd_data_count[4]),
        .I1(rd_data_count[3]),
        .I2(rd_data_count[1]),
        .I3(rd_data_count[0]),
        .I4(rd_data_count[2]),
        .O(\next_state1_inferred__0/FSM_sequential_state[1]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFDF00)) 
    sof_ignore_i_1
       (.I0(\fifo_pix_cnt_dly[12]_i_3_n_0 ),
        .I1(dout[2]),
        .I2(vid_io_out_ce),
        .I3(sof_ignore),
        .I4(sof_ignore0),
        .O(sof_ignore_i_1_n_0));
  FDRE #(
    .INIT(1'b1)) 
    sof_ignore_reg
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(sof_ignore_i_1_n_0),
        .Q(sof_ignore),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h1D18)) 
    \state_dly[0]_i_1 
       (.I0(state[3]),
        .I1(state[0]),
        .I2(state[2]),
        .I3(state[1]),
        .O(state_reg[0]));
  LUT4 #(
    .INIT(16'h41E4)) 
    \state_dly[1]_i_1 
       (.I0(state[3]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(state[2]),
        .O(state_reg[1]));
  LUT4 #(
    .INIT(16'h5460)) 
    \state_dly[2]_i_1 
       (.I0(state[3]),
        .I1(state[0]),
        .I2(state[2]),
        .I3(state[1]),
        .O(state_reg[2]));
  LUT2 #(
    .INIT(4'h2)) 
    \state_dly[3]_i_1 
       (.I0(vid_io_out_ce),
        .I1(vid_io_out_reset),
        .O(\state_dly[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h5700)) 
    \state_dly[3]_i_2 
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[0]),
        .I3(state[3]),
        .O(state_reg[3]));
  FDRE #(
    .INIT(1'b0)) 
    \state_dly_reg[0] 
       (.C(vid_io_out_clk),
        .CE(\state_dly[3]_i_1_n_0 ),
        .D(state_reg[0]),
        .Q(state_dly[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_dly_reg[1] 
       (.C(vid_io_out_clk),
        .CE(\state_dly[3]_i_1_n_0 ),
        .D(state_reg[1]),
        .Q(state_dly[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_dly_reg[2] 
       (.C(vid_io_out_clk),
        .CE(\state_dly[3]_i_1_n_0 ),
        .D(state_reg[2]),
        .Q(state_dly[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_dly_reg[3] 
       (.C(vid_io_out_clk),
        .CE(\state_dly[3]_i_1_n_0 ),
        .D(state_reg[3]),
        .Q(state_dly[3]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hFF80)) 
    \status_reg[0]_i_1 
       (.I0(status_reg1),
        .I1(status_reg[0]),
        .I2(vid_io_out_ce),
        .I3(status[0]),
        .O(\status_reg[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \status_reg[0]_i_2 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[3]),
        .O(status_reg[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFF20000000)) 
    \status_reg[10]_i_1 
       (.I0(status_reg1),
        .I1(state[0]),
        .I2(\status_reg[11]_i_2_n_0 ),
        .I3(state[3]),
        .I4(vid_io_out_ce),
        .I5(status[10]),
        .O(\status_reg[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF80000000)) 
    \status_reg[11]_i_1 
       (.I0(status_reg1),
        .I1(state[0]),
        .I2(\status_reg[11]_i_2_n_0 ),
        .I3(state[3]),
        .I4(vid_io_out_ce),
        .I5(status[11]),
        .O(\status_reg[11]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \status_reg[11]_i_2 
       (.I0(state[1]),
        .I1(state[2]),
        .O(\status_reg[11]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF8000)) 
    \status_reg[12]_i_1 
       (.I0(status_reg1),
        .I1(state[2]),
        .I2(state[3]),
        .I3(vid_io_out_ce),
        .I4(status[12]),
        .O(\status_reg[12]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF6FFFFF6)) 
    \status_reg[12]_i_2 
       (.I0(state_dly[3]),
        .I1(state_reg[3]),
        .I2(\status_reg[12]_i_3_n_0 ),
        .I3(state_reg[0]),
        .I4(state_dly[0]),
        .O(status_reg1));
  LUT6 #(
    .INIT(64'hE7EBD7DEEBBDEDEE)) 
    \status_reg[12]_i_3 
       (.I0(state_dly[1]),
        .I1(state_dly[2]),
        .I2(state[3]),
        .I3(state[0]),
        .I4(state[2]),
        .I5(state[1]),
        .O(\status_reg[12]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00200000)) 
    \status_reg[1]_i_1 
       (.I0(status_reg1),
        .I1(state[0]),
        .I2(\status_reg[11]_i_2_n_0 ),
        .I3(state[3]),
        .I4(vid_io_out_ce),
        .I5(status[1]),
        .O(\status_reg[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00800000)) 
    \status_reg[2]_i_1 
       (.I0(status_reg1),
        .I1(state[0]),
        .I2(\status_reg[9]_i_2_n_0 ),
        .I3(state[3]),
        .I4(vid_io_out_ce),
        .I5(status[2]),
        .O(\status_reg[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFF80)) 
    \status_reg[3]_i_1 
       (.I0(status_reg1),
        .I1(status_reg[3]),
        .I2(vid_io_out_ce),
        .I3(status[3]),
        .O(\status_reg[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0004)) 
    \status_reg[3]_i_2 
       (.I0(state[0]),
        .I1(state[2]),
        .I2(state[1]),
        .I3(state[3]),
        .O(status_reg[3]));
  LUT6 #(
    .INIT(64'hFFFFFFFF00800000)) 
    \status_reg[4]_i_1 
       (.I0(status_reg1),
        .I1(state[0]),
        .I2(\status_reg[4]_i_2_n_0 ),
        .I3(state[3]),
        .I4(vid_io_out_ce),
        .I5(status[4]),
        .O(\status_reg[4]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \status_reg[4]_i_2 
       (.I0(state[2]),
        .I1(state[1]),
        .O(\status_reg[4]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFF80)) 
    \status_reg[5]_i_1 
       (.I0(status_reg1),
        .I1(status_reg[5]),
        .I2(vid_io_out_ce),
        .I3(status[5]),
        .O(\status_reg[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0040)) 
    \status_reg[5]_i_2 
       (.I0(state[0]),
        .I1(state[2]),
        .I2(state[1]),
        .I3(state[3]),
        .O(status_reg[5]));
  LUT6 #(
    .INIT(64'hFFFFFFFF00800000)) 
    \status_reg[6]_i_1 
       (.I0(status_reg1),
        .I1(state[0]),
        .I2(\status_reg[6]_i_2_n_0 ),
        .I3(state[3]),
        .I4(vid_io_out_ce),
        .I5(status[6]),
        .O(\status_reg[6]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \status_reg[6]_i_2 
       (.I0(state[2]),
        .I1(state[1]),
        .O(\status_reg[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00800000)) 
    \status_reg[7]_i_1 
       (.I0(status_reg1),
        .I1(state[0]),
        .I2(\status_reg[11]_i_2_n_0 ),
        .I3(state[3]),
        .I4(vid_io_out_ce),
        .I5(status[7]),
        .O(\status_reg[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFF80)) 
    \status_reg[8]_i_1 
       (.I0(status_reg1),
        .I1(locked),
        .I2(vid_io_out_ce),
        .I3(status[8]),
        .O(\status_reg[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF80000000)) 
    \status_reg[9]_i_1 
       (.I0(status_reg1),
        .I1(state[0]),
        .I2(\status_reg[9]_i_2_n_0 ),
        .I3(state[3]),
        .I4(vid_io_out_ce),
        .I5(status[9]),
        .O(\status_reg[9]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \status_reg[9]_i_2 
       (.I0(state[1]),
        .I1(state[2]),
        .O(\status_reg[9]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \status_reg_reg[0] 
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(\status_reg[0]_i_1_n_0 ),
        .Q(status[0]),
        .R(vid_io_out_reset));
  FDRE #(
    .INIT(1'b0)) 
    \status_reg_reg[10] 
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(\status_reg[10]_i_1_n_0 ),
        .Q(status[10]),
        .R(vid_io_out_reset));
  FDRE #(
    .INIT(1'b0)) 
    \status_reg_reg[11] 
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(\status_reg[11]_i_1_n_0 ),
        .Q(status[11]),
        .R(vid_io_out_reset));
  FDRE #(
    .INIT(1'b0)) 
    \status_reg_reg[12] 
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(\status_reg[12]_i_1_n_0 ),
        .Q(status[12]),
        .R(vid_io_out_reset));
  FDRE #(
    .INIT(1'b0)) 
    \status_reg_reg[13] 
       (.C(vid_io_out_clk),
        .CE(vid_io_out_ce),
        .D(fifo_pix_error),
        .Q(status[13]),
        .R(vid_io_out_reset));
  FDRE #(
    .INIT(1'b0)) 
    \status_reg_reg[14] 
       (.C(vid_io_out_clk),
        .CE(vid_io_out_ce),
        .D(fifo_eol_error),
        .Q(status[14]),
        .R(vid_io_out_reset));
  FDRE #(
    .INIT(1'b0)) 
    \status_reg_reg[16] 
       (.C(vid_io_out_clk),
        .CE(vid_io_out_ce),
        .D(vtg_lag_reg[0]),
        .Q(status[15]),
        .R(vid_io_out_reset));
  FDRE #(
    .INIT(1'b0)) 
    \status_reg_reg[17] 
       (.C(vid_io_out_clk),
        .CE(vid_io_out_ce),
        .D(vtg_lag_reg[1]),
        .Q(status[16]),
        .R(vid_io_out_reset));
  FDRE #(
    .INIT(1'b0)) 
    \status_reg_reg[18] 
       (.C(vid_io_out_clk),
        .CE(vid_io_out_ce),
        .D(vtg_lag_reg[2]),
        .Q(status[17]),
        .R(vid_io_out_reset));
  FDRE #(
    .INIT(1'b0)) 
    \status_reg_reg[19] 
       (.C(vid_io_out_clk),
        .CE(vid_io_out_ce),
        .D(vtg_lag_reg[3]),
        .Q(status[18]),
        .R(vid_io_out_reset));
  FDRE #(
    .INIT(1'b0)) 
    \status_reg_reg[1] 
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(\status_reg[1]_i_1_n_0 ),
        .Q(status[1]),
        .R(vid_io_out_reset));
  FDRE #(
    .INIT(1'b0)) 
    \status_reg_reg[20] 
       (.C(vid_io_out_clk),
        .CE(vid_io_out_ce),
        .D(vtg_lag_reg[4]),
        .Q(status[19]),
        .R(vid_io_out_reset));
  FDRE #(
    .INIT(1'b0)) 
    \status_reg_reg[21] 
       (.C(vid_io_out_clk),
        .CE(vid_io_out_ce),
        .D(vtg_lag_reg[5]),
        .Q(status[20]),
        .R(vid_io_out_reset));
  FDRE #(
    .INIT(1'b0)) 
    \status_reg_reg[22] 
       (.C(vid_io_out_clk),
        .CE(vid_io_out_ce),
        .D(vtg_lag_reg[6]),
        .Q(status[21]),
        .R(vid_io_out_reset));
  FDRE #(
    .INIT(1'b0)) 
    \status_reg_reg[23] 
       (.C(vid_io_out_clk),
        .CE(vid_io_out_ce),
        .D(vtg_lag_reg[7]),
        .Q(status[22]),
        .R(vid_io_out_reset));
  FDRE #(
    .INIT(1'b0)) 
    \status_reg_reg[24] 
       (.C(vid_io_out_clk),
        .CE(vid_io_out_ce),
        .D(vtg_lag_reg[8]),
        .Q(status[23]),
        .R(vid_io_out_reset));
  FDRE #(
    .INIT(1'b0)) 
    \status_reg_reg[25] 
       (.C(vid_io_out_clk),
        .CE(vid_io_out_ce),
        .D(vtg_lag_reg[9]),
        .Q(status[24]),
        .R(vid_io_out_reset));
  FDRE #(
    .INIT(1'b0)) 
    \status_reg_reg[2] 
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(\status_reg[2]_i_1_n_0 ),
        .Q(status[2]),
        .R(vid_io_out_reset));
  FDRE #(
    .INIT(1'b0)) 
    \status_reg_reg[3] 
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(\status_reg[3]_i_1_n_0 ),
        .Q(status[3]),
        .R(vid_io_out_reset));
  FDRE #(
    .INIT(1'b0)) 
    \status_reg_reg[4] 
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(\status_reg[4]_i_1_n_0 ),
        .Q(status[4]),
        .R(vid_io_out_reset));
  FDRE #(
    .INIT(1'b0)) 
    \status_reg_reg[5] 
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(\status_reg[5]_i_1_n_0 ),
        .Q(status[5]),
        .R(vid_io_out_reset));
  FDRE #(
    .INIT(1'b0)) 
    \status_reg_reg[6] 
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(\status_reg[6]_i_1_n_0 ),
        .Q(status[6]),
        .R(vid_io_out_reset));
  FDRE #(
    .INIT(1'b0)) 
    \status_reg_reg[7] 
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(\status_reg[7]_i_1_n_0 ),
        .Q(status[7]),
        .R(vid_io_out_reset));
  FDRE #(
    .INIT(1'b0)) 
    \status_reg_reg[8] 
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(\status_reg[8]_i_1_n_0 ),
        .Q(status[8]),
        .R(vid_io_out_reset));
  FDRE #(
    .INIT(1'b0)) 
    \status_reg_reg[9] 
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(\status_reg[9]_i_1_n_0 ),
        .Q(status[9]),
        .R(vid_io_out_reset));
  FDRE #(
    .INIT(1'b0)) 
    vtg_de_dly_reg
       (.C(vid_io_out_clk),
        .CE(vid_io_out_ce),
        .D(vtg_active_video),
        .Q(vtg_de_dly),
        .R(vid_io_out_reset));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    \vtg_lag[0]_i_1 
       (.I0(vid_io_out_reset),
        .I1(state[3]),
        .I2(state[2]),
        .I3(state[1]),
        .I4(state[0]),
        .O(sof_ignore0));
  LUT4 #(
    .INIT(16'h0020)) 
    \vtg_lag[0]_i_2 
       (.I0(vid_io_out_ce),
        .I1(state[0]),
        .I2(state[2]),
        .I3(state[3]),
        .O(vtg_lag));
  LUT1 #(
    .INIT(2'h2)) 
    \vtg_lag[0]_i_4 
       (.I0(vtg_lag_reg[3]),
        .O(\vtg_lag[0]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \vtg_lag[0]_i_5 
       (.I0(vtg_lag_reg[2]),
        .O(\vtg_lag[0]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \vtg_lag[0]_i_6 
       (.I0(vtg_lag_reg[1]),
        .O(\vtg_lag[0]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \vtg_lag[0]_i_7 
       (.I0(vtg_lag_reg[0]),
        .O(\vtg_lag[0]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \vtg_lag[12]_i_2 
       (.I0(vtg_lag_reg__0[15]),
        .O(\vtg_lag[12]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \vtg_lag[12]_i_3 
       (.I0(vtg_lag_reg__0[14]),
        .O(\vtg_lag[12]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \vtg_lag[12]_i_4 
       (.I0(vtg_lag_reg__0[13]),
        .O(\vtg_lag[12]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \vtg_lag[12]_i_5 
       (.I0(vtg_lag_reg__0[12]),
        .O(\vtg_lag[12]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \vtg_lag[16]_i_2 
       (.I0(vtg_lag_reg__0[19]),
        .O(\vtg_lag[16]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \vtg_lag[16]_i_3 
       (.I0(vtg_lag_reg__0[18]),
        .O(\vtg_lag[16]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \vtg_lag[16]_i_4 
       (.I0(vtg_lag_reg__0[17]),
        .O(\vtg_lag[16]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \vtg_lag[16]_i_5 
       (.I0(vtg_lag_reg__0[16]),
        .O(\vtg_lag[16]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \vtg_lag[20]_i_2 
       (.I0(vtg_lag_reg__0[23]),
        .O(\vtg_lag[20]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \vtg_lag[20]_i_3 
       (.I0(vtg_lag_reg__0[22]),
        .O(\vtg_lag[20]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \vtg_lag[20]_i_4 
       (.I0(vtg_lag_reg__0[21]),
        .O(\vtg_lag[20]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \vtg_lag[20]_i_5 
       (.I0(vtg_lag_reg__0[20]),
        .O(\vtg_lag[20]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \vtg_lag[24]_i_2 
       (.I0(vtg_lag_reg__0[27]),
        .O(\vtg_lag[24]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \vtg_lag[24]_i_3 
       (.I0(vtg_lag_reg__0[26]),
        .O(\vtg_lag[24]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \vtg_lag[24]_i_4 
       (.I0(vtg_lag_reg__0[25]),
        .O(\vtg_lag[24]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \vtg_lag[24]_i_5 
       (.I0(vtg_lag_reg__0[24]),
        .O(\vtg_lag[24]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \vtg_lag[28]_i_2 
       (.I0(vtg_lag_reg__0[31]),
        .O(\vtg_lag[28]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \vtg_lag[28]_i_3 
       (.I0(vtg_lag_reg__0[30]),
        .O(\vtg_lag[28]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \vtg_lag[28]_i_4 
       (.I0(vtg_lag_reg__0[29]),
        .O(\vtg_lag[28]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \vtg_lag[28]_i_5 
       (.I0(vtg_lag_reg__0[28]),
        .O(\vtg_lag[28]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \vtg_lag[4]_i_2 
       (.I0(vtg_lag_reg[7]),
        .O(\vtg_lag[4]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \vtg_lag[4]_i_3 
       (.I0(vtg_lag_reg[6]),
        .O(\vtg_lag[4]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \vtg_lag[4]_i_4 
       (.I0(vtg_lag_reg[5]),
        .O(\vtg_lag[4]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \vtg_lag[4]_i_5 
       (.I0(vtg_lag_reg[4]),
        .O(\vtg_lag[4]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \vtg_lag[8]_i_2 
       (.I0(vtg_lag_reg__0[11]),
        .O(\vtg_lag[8]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \vtg_lag[8]_i_3 
       (.I0(vtg_lag_reg__0[10]),
        .O(\vtg_lag[8]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \vtg_lag[8]_i_4 
       (.I0(vtg_lag_reg[9]),
        .O(\vtg_lag[8]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \vtg_lag[8]_i_5 
       (.I0(vtg_lag_reg[8]),
        .O(\vtg_lag[8]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_lag_reg[0] 
       (.C(vid_io_out_clk),
        .CE(vtg_lag),
        .D(\vtg_lag_reg[0]_i_3_n_7 ),
        .Q(vtg_lag_reg[0]),
        .R(sof_ignore0));
  CARRY4 \vtg_lag_reg[0]_i_3 
       (.CI(1'b0),
        .CO({\vtg_lag_reg[0]_i_3_n_0 ,\vtg_lag_reg[0]_i_3_n_1 ,\vtg_lag_reg[0]_i_3_n_2 ,\vtg_lag_reg[0]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\vtg_lag_reg[0]_i_3_n_4 ,\vtg_lag_reg[0]_i_3_n_5 ,\vtg_lag_reg[0]_i_3_n_6 ,\vtg_lag_reg[0]_i_3_n_7 }),
        .S({\vtg_lag[0]_i_4_n_0 ,\vtg_lag[0]_i_5_n_0 ,\vtg_lag[0]_i_6_n_0 ,\vtg_lag[0]_i_7_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_lag_reg[10] 
       (.C(vid_io_out_clk),
        .CE(vtg_lag),
        .D(\vtg_lag_reg[8]_i_1_n_5 ),
        .Q(vtg_lag_reg__0[10]),
        .R(sof_ignore0));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_lag_reg[11] 
       (.C(vid_io_out_clk),
        .CE(vtg_lag),
        .D(\vtg_lag_reg[8]_i_1_n_4 ),
        .Q(vtg_lag_reg__0[11]),
        .R(sof_ignore0));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_lag_reg[12] 
       (.C(vid_io_out_clk),
        .CE(vtg_lag),
        .D(\vtg_lag_reg[12]_i_1_n_7 ),
        .Q(vtg_lag_reg__0[12]),
        .R(sof_ignore0));
  CARRY4 \vtg_lag_reg[12]_i_1 
       (.CI(\vtg_lag_reg[8]_i_1_n_0 ),
        .CO({\vtg_lag_reg[12]_i_1_n_0 ,\vtg_lag_reg[12]_i_1_n_1 ,\vtg_lag_reg[12]_i_1_n_2 ,\vtg_lag_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\vtg_lag_reg[12]_i_1_n_4 ,\vtg_lag_reg[12]_i_1_n_5 ,\vtg_lag_reg[12]_i_1_n_6 ,\vtg_lag_reg[12]_i_1_n_7 }),
        .S({\vtg_lag[12]_i_2_n_0 ,\vtg_lag[12]_i_3_n_0 ,\vtg_lag[12]_i_4_n_0 ,\vtg_lag[12]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_lag_reg[13] 
       (.C(vid_io_out_clk),
        .CE(vtg_lag),
        .D(\vtg_lag_reg[12]_i_1_n_6 ),
        .Q(vtg_lag_reg__0[13]),
        .R(sof_ignore0));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_lag_reg[14] 
       (.C(vid_io_out_clk),
        .CE(vtg_lag),
        .D(\vtg_lag_reg[12]_i_1_n_5 ),
        .Q(vtg_lag_reg__0[14]),
        .R(sof_ignore0));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_lag_reg[15] 
       (.C(vid_io_out_clk),
        .CE(vtg_lag),
        .D(\vtg_lag_reg[12]_i_1_n_4 ),
        .Q(vtg_lag_reg__0[15]),
        .R(sof_ignore0));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_lag_reg[16] 
       (.C(vid_io_out_clk),
        .CE(vtg_lag),
        .D(\vtg_lag_reg[16]_i_1_n_7 ),
        .Q(vtg_lag_reg__0[16]),
        .R(sof_ignore0));
  CARRY4 \vtg_lag_reg[16]_i_1 
       (.CI(\vtg_lag_reg[12]_i_1_n_0 ),
        .CO({\vtg_lag_reg[16]_i_1_n_0 ,\vtg_lag_reg[16]_i_1_n_1 ,\vtg_lag_reg[16]_i_1_n_2 ,\vtg_lag_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\vtg_lag_reg[16]_i_1_n_4 ,\vtg_lag_reg[16]_i_1_n_5 ,\vtg_lag_reg[16]_i_1_n_6 ,\vtg_lag_reg[16]_i_1_n_7 }),
        .S({\vtg_lag[16]_i_2_n_0 ,\vtg_lag[16]_i_3_n_0 ,\vtg_lag[16]_i_4_n_0 ,\vtg_lag[16]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_lag_reg[17] 
       (.C(vid_io_out_clk),
        .CE(vtg_lag),
        .D(\vtg_lag_reg[16]_i_1_n_6 ),
        .Q(vtg_lag_reg__0[17]),
        .R(sof_ignore0));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_lag_reg[18] 
       (.C(vid_io_out_clk),
        .CE(vtg_lag),
        .D(\vtg_lag_reg[16]_i_1_n_5 ),
        .Q(vtg_lag_reg__0[18]),
        .R(sof_ignore0));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_lag_reg[19] 
       (.C(vid_io_out_clk),
        .CE(vtg_lag),
        .D(\vtg_lag_reg[16]_i_1_n_4 ),
        .Q(vtg_lag_reg__0[19]),
        .R(sof_ignore0));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_lag_reg[1] 
       (.C(vid_io_out_clk),
        .CE(vtg_lag),
        .D(\vtg_lag_reg[0]_i_3_n_6 ),
        .Q(vtg_lag_reg[1]),
        .R(sof_ignore0));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_lag_reg[20] 
       (.C(vid_io_out_clk),
        .CE(vtg_lag),
        .D(\vtg_lag_reg[20]_i_1_n_7 ),
        .Q(vtg_lag_reg__0[20]),
        .R(sof_ignore0));
  CARRY4 \vtg_lag_reg[20]_i_1 
       (.CI(\vtg_lag_reg[16]_i_1_n_0 ),
        .CO({\vtg_lag_reg[20]_i_1_n_0 ,\vtg_lag_reg[20]_i_1_n_1 ,\vtg_lag_reg[20]_i_1_n_2 ,\vtg_lag_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\vtg_lag_reg[20]_i_1_n_4 ,\vtg_lag_reg[20]_i_1_n_5 ,\vtg_lag_reg[20]_i_1_n_6 ,\vtg_lag_reg[20]_i_1_n_7 }),
        .S({\vtg_lag[20]_i_2_n_0 ,\vtg_lag[20]_i_3_n_0 ,\vtg_lag[20]_i_4_n_0 ,\vtg_lag[20]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_lag_reg[21] 
       (.C(vid_io_out_clk),
        .CE(vtg_lag),
        .D(\vtg_lag_reg[20]_i_1_n_6 ),
        .Q(vtg_lag_reg__0[21]),
        .R(sof_ignore0));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_lag_reg[22] 
       (.C(vid_io_out_clk),
        .CE(vtg_lag),
        .D(\vtg_lag_reg[20]_i_1_n_5 ),
        .Q(vtg_lag_reg__0[22]),
        .R(sof_ignore0));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_lag_reg[23] 
       (.C(vid_io_out_clk),
        .CE(vtg_lag),
        .D(\vtg_lag_reg[20]_i_1_n_4 ),
        .Q(vtg_lag_reg__0[23]),
        .R(sof_ignore0));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_lag_reg[24] 
       (.C(vid_io_out_clk),
        .CE(vtg_lag),
        .D(\vtg_lag_reg[24]_i_1_n_7 ),
        .Q(vtg_lag_reg__0[24]),
        .R(sof_ignore0));
  CARRY4 \vtg_lag_reg[24]_i_1 
       (.CI(\vtg_lag_reg[20]_i_1_n_0 ),
        .CO({\vtg_lag_reg[24]_i_1_n_0 ,\vtg_lag_reg[24]_i_1_n_1 ,\vtg_lag_reg[24]_i_1_n_2 ,\vtg_lag_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\vtg_lag_reg[24]_i_1_n_4 ,\vtg_lag_reg[24]_i_1_n_5 ,\vtg_lag_reg[24]_i_1_n_6 ,\vtg_lag_reg[24]_i_1_n_7 }),
        .S({\vtg_lag[24]_i_2_n_0 ,\vtg_lag[24]_i_3_n_0 ,\vtg_lag[24]_i_4_n_0 ,\vtg_lag[24]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_lag_reg[25] 
       (.C(vid_io_out_clk),
        .CE(vtg_lag),
        .D(\vtg_lag_reg[24]_i_1_n_6 ),
        .Q(vtg_lag_reg__0[25]),
        .R(sof_ignore0));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_lag_reg[26] 
       (.C(vid_io_out_clk),
        .CE(vtg_lag),
        .D(\vtg_lag_reg[24]_i_1_n_5 ),
        .Q(vtg_lag_reg__0[26]),
        .R(sof_ignore0));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_lag_reg[27] 
       (.C(vid_io_out_clk),
        .CE(vtg_lag),
        .D(\vtg_lag_reg[24]_i_1_n_4 ),
        .Q(vtg_lag_reg__0[27]),
        .R(sof_ignore0));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_lag_reg[28] 
       (.C(vid_io_out_clk),
        .CE(vtg_lag),
        .D(\vtg_lag_reg[28]_i_1_n_7 ),
        .Q(vtg_lag_reg__0[28]),
        .R(sof_ignore0));
  CARRY4 \vtg_lag_reg[28]_i_1 
       (.CI(\vtg_lag_reg[24]_i_1_n_0 ),
        .CO({\NLW_vtg_lag_reg[28]_i_1_CO_UNCONNECTED [3],\vtg_lag_reg[28]_i_1_n_1 ,\vtg_lag_reg[28]_i_1_n_2 ,\vtg_lag_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\vtg_lag_reg[28]_i_1_n_4 ,\vtg_lag_reg[28]_i_1_n_5 ,\vtg_lag_reg[28]_i_1_n_6 ,\vtg_lag_reg[28]_i_1_n_7 }),
        .S({\vtg_lag[28]_i_2_n_0 ,\vtg_lag[28]_i_3_n_0 ,\vtg_lag[28]_i_4_n_0 ,\vtg_lag[28]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_lag_reg[29] 
       (.C(vid_io_out_clk),
        .CE(vtg_lag),
        .D(\vtg_lag_reg[28]_i_1_n_6 ),
        .Q(vtg_lag_reg__0[29]),
        .R(sof_ignore0));
  FDSE #(
    .INIT(1'b0)) 
    \vtg_lag_reg[2] 
       (.C(vid_io_out_clk),
        .CE(vtg_lag),
        .D(\vtg_lag_reg[0]_i_3_n_5 ),
        .Q(vtg_lag_reg[2]),
        .S(sof_ignore0));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_lag_reg[30] 
       (.C(vid_io_out_clk),
        .CE(vtg_lag),
        .D(\vtg_lag_reg[28]_i_1_n_5 ),
        .Q(vtg_lag_reg__0[30]),
        .R(sof_ignore0));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_lag_reg[31] 
       (.C(vid_io_out_clk),
        .CE(vtg_lag),
        .D(\vtg_lag_reg[28]_i_1_n_4 ),
        .Q(vtg_lag_reg__0[31]),
        .R(sof_ignore0));
  FDSE #(
    .INIT(1'b0)) 
    \vtg_lag_reg[3] 
       (.C(vid_io_out_clk),
        .CE(vtg_lag),
        .D(\vtg_lag_reg[0]_i_3_n_4 ),
        .Q(vtg_lag_reg[3]),
        .S(sof_ignore0));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_lag_reg[4] 
       (.C(vid_io_out_clk),
        .CE(vtg_lag),
        .D(\vtg_lag_reg[4]_i_1_n_7 ),
        .Q(vtg_lag_reg[4]),
        .R(sof_ignore0));
  CARRY4 \vtg_lag_reg[4]_i_1 
       (.CI(\vtg_lag_reg[0]_i_3_n_0 ),
        .CO({\vtg_lag_reg[4]_i_1_n_0 ,\vtg_lag_reg[4]_i_1_n_1 ,\vtg_lag_reg[4]_i_1_n_2 ,\vtg_lag_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\vtg_lag_reg[4]_i_1_n_4 ,\vtg_lag_reg[4]_i_1_n_5 ,\vtg_lag_reg[4]_i_1_n_6 ,\vtg_lag_reg[4]_i_1_n_7 }),
        .S({\vtg_lag[4]_i_2_n_0 ,\vtg_lag[4]_i_3_n_0 ,\vtg_lag[4]_i_4_n_0 ,\vtg_lag[4]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_lag_reg[5] 
       (.C(vid_io_out_clk),
        .CE(vtg_lag),
        .D(\vtg_lag_reg[4]_i_1_n_6 ),
        .Q(vtg_lag_reg[5]),
        .R(sof_ignore0));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_lag_reg[6] 
       (.C(vid_io_out_clk),
        .CE(vtg_lag),
        .D(\vtg_lag_reg[4]_i_1_n_5 ),
        .Q(vtg_lag_reg[6]),
        .R(sof_ignore0));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_lag_reg[7] 
       (.C(vid_io_out_clk),
        .CE(vtg_lag),
        .D(\vtg_lag_reg[4]_i_1_n_4 ),
        .Q(vtg_lag_reg[7]),
        .R(sof_ignore0));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_lag_reg[8] 
       (.C(vid_io_out_clk),
        .CE(vtg_lag),
        .D(\vtg_lag_reg[8]_i_1_n_7 ),
        .Q(vtg_lag_reg[8]),
        .R(sof_ignore0));
  CARRY4 \vtg_lag_reg[8]_i_1 
       (.CI(\vtg_lag_reg[4]_i_1_n_0 ),
        .CO({\vtg_lag_reg[8]_i_1_n_0 ,\vtg_lag_reg[8]_i_1_n_1 ,\vtg_lag_reg[8]_i_1_n_2 ,\vtg_lag_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\vtg_lag_reg[8]_i_1_n_4 ,\vtg_lag_reg[8]_i_1_n_5 ,\vtg_lag_reg[8]_i_1_n_6 ,\vtg_lag_reg[8]_i_1_n_7 }),
        .S({\vtg_lag[8]_i_2_n_0 ,\vtg_lag[8]_i_3_n_0 ,\vtg_lag[8]_i_4_n_0 ,\vtg_lag[8]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_lag_reg[9] 
       (.C(vid_io_out_clk),
        .CE(vtg_lag),
        .D(\vtg_lag_reg[8]_i_1_n_6 ),
        .Q(vtg_lag_reg[9]),
        .R(sof_ignore0));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \vtg_sof_cnt[0]_i_1 
       (.I0(vtg_sof_cnt_reg__0[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \vtg_sof_cnt[1]_i_1 
       (.I0(vtg_sof_cnt_reg__0[0]),
        .I1(vtg_sof_cnt_reg__0[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \vtg_sof_cnt[2]_i_1 
       (.I0(vtg_sof_cnt_reg__0[0]),
        .I1(vtg_sof_cnt_reg__0[1]),
        .I2(vtg_sof_cnt_reg__0[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \vtg_sof_cnt[3]_i_1 
       (.I0(vtg_sof_cnt_reg__0[1]),
        .I1(vtg_sof_cnt_reg__0[0]),
        .I2(vtg_sof_cnt_reg__0[2]),
        .I3(vtg_sof_cnt_reg__0[3]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \vtg_sof_cnt[4]_i_1 
       (.I0(vtg_sof_cnt_reg__0[2]),
        .I1(vtg_sof_cnt_reg__0[0]),
        .I2(vtg_sof_cnt_reg__0[1]),
        .I3(vtg_sof_cnt_reg__0[3]),
        .I4(vtg_sof_cnt_reg__0[4]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \vtg_sof_cnt[5]_i_1 
       (.I0(vtg_sof_cnt_reg__0[3]),
        .I1(vtg_sof_cnt_reg__0[1]),
        .I2(vtg_sof_cnt_reg__0[0]),
        .I3(vtg_sof_cnt_reg__0[2]),
        .I4(vtg_sof_cnt_reg__0[4]),
        .I5(vtg_sof_cnt_reg__0[5]),
        .O(p_0_in[5]));
  LUT2 #(
    .INIT(4'h6)) 
    \vtg_sof_cnt[6]_i_1 
       (.I0(\vtg_sof_cnt[7]_i_4_n_0 ),
        .I1(vtg_sof_cnt_reg__0[6]),
        .O(p_0_in[6]));
  LUT5 #(
    .INIT(32'hFFABFBBB)) 
    \vtg_sof_cnt[7]_i_1 
       (.I0(vid_io_out_reset),
        .I1(state[3]),
        .I2(state[0]),
        .I3(state[2]),
        .I4(state[1]),
        .O(vtg_sof_cnt0));
  LUT2 #(
    .INIT(4'h8)) 
    \vtg_sof_cnt[7]_i_2 
       (.I0(vid_io_out_ce),
        .I1(vtg_sof_dly),
        .O(vtg_sof_cnt));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \vtg_sof_cnt[7]_i_3 
       (.I0(\vtg_sof_cnt[7]_i_4_n_0 ),
        .I1(vtg_sof_cnt_reg__0[6]),
        .I2(vtg_sof_cnt_reg__0[7]),
        .O(p_0_in[7]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \vtg_sof_cnt[7]_i_4 
       (.I0(vtg_sof_cnt_reg__0[5]),
        .I1(vtg_sof_cnt_reg__0[3]),
        .I2(vtg_sof_cnt_reg__0[1]),
        .I3(vtg_sof_cnt_reg__0[0]),
        .I4(vtg_sof_cnt_reg__0[2]),
        .I5(vtg_sof_cnt_reg__0[4]),
        .O(\vtg_sof_cnt[7]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_sof_cnt_reg[0] 
       (.C(vid_io_out_clk),
        .CE(vtg_sof_cnt),
        .D(p_0_in[0]),
        .Q(vtg_sof_cnt_reg__0[0]),
        .R(vtg_sof_cnt0));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_sof_cnt_reg[1] 
       (.C(vid_io_out_clk),
        .CE(vtg_sof_cnt),
        .D(p_0_in[1]),
        .Q(vtg_sof_cnt_reg__0[1]),
        .R(vtg_sof_cnt0));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_sof_cnt_reg[2] 
       (.C(vid_io_out_clk),
        .CE(vtg_sof_cnt),
        .D(p_0_in[2]),
        .Q(vtg_sof_cnt_reg__0[2]),
        .R(vtg_sof_cnt0));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_sof_cnt_reg[3] 
       (.C(vid_io_out_clk),
        .CE(vtg_sof_cnt),
        .D(p_0_in[3]),
        .Q(vtg_sof_cnt_reg__0[3]),
        .R(vtg_sof_cnt0));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_sof_cnt_reg[4] 
       (.C(vid_io_out_clk),
        .CE(vtg_sof_cnt),
        .D(p_0_in[4]),
        .Q(vtg_sof_cnt_reg__0[4]),
        .R(vtg_sof_cnt0));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_sof_cnt_reg[5] 
       (.C(vid_io_out_clk),
        .CE(vtg_sof_cnt),
        .D(p_0_in[5]),
        .Q(vtg_sof_cnt_reg__0[5]),
        .R(vtg_sof_cnt0));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_sof_cnt_reg[6] 
       (.C(vid_io_out_clk),
        .CE(vtg_sof_cnt),
        .D(p_0_in[6]),
        .Q(vtg_sof_cnt_reg__0[6]),
        .R(vtg_sof_cnt0));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_sof_cnt_reg[7] 
       (.C(vid_io_out_clk),
        .CE(vtg_sof_cnt),
        .D(p_0_in[7]),
        .Q(vtg_sof_cnt_reg__0[7]),
        .R(vtg_sof_cnt0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h40)) 
    vtg_sof_dly_i_1
       (.I0(vtg_de_dly),
        .I1(vtg_active_video),
        .I2(vtg_vsync_bp_reg_n_0),
        .O(vtg_sof));
  FDRE #(
    .INIT(1'b0)) 
    vtg_sof_dly_reg
       (.C(vid_io_out_clk),
        .CE(vid_io_out_ce),
        .D(vtg_sof),
        .Q(vtg_sof_dly),
        .R(vid_io_out_reset));
  LUT6 #(
    .INIT(64'h000000000000BAAA)) 
    vtg_vsync_bp_i_1
       (.I0(vtg_vsync_bp_reg_n_0),
        .I1(vtg_vsync),
        .I2(vid_io_out_ce),
        .I3(vtg_vsync_dly),
        .I4(vtg_de_dly),
        .I5(vid_io_out_reset),
        .O(vtg_vsync_bp_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    vtg_vsync_bp_reg
       (.C(vid_io_out_clk),
        .CE(1'b1),
        .D(vtg_vsync_bp_i_1_n_0),
        .Q(vtg_vsync_bp_reg_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    vtg_vsync_dly_reg
       (.C(vid_io_out_clk),
        .CE(vid_io_out_ce),
        .D(vtg_vsync),
        .Q(vtg_vsync_dly),
        .R(vid_io_out_reset));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_generic_cstr" *) 
module system_v_axi4s_vid_out_0_0_blk_mem_gen_generic_cstr
   (dout,
    wr_clk,
    rd_clk,
    WEA,
    tmp_ram_rd_en,
    tmp_ram_regout_en,
    out,
    Q,
    \gc0.count_d1_reg[9] ,
    din);
  output [26:0]dout;
  input wr_clk;
  input rd_clk;
  input [0:0]WEA;
  input tmp_ram_rd_en;
  input tmp_ram_regout_en;
  input [0:0]out;
  input [9:0]Q;
  input [9:0]\gc0.count_d1_reg[9] ;
  input [26:0]din;

  wire [9:0]Q;
  wire [0:0]WEA;
  wire [26:0]din;
  wire [26:0]dout;
  wire [9:0]\gc0.count_d1_reg[9] ;
  wire [0:0]out;
  wire rd_clk;
  wire tmp_ram_rd_en;
  wire tmp_ram_regout_en;
  wire wr_clk;

  system_v_axi4s_vid_out_0_0_blk_mem_gen_prim_width \ramloop[0].ram.r 
       (.Q(Q),
        .WEA(WEA),
        .din(din),
        .dout(dout),
        .\gc0.count_d1_reg[9] (\gc0.count_d1_reg[9] ),
        .out(out),
        .rd_clk(rd_clk),
        .tmp_ram_rd_en(tmp_ram_rd_en),
        .tmp_ram_regout_en(tmp_ram_regout_en),
        .wr_clk(wr_clk));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module system_v_axi4s_vid_out_0_0_blk_mem_gen_prim_width
   (dout,
    wr_clk,
    rd_clk,
    WEA,
    tmp_ram_rd_en,
    tmp_ram_regout_en,
    out,
    Q,
    \gc0.count_d1_reg[9] ,
    din);
  output [26:0]dout;
  input wr_clk;
  input rd_clk;
  input [0:0]WEA;
  input tmp_ram_rd_en;
  input tmp_ram_regout_en;
  input [0:0]out;
  input [9:0]Q;
  input [9:0]\gc0.count_d1_reg[9] ;
  input [26:0]din;

  wire [9:0]Q;
  wire [0:0]WEA;
  wire [26:0]din;
  wire [26:0]dout;
  wire [9:0]\gc0.count_d1_reg[9] ;
  wire [0:0]out;
  wire rd_clk;
  wire tmp_ram_rd_en;
  wire tmp_ram_regout_en;
  wire wr_clk;

  system_v_axi4s_vid_out_0_0_blk_mem_gen_prim_wrapper \prim_noinit.ram 
       (.Q(Q),
        .WEA(WEA),
        .din(din),
        .dout(dout),
        .\gc0.count_d1_reg[9] (\gc0.count_d1_reg[9] ),
        .out(out),
        .rd_clk(rd_clk),
        .tmp_ram_rd_en(tmp_ram_rd_en),
        .tmp_ram_regout_en(tmp_ram_regout_en),
        .wr_clk(wr_clk));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper" *) 
module system_v_axi4s_vid_out_0_0_blk_mem_gen_prim_wrapper
   (dout,
    wr_clk,
    rd_clk,
    WEA,
    tmp_ram_rd_en,
    tmp_ram_regout_en,
    out,
    Q,
    \gc0.count_d1_reg[9] ,
    din);
  output [26:0]dout;
  input wr_clk;
  input rd_clk;
  input [0:0]WEA;
  input tmp_ram_rd_en;
  input tmp_ram_regout_en;
  input [0:0]out;
  input [9:0]Q;
  input [9:0]\gc0.count_d1_reg[9] ;
  input [26:0]din;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_53 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_54 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_61 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_69 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_77 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_89 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_90 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_91 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_92 ;
  wire [9:0]Q;
  wire [0:0]WEA;
  wire [26:0]din;
  wire [26:0]dout;
  wire [9:0]\gc0.count_d1_reg[9] ;
  wire [0:0]out;
  wire rd_clk;
  wire tmp_ram_rd_en;
  wire tmp_ram_regout_en;
  wire wr_clk;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* CLOCK_DOMAINS = "INDEPENDENT" *) 
  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(1),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(36),
    .READ_WIDTH_B(36),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(36),
    .WRITE_WIDTH_B(36)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,Q,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,\gc0.count_d1_reg[9] ,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(wr_clk),
        .CLKBWRCLK(rd_clk),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,din[26:21],1'b0,din[20:14],1'b0,din[13:7],1'b0,din[6:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:0]),
        .DOBDO({\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_53 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_54 ,dout[26:21],\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_61 ,dout[20:14],\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_69 ,dout[13:7],\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_77 ,dout[6:0]}),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP({\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_89 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_90 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_91 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_92 }),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(WEA),
        .ENBWREN(tmp_ram_rd_en),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(tmp_ram_regout_en),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(out),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({WEA,WEA,WEA,WEA}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_top" *) 
module system_v_axi4s_vid_out_0_0_blk_mem_gen_top
   (dout,
    wr_clk,
    rd_clk,
    WEA,
    tmp_ram_rd_en,
    tmp_ram_regout_en,
    out,
    Q,
    \gc0.count_d1_reg[9] ,
    din);
  output [26:0]dout;
  input wr_clk;
  input rd_clk;
  input [0:0]WEA;
  input tmp_ram_rd_en;
  input tmp_ram_regout_en;
  input [0:0]out;
  input [9:0]Q;
  input [9:0]\gc0.count_d1_reg[9] ;
  input [26:0]din;

  wire [9:0]Q;
  wire [0:0]WEA;
  wire [26:0]din;
  wire [26:0]dout;
  wire [9:0]\gc0.count_d1_reg[9] ;
  wire [0:0]out;
  wire rd_clk;
  wire tmp_ram_rd_en;
  wire tmp_ram_regout_en;
  wire wr_clk;

  system_v_axi4s_vid_out_0_0_blk_mem_gen_generic_cstr \valid.cstr 
       (.Q(Q),
        .WEA(WEA),
        .din(din),
        .dout(dout),
        .\gc0.count_d1_reg[9] (\gc0.count_d1_reg[9] ),
        .out(out),
        .rd_clk(rd_clk),
        .tmp_ram_rd_en(tmp_ram_rd_en),
        .tmp_ram_regout_en(tmp_ram_regout_en),
        .wr_clk(wr_clk));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_v8_3_5" *) 
module system_v_axi4s_vid_out_0_0_blk_mem_gen_v8_3_5
   (dout,
    wr_clk,
    rd_clk,
    WEA,
    tmp_ram_rd_en,
    tmp_ram_regout_en,
    out,
    Q,
    \gc0.count_d1_reg[9] ,
    din);
  output [26:0]dout;
  input wr_clk;
  input rd_clk;
  input [0:0]WEA;
  input tmp_ram_rd_en;
  input tmp_ram_regout_en;
  input [0:0]out;
  input [9:0]Q;
  input [9:0]\gc0.count_d1_reg[9] ;
  input [26:0]din;

  wire [9:0]Q;
  wire [0:0]WEA;
  wire [26:0]din;
  wire [26:0]dout;
  wire [9:0]\gc0.count_d1_reg[9] ;
  wire [0:0]out;
  wire rd_clk;
  wire tmp_ram_rd_en;
  wire tmp_ram_regout_en;
  wire wr_clk;

  system_v_axi4s_vid_out_0_0_blk_mem_gen_v8_3_5_synth inst_blk_mem_gen
       (.Q(Q),
        .WEA(WEA),
        .din(din),
        .dout(dout),
        .\gc0.count_d1_reg[9] (\gc0.count_d1_reg[9] ),
        .out(out),
        .rd_clk(rd_clk),
        .tmp_ram_rd_en(tmp_ram_rd_en),
        .tmp_ram_regout_en(tmp_ram_regout_en),
        .wr_clk(wr_clk));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_v8_3_5_synth" *) 
module system_v_axi4s_vid_out_0_0_blk_mem_gen_v8_3_5_synth
   (dout,
    wr_clk,
    rd_clk,
    WEA,
    tmp_ram_rd_en,
    tmp_ram_regout_en,
    out,
    Q,
    \gc0.count_d1_reg[9] ,
    din);
  output [26:0]dout;
  input wr_clk;
  input rd_clk;
  input [0:0]WEA;
  input tmp_ram_rd_en;
  input tmp_ram_regout_en;
  input [0:0]out;
  input [9:0]Q;
  input [9:0]\gc0.count_d1_reg[9] ;
  input [26:0]din;

  wire [9:0]Q;
  wire [0:0]WEA;
  wire [26:0]din;
  wire [26:0]dout;
  wire [9:0]\gc0.count_d1_reg[9] ;
  wire [0:0]out;
  wire rd_clk;
  wire tmp_ram_rd_en;
  wire tmp_ram_regout_en;
  wire wr_clk;

  system_v_axi4s_vid_out_0_0_blk_mem_gen_top \gnbram.gnativebmg.native_blk_mem_gen 
       (.Q(Q),
        .WEA(WEA),
        .din(din),
        .dout(dout),
        .\gc0.count_d1_reg[9] (\gc0.count_d1_reg[9] ),
        .out(out),
        .rd_clk(rd_clk),
        .tmp_ram_rd_en(tmp_ram_rd_en),
        .tmp_ram_regout_en(tmp_ram_regout_en),
        .wr_clk(wr_clk));
endmodule

(* ORIG_REF_NAME = "clk_x_pntrs" *) 
module system_v_axi4s_vid_out_0_0_clk_x_pntrs
   (S,
    WR_PNTR_RD,
    \g_rd.gvalid_low.rd_dc_i_reg[7] ,
    \g_rd.gvalid_low.rd_dc_i_reg[10] ,
    v1_reg,
    v1_reg_0,
    D,
    \g_rd.gvalid_low.rd_dc_i_reg[10]_0 ,
    \g_rd.gvalid_low.rd_dc_i_reg[6] ,
    \g_rd.gvalid_low.rd_dc_i_reg[5] ,
    RD_PNTR_WR,
    Q,
    \gc0.count_reg[9] ,
    out,
    diff_wr_rd,
    \gpregsm1.user_valid_reg ,
    \gic0.gc0.count_d2_reg[9] ,
    wr_clk,
    AR,
    rd_clk,
    \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] );
  output [3:0]S;
  output [8:0]WR_PNTR_RD;
  output [3:0]\g_rd.gvalid_low.rd_dc_i_reg[7] ;
  output [1:0]\g_rd.gvalid_low.rd_dc_i_reg[10] ;
  output [4:0]v1_reg;
  output [4:0]v1_reg_0;
  output [4:0]D;
  output \g_rd.gvalid_low.rd_dc_i_reg[10]_0 ;
  output \g_rd.gvalid_low.rd_dc_i_reg[6] ;
  output \g_rd.gvalid_low.rd_dc_i_reg[5] ;
  output [9:0]RD_PNTR_WR;
  input [9:0]Q;
  input [9:0]\gc0.count_reg[9] ;
  input [0:0]out;
  input [8:0]diff_wr_rd;
  input \gpregsm1.user_valid_reg ;
  input [9:0]\gic0.gc0.count_d2_reg[9] ;
  input wr_clk;
  input [0:0]AR;
  input rd_clk;
  input [0:0]\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ;

  wire [0:0]AR;
  wire [4:0]D;
  wire [9:0]Q;
  wire [9:0]RD_PNTR_WR;
  wire [3:0]S;
  wire [8:0]WR_PNTR_RD;
  wire [8:0]bin2gray;
  wire [8:0]diff_wr_rd;
  wire [1:0]\g_rd.gvalid_low.rd_dc_i_reg[10] ;
  wire \g_rd.gvalid_low.rd_dc_i_reg[10]_0 ;
  wire \g_rd.gvalid_low.rd_dc_i_reg[5] ;
  wire \g_rd.gvalid_low.rd_dc_i_reg[6] ;
  wire [3:0]\g_rd.gvalid_low.rd_dc_i_reg[7] ;
  wire [9:0]\gc0.count_reg[9] ;
  wire [9:0]\gic0.gc0.count_d2_reg[9] ;
  wire \gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_1 ;
  wire \gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_2 ;
  wire \gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_3 ;
  wire \gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_4 ;
  wire \gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_5 ;
  wire \gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_6 ;
  wire \gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_7 ;
  wire \gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_8 ;
  wire \gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_9 ;
  wire \gnxpm_cdc.rd_pntr_gc[0]_i_1_n_0 ;
  wire \gnxpm_cdc.rd_pntr_gc[1]_i_1_n_0 ;
  wire \gnxpm_cdc.rd_pntr_gc[2]_i_1_n_0 ;
  wire \gnxpm_cdc.rd_pntr_gc[3]_i_1_n_0 ;
  wire \gnxpm_cdc.rd_pntr_gc[4]_i_1_n_0 ;
  wire \gnxpm_cdc.rd_pntr_gc[5]_i_1_n_0 ;
  wire \gnxpm_cdc.rd_pntr_gc[6]_i_1_n_0 ;
  wire \gnxpm_cdc.rd_pntr_gc[7]_i_1_n_0 ;
  wire \gnxpm_cdc.rd_pntr_gc[8]_i_1_n_0 ;
  wire \gpregsm1.user_valid_reg ;
  wire [7:0]gray2bin;
  wire [0:0]\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ;
  wire [0:0]out;
  wire p_0_out;
  wire [9:9]p_22_out;
  wire [9:0]p_3_out;
  wire [9:0]p_4_out;
  wire [9:9]p_5_out;
  wire [9:9]p_6_out;
  wire rd_clk;
  wire [9:0]rd_pntr_gc;
  wire [4:0]v1_reg;
  wire [4:0]v1_reg_0;
  wire wr_clk;
  wire [9:0]wr_pntr_gc;

  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \g_rd.gvalid_low.rd_dc_i[10]_i_1 
       (.I0(out),
        .I1(diff_wr_rd[8]),
        .I2(diff_wr_rd[6]),
        .I3(\g_rd.gvalid_low.rd_dc_i_reg[10]_0 ),
        .I4(diff_wr_rd[7]),
        .I5(\gpregsm1.user_valid_reg ),
        .O(D[4]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \g_rd.gvalid_low.rd_dc_i[10]_i_2 
       (.I0(diff_wr_rd[5]),
        .I1(diff_wr_rd[3]),
        .I2(diff_wr_rd[1]),
        .I3(diff_wr_rd[0]),
        .I4(diff_wr_rd[2]),
        .I5(diff_wr_rd[4]),
        .O(\g_rd.gvalid_low.rd_dc_i_reg[10]_0 ));
  LUT5 #(
    .INIT(32'h2A800000)) 
    \g_rd.gvalid_low.rd_dc_i[3]_i_1 
       (.I0(out),
        .I1(diff_wr_rd[0]),
        .I2(diff_wr_rd[1]),
        .I3(diff_wr_rd[2]),
        .I4(\gpregsm1.user_valid_reg ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h2AAA800000000000)) 
    \g_rd.gvalid_low.rd_dc_i[4]_i_1 
       (.I0(out),
        .I1(diff_wr_rd[1]),
        .I2(diff_wr_rd[0]),
        .I3(diff_wr_rd[2]),
        .I4(diff_wr_rd[3]),
        .I5(\gpregsm1.user_valid_reg ),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \g_rd.gvalid_low.rd_dc_i[5]_i_2 
       (.I0(diff_wr_rd[3]),
        .I1(diff_wr_rd[1]),
        .I2(diff_wr_rd[0]),
        .I3(diff_wr_rd[2]),
        .O(\g_rd.gvalid_low.rd_dc_i_reg[5] ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \g_rd.gvalid_low.rd_dc_i[6]_i_2 
       (.I0(diff_wr_rd[4]),
        .I1(diff_wr_rd[2]),
        .I2(diff_wr_rd[0]),
        .I3(diff_wr_rd[1]),
        .I4(diff_wr_rd[3]),
        .O(\g_rd.gvalid_low.rd_dc_i_reg[6] ));
  LUT5 #(
    .INIT(32'h2A800000)) 
    \g_rd.gvalid_low.rd_dc_i[8]_i_1 
       (.I0(out),
        .I1(\g_rd.gvalid_low.rd_dc_i_reg[10]_0 ),
        .I2(diff_wr_rd[6]),
        .I3(diff_wr_rd[7]),
        .I4(\gpregsm1.user_valid_reg ),
        .O(D[2]));
  LUT6 #(
    .INIT(64'h2AAA800000000000)) 
    \g_rd.gvalid_low.rd_dc_i[9]_i_1 
       (.I0(out),
        .I1(diff_wr_rd[6]),
        .I2(\g_rd.gvalid_low.rd_dc_i_reg[10]_0 ),
        .I3(diff_wr_rd[7]),
        .I4(diff_wr_rd[8]),
        .I5(\gpregsm1.user_valid_reg ),
        .O(D[3]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[0].gm1.m1_i_1 
       (.I0(WR_PNTR_RD[0]),
        .I1(Q[0]),
        .I2(WR_PNTR_RD[1]),
        .I3(Q[1]),
        .O(v1_reg[0]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[0].gm1.m1_i_1__0 
       (.I0(WR_PNTR_RD[0]),
        .I1(\gc0.count_reg[9] [0]),
        .I2(WR_PNTR_RD[1]),
        .I3(\gc0.count_reg[9] [1]),
        .O(v1_reg_0[0]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[1].gms.ms_i_1 
       (.I0(WR_PNTR_RD[2]),
        .I1(Q[2]),
        .I2(WR_PNTR_RD[3]),
        .I3(Q[3]),
        .O(v1_reg[1]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[1].gms.ms_i_1__0 
       (.I0(WR_PNTR_RD[2]),
        .I1(\gc0.count_reg[9] [2]),
        .I2(WR_PNTR_RD[3]),
        .I3(\gc0.count_reg[9] [3]),
        .O(v1_reg_0[1]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[2].gms.ms_i_1 
       (.I0(WR_PNTR_RD[4]),
        .I1(Q[4]),
        .I2(WR_PNTR_RD[5]),
        .I3(Q[5]),
        .O(v1_reg[2]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[2].gms.ms_i_1__0 
       (.I0(WR_PNTR_RD[4]),
        .I1(\gc0.count_reg[9] [4]),
        .I2(WR_PNTR_RD[5]),
        .I3(\gc0.count_reg[9] [5]),
        .O(v1_reg_0[2]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[3].gms.ms_i_1 
       (.I0(WR_PNTR_RD[6]),
        .I1(Q[6]),
        .I2(WR_PNTR_RD[7]),
        .I3(Q[7]),
        .O(v1_reg[3]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[3].gms.ms_i_1__0 
       (.I0(WR_PNTR_RD[6]),
        .I1(\gc0.count_reg[9] [6]),
        .I2(WR_PNTR_RD[7]),
        .I3(\gc0.count_reg[9] [7]),
        .O(v1_reg_0[3]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[4].gms.ms_i_1 
       (.I0(WR_PNTR_RD[8]),
        .I1(Q[8]),
        .I2(p_22_out),
        .I3(Q[9]),
        .O(v1_reg[4]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[4].gms.ms_i_1__0 
       (.I0(WR_PNTR_RD[8]),
        .I1(\gc0.count_reg[9] [8]),
        .I2(p_22_out),
        .I3(\gc0.count_reg[9] [9]),
        .O(v1_reg_0[4]));
  system_v_axi4s_vid_out_0_0_synchronizer_ff__parameterized0 \gnxpm_cdc.gsync_stage[1].rd_stg_inst 
       (.D(p_3_out),
        .Q(wr_pntr_gc),
        .\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] (\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .rd_clk(rd_clk));
  system_v_axi4s_vid_out_0_0_synchronizer_ff__parameterized1 \gnxpm_cdc.gsync_stage[1].wr_stg_inst 
       (.AR(AR),
        .D(p_4_out),
        .Q(rd_pntr_gc),
        .wr_clk(wr_clk));
  system_v_axi4s_vid_out_0_0_synchronizer_ff__parameterized2 \gnxpm_cdc.gsync_stage[2].rd_stg_inst 
       (.D({p_0_out,gray2bin}),
        .\Q_reg_reg[9]_0 (p_3_out),
        .\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] (\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .out(p_5_out),
        .rd_clk(rd_clk));
  system_v_axi4s_vid_out_0_0_synchronizer_ff__parameterized3 \gnxpm_cdc.gsync_stage[2].wr_stg_inst 
       (.AR(AR),
        .D({\gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_1 ,\gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_2 ,\gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_3 ,\gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_4 ,\gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_5 ,\gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_6 ,\gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_7 ,\gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_8 ,\gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_9 }),
        .\Q_reg_reg[9]_0 (p_4_out),
        .out(p_6_out),
        .wr_clk(wr_clk));
  FDCE #(
    .INIT(1'b0)) 
    \gnxpm_cdc.rd_pntr_bin_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_9 ),
        .Q(RD_PNTR_WR[0]));
  FDCE #(
    .INIT(1'b0)) 
    \gnxpm_cdc.rd_pntr_bin_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_8 ),
        .Q(RD_PNTR_WR[1]));
  FDCE #(
    .INIT(1'b0)) 
    \gnxpm_cdc.rd_pntr_bin_reg[2] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_7 ),
        .Q(RD_PNTR_WR[2]));
  FDCE #(
    .INIT(1'b0)) 
    \gnxpm_cdc.rd_pntr_bin_reg[3] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_6 ),
        .Q(RD_PNTR_WR[3]));
  FDCE #(
    .INIT(1'b0)) 
    \gnxpm_cdc.rd_pntr_bin_reg[4] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_5 ),
        .Q(RD_PNTR_WR[4]));
  FDCE #(
    .INIT(1'b0)) 
    \gnxpm_cdc.rd_pntr_bin_reg[5] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_4 ),
        .Q(RD_PNTR_WR[5]));
  FDCE #(
    .INIT(1'b0)) 
    \gnxpm_cdc.rd_pntr_bin_reg[6] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_3 ),
        .Q(RD_PNTR_WR[6]));
  FDCE #(
    .INIT(1'b0)) 
    \gnxpm_cdc.rd_pntr_bin_reg[7] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_2 ),
        .Q(RD_PNTR_WR[7]));
  FDCE #(
    .INIT(1'b0)) 
    \gnxpm_cdc.rd_pntr_bin_reg[8] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_1 ),
        .Q(RD_PNTR_WR[8]));
  FDCE #(
    .INIT(1'b0)) 
    \gnxpm_cdc.rd_pntr_bin_reg[9] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(p_6_out),
        .Q(RD_PNTR_WR[9]));
  LUT2 #(
    .INIT(4'h6)) 
    \gnxpm_cdc.rd_pntr_gc[0]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\gnxpm_cdc.rd_pntr_gc[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \gnxpm_cdc.rd_pntr_gc[1]_i_1 
       (.I0(Q[1]),
        .I1(Q[2]),
        .O(\gnxpm_cdc.rd_pntr_gc[1]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \gnxpm_cdc.rd_pntr_gc[2]_i_1 
       (.I0(Q[2]),
        .I1(Q[3]),
        .O(\gnxpm_cdc.rd_pntr_gc[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \gnxpm_cdc.rd_pntr_gc[3]_i_1 
       (.I0(Q[3]),
        .I1(Q[4]),
        .O(\gnxpm_cdc.rd_pntr_gc[3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \gnxpm_cdc.rd_pntr_gc[4]_i_1 
       (.I0(Q[4]),
        .I1(Q[5]),
        .O(\gnxpm_cdc.rd_pntr_gc[4]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \gnxpm_cdc.rd_pntr_gc[5]_i_1 
       (.I0(Q[5]),
        .I1(Q[6]),
        .O(\gnxpm_cdc.rd_pntr_gc[5]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \gnxpm_cdc.rd_pntr_gc[6]_i_1 
       (.I0(Q[6]),
        .I1(Q[7]),
        .O(\gnxpm_cdc.rd_pntr_gc[6]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \gnxpm_cdc.rd_pntr_gc[7]_i_1 
       (.I0(Q[7]),
        .I1(Q[8]),
        .O(\gnxpm_cdc.rd_pntr_gc[7]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \gnxpm_cdc.rd_pntr_gc[8]_i_1 
       (.I0(Q[8]),
        .I1(Q[9]),
        .O(\gnxpm_cdc.rd_pntr_gc[8]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \gnxpm_cdc.rd_pntr_gc_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(\gnxpm_cdc.rd_pntr_gc[0]_i_1_n_0 ),
        .Q(rd_pntr_gc[0]));
  FDCE #(
    .INIT(1'b0)) 
    \gnxpm_cdc.rd_pntr_gc_reg[1] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(\gnxpm_cdc.rd_pntr_gc[1]_i_1_n_0 ),
        .Q(rd_pntr_gc[1]));
  FDCE #(
    .INIT(1'b0)) 
    \gnxpm_cdc.rd_pntr_gc_reg[2] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(\gnxpm_cdc.rd_pntr_gc[2]_i_1_n_0 ),
        .Q(rd_pntr_gc[2]));
  FDCE #(
    .INIT(1'b0)) 
    \gnxpm_cdc.rd_pntr_gc_reg[3] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(\gnxpm_cdc.rd_pntr_gc[3]_i_1_n_0 ),
        .Q(rd_pntr_gc[3]));
  FDCE #(
    .INIT(1'b0)) 
    \gnxpm_cdc.rd_pntr_gc_reg[4] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(\gnxpm_cdc.rd_pntr_gc[4]_i_1_n_0 ),
        .Q(rd_pntr_gc[4]));
  FDCE #(
    .INIT(1'b0)) 
    \gnxpm_cdc.rd_pntr_gc_reg[5] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(\gnxpm_cdc.rd_pntr_gc[5]_i_1_n_0 ),
        .Q(rd_pntr_gc[5]));
  FDCE #(
    .INIT(1'b0)) 
    \gnxpm_cdc.rd_pntr_gc_reg[6] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(\gnxpm_cdc.rd_pntr_gc[6]_i_1_n_0 ),
        .Q(rd_pntr_gc[6]));
  FDCE #(
    .INIT(1'b0)) 
    \gnxpm_cdc.rd_pntr_gc_reg[7] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(\gnxpm_cdc.rd_pntr_gc[7]_i_1_n_0 ),
        .Q(rd_pntr_gc[7]));
  FDCE #(
    .INIT(1'b0)) 
    \gnxpm_cdc.rd_pntr_gc_reg[8] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(\gnxpm_cdc.rd_pntr_gc[8]_i_1_n_0 ),
        .Q(rd_pntr_gc[8]));
  FDCE #(
    .INIT(1'b0)) 
    \gnxpm_cdc.rd_pntr_gc_reg[9] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(Q[9]),
        .Q(rd_pntr_gc[9]));
  FDCE #(
    .INIT(1'b0)) 
    \gnxpm_cdc.wr_pntr_bin_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(gray2bin[0]),
        .Q(WR_PNTR_RD[0]));
  FDCE #(
    .INIT(1'b0)) 
    \gnxpm_cdc.wr_pntr_bin_reg[1] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(gray2bin[1]),
        .Q(WR_PNTR_RD[1]));
  FDCE #(
    .INIT(1'b0)) 
    \gnxpm_cdc.wr_pntr_bin_reg[2] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(gray2bin[2]),
        .Q(WR_PNTR_RD[2]));
  FDCE #(
    .INIT(1'b0)) 
    \gnxpm_cdc.wr_pntr_bin_reg[3] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(gray2bin[3]),
        .Q(WR_PNTR_RD[3]));
  FDCE #(
    .INIT(1'b0)) 
    \gnxpm_cdc.wr_pntr_bin_reg[4] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(gray2bin[4]),
        .Q(WR_PNTR_RD[4]));
  FDCE #(
    .INIT(1'b0)) 
    \gnxpm_cdc.wr_pntr_bin_reg[5] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(gray2bin[5]),
        .Q(WR_PNTR_RD[5]));
  FDCE #(
    .INIT(1'b0)) 
    \gnxpm_cdc.wr_pntr_bin_reg[6] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(gray2bin[6]),
        .Q(WR_PNTR_RD[6]));
  FDCE #(
    .INIT(1'b0)) 
    \gnxpm_cdc.wr_pntr_bin_reg[7] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(gray2bin[7]),
        .Q(WR_PNTR_RD[7]));
  FDCE #(
    .INIT(1'b0)) 
    \gnxpm_cdc.wr_pntr_bin_reg[8] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(p_0_out),
        .Q(WR_PNTR_RD[8]));
  FDCE #(
    .INIT(1'b0)) 
    \gnxpm_cdc.wr_pntr_bin_reg[9] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(p_5_out),
        .Q(p_22_out));
  LUT2 #(
    .INIT(4'h6)) 
    \gnxpm_cdc.wr_pntr_gc[0]_i_1 
       (.I0(\gic0.gc0.count_d2_reg[9] [0]),
        .I1(\gic0.gc0.count_d2_reg[9] [1]),
        .O(bin2gray[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \gnxpm_cdc.wr_pntr_gc[1]_i_1 
       (.I0(\gic0.gc0.count_d2_reg[9] [1]),
        .I1(\gic0.gc0.count_d2_reg[9] [2]),
        .O(bin2gray[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \gnxpm_cdc.wr_pntr_gc[2]_i_1 
       (.I0(\gic0.gc0.count_d2_reg[9] [2]),
        .I1(\gic0.gc0.count_d2_reg[9] [3]),
        .O(bin2gray[2]));
  LUT2 #(
    .INIT(4'h6)) 
    \gnxpm_cdc.wr_pntr_gc[3]_i_1 
       (.I0(\gic0.gc0.count_d2_reg[9] [3]),
        .I1(\gic0.gc0.count_d2_reg[9] [4]),
        .O(bin2gray[3]));
  LUT2 #(
    .INIT(4'h6)) 
    \gnxpm_cdc.wr_pntr_gc[4]_i_1 
       (.I0(\gic0.gc0.count_d2_reg[9] [4]),
        .I1(\gic0.gc0.count_d2_reg[9] [5]),
        .O(bin2gray[4]));
  LUT2 #(
    .INIT(4'h6)) 
    \gnxpm_cdc.wr_pntr_gc[5]_i_1 
       (.I0(\gic0.gc0.count_d2_reg[9] [5]),
        .I1(\gic0.gc0.count_d2_reg[9] [6]),
        .O(bin2gray[5]));
  LUT2 #(
    .INIT(4'h6)) 
    \gnxpm_cdc.wr_pntr_gc[6]_i_1 
       (.I0(\gic0.gc0.count_d2_reg[9] [6]),
        .I1(\gic0.gc0.count_d2_reg[9] [7]),
        .O(bin2gray[6]));
  LUT2 #(
    .INIT(4'h6)) 
    \gnxpm_cdc.wr_pntr_gc[7]_i_1 
       (.I0(\gic0.gc0.count_d2_reg[9] [7]),
        .I1(\gic0.gc0.count_d2_reg[9] [8]),
        .O(bin2gray[7]));
  LUT2 #(
    .INIT(4'h6)) 
    \gnxpm_cdc.wr_pntr_gc[8]_i_1 
       (.I0(\gic0.gc0.count_d2_reg[9] [8]),
        .I1(\gic0.gc0.count_d2_reg[9] [9]),
        .O(bin2gray[8]));
  FDCE #(
    .INIT(1'b0)) 
    \gnxpm_cdc.wr_pntr_gc_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(bin2gray[0]),
        .Q(wr_pntr_gc[0]));
  FDCE #(
    .INIT(1'b0)) 
    \gnxpm_cdc.wr_pntr_gc_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(bin2gray[1]),
        .Q(wr_pntr_gc[1]));
  FDCE #(
    .INIT(1'b0)) 
    \gnxpm_cdc.wr_pntr_gc_reg[2] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(bin2gray[2]),
        .Q(wr_pntr_gc[2]));
  FDCE #(
    .INIT(1'b0)) 
    \gnxpm_cdc.wr_pntr_gc_reg[3] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(bin2gray[3]),
        .Q(wr_pntr_gc[3]));
  FDCE #(
    .INIT(1'b0)) 
    \gnxpm_cdc.wr_pntr_gc_reg[4] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(bin2gray[4]),
        .Q(wr_pntr_gc[4]));
  FDCE #(
    .INIT(1'b0)) 
    \gnxpm_cdc.wr_pntr_gc_reg[5] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(bin2gray[5]),
        .Q(wr_pntr_gc[5]));
  FDCE #(
    .INIT(1'b0)) 
    \gnxpm_cdc.wr_pntr_gc_reg[6] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(bin2gray[6]),
        .Q(wr_pntr_gc[6]));
  FDCE #(
    .INIT(1'b0)) 
    \gnxpm_cdc.wr_pntr_gc_reg[7] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(bin2gray[7]),
        .Q(wr_pntr_gc[7]));
  FDCE #(
    .INIT(1'b0)) 
    \gnxpm_cdc.wr_pntr_gc_reg[8] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(bin2gray[8]),
        .Q(wr_pntr_gc[8]));
  FDCE #(
    .INIT(1'b0)) 
    \gnxpm_cdc.wr_pntr_gc_reg[9] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\gic0.gc0.count_d2_reg[9] [9]),
        .Q(wr_pntr_gc[9]));
  LUT2 #(
    .INIT(4'h9)) 
    minusOp_carry__0_i_1
       (.I0(WR_PNTR_RD[7]),
        .I1(Q[7]),
        .O(\g_rd.gvalid_low.rd_dc_i_reg[7] [3]));
  LUT2 #(
    .INIT(4'h9)) 
    minusOp_carry__0_i_2
       (.I0(WR_PNTR_RD[6]),
        .I1(Q[6]),
        .O(\g_rd.gvalid_low.rd_dc_i_reg[7] [2]));
  LUT2 #(
    .INIT(4'h9)) 
    minusOp_carry__0_i_3
       (.I0(WR_PNTR_RD[5]),
        .I1(Q[5]),
        .O(\g_rd.gvalid_low.rd_dc_i_reg[7] [1]));
  LUT2 #(
    .INIT(4'h9)) 
    minusOp_carry__0_i_4
       (.I0(WR_PNTR_RD[4]),
        .I1(Q[4]),
        .O(\g_rd.gvalid_low.rd_dc_i_reg[7] [0]));
  LUT2 #(
    .INIT(4'h9)) 
    minusOp_carry__1_i_1
       (.I0(p_22_out),
        .I1(Q[9]),
        .O(\g_rd.gvalid_low.rd_dc_i_reg[10] [1]));
  LUT2 #(
    .INIT(4'h9)) 
    minusOp_carry__1_i_2
       (.I0(WR_PNTR_RD[8]),
        .I1(Q[8]),
        .O(\g_rd.gvalid_low.rd_dc_i_reg[10] [0]));
  LUT2 #(
    .INIT(4'h9)) 
    minusOp_carry_i_1
       (.I0(WR_PNTR_RD[3]),
        .I1(Q[3]),
        .O(S[3]));
  LUT2 #(
    .INIT(4'h9)) 
    minusOp_carry_i_2
       (.I0(WR_PNTR_RD[2]),
        .I1(Q[2]),
        .O(S[2]));
  LUT2 #(
    .INIT(4'h9)) 
    minusOp_carry_i_3
       (.I0(WR_PNTR_RD[1]),
        .I1(Q[1]),
        .O(S[1]));
  LUT2 #(
    .INIT(4'h9)) 
    minusOp_carry_i_4
       (.I0(WR_PNTR_RD[0]),
        .I1(Q[0]),
        .O(S[0]));
endmodule

(* ORIG_REF_NAME = "compare" *) 
module system_v_axi4s_vid_out_0_0_compare
   (comp1,
    v1_reg);
  output comp1;
  input [4:0]v1_reg;

  wire carrynet_0;
  wire carrynet_1;
  wire carrynet_2;
  wire carrynet_3;
  wire comp1;
  wire [4:0]v1_reg;
  wire [3:0]\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED ;
  wire [3:0]\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED ;

  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \gmux.gm[0].gm1.m1_CARRY4 
       (.CI(1'b0),
        .CO({carrynet_3,carrynet_2,carrynet_1,carrynet_0}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED [3:0]),
        .S(v1_reg[3:0]));
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \gmux.gm[4].gms.ms_CARRY4 
       (.CI(carrynet_3),
        .CO({\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED [3:1],comp1}),
        .CYINIT(1'b0),
        .DI({\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED [3:1],1'b0}),
        .O(\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED [3:0]),
        .S({\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED [3:1],v1_reg[4]}));
endmodule

(* ORIG_REF_NAME = "compare" *) 
module system_v_axi4s_vid_out_0_0_compare_3
   (ram_full_fb_i_reg,
    v1_reg_0,
    wr_rst_busy,
    out,
    wr_en,
    comp1);
  output ram_full_fb_i_reg;
  input [4:0]v1_reg_0;
  input wr_rst_busy;
  input out;
  input wr_en;
  input comp1;

  wire carrynet_0;
  wire carrynet_1;
  wire carrynet_2;
  wire carrynet_3;
  wire comp1;
  wire comp2;
  wire out;
  wire ram_full_fb_i_reg;
  wire [4:0]v1_reg_0;
  wire wr_en;
  wire wr_rst_busy;
  wire [3:0]\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED ;
  wire [3:0]\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED ;

  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \gmux.gm[0].gm1.m1_CARRY4 
       (.CI(1'b0),
        .CO({carrynet_3,carrynet_2,carrynet_1,carrynet_0}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED [3:0]),
        .S(v1_reg_0[3:0]));
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \gmux.gm[4].gms.ms_CARRY4 
       (.CI(carrynet_3),
        .CO({\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED [3:1],comp2}),
        .CYINIT(1'b0),
        .DI({\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED [3:1],1'b0}),
        .O(\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED [3:0]),
        .S({\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED [3:1],v1_reg_0[4]}));
  LUT5 #(
    .INIT(32'h55550400)) 
    ram_full_i_i_1
       (.I0(wr_rst_busy),
        .I1(comp2),
        .I2(out),
        .I3(wr_en),
        .I4(comp1),
        .O(ram_full_fb_i_reg));
endmodule

(* ORIG_REF_NAME = "compare" *) 
module system_v_axi4s_vid_out_0_0_compare_4
   (ram_empty_fb_i_reg,
    v1_reg,
    rd_en,
    \gpregsm1.curr_fwft_state_reg[1] ,
    out,
    comp1);
  output ram_empty_fb_i_reg;
  input [4:0]v1_reg;
  input rd_en;
  input [1:0]\gpregsm1.curr_fwft_state_reg[1] ;
  input out;
  input comp1;

  wire carrynet_0;
  wire carrynet_1;
  wire carrynet_2;
  wire carrynet_3;
  wire comp0;
  wire comp1;
  wire [1:0]\gpregsm1.curr_fwft_state_reg[1] ;
  wire out;
  wire ram_empty_fb_i_reg;
  wire rd_en;
  wire [4:0]v1_reg;
  wire [3:0]\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED ;
  wire [3:0]\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED ;

  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \gmux.gm[0].gm1.m1_CARRY4 
       (.CI(1'b0),
        .CO({carrynet_3,carrynet_2,carrynet_1,carrynet_0}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED [3:0]),
        .S(v1_reg[3:0]));
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \gmux.gm[4].gms.ms_CARRY4 
       (.CI(carrynet_3),
        .CO({\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED [3:1],comp0}),
        .CYINIT(1'b0),
        .DI({\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED [3:1],1'b0}),
        .O(\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED [3:0]),
        .S({\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED [3:1],v1_reg[4]}));
  LUT6 #(
    .INIT(64'hAAAAEFFFAAAAAAAA)) 
    ram_empty_i_i_1
       (.I0(comp0),
        .I1(rd_en),
        .I2(\gpregsm1.curr_fwft_state_reg[1] [0]),
        .I3(\gpregsm1.curr_fwft_state_reg[1] [1]),
        .I4(out),
        .I5(comp1),
        .O(ram_empty_fb_i_reg));
endmodule

(* ORIG_REF_NAME = "compare" *) 
module system_v_axi4s_vid_out_0_0_compare_5
   (comp1,
    v1_reg_0);
  output comp1;
  input [4:0]v1_reg_0;

  wire carrynet_0;
  wire carrynet_1;
  wire carrynet_2;
  wire carrynet_3;
  wire comp1;
  wire [4:0]v1_reg_0;
  wire [3:0]\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED ;
  wire [3:0]\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED ;

  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \gmux.gm[0].gm1.m1_CARRY4 
       (.CI(1'b0),
        .CO({carrynet_3,carrynet_2,carrynet_1,carrynet_0}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED [3:0]),
        .S(v1_reg_0[3:0]));
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \gmux.gm[4].gms.ms_CARRY4 
       (.CI(carrynet_3),
        .CO({\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED [3:1],comp1}),
        .CYINIT(1'b0),
        .DI({\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED [3:1],1'b0}),
        .O(\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED [3:0]),
        .S({\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED [3:1],v1_reg_0[4]}));
endmodule

(* ORIG_REF_NAME = "fifo_generator_ramfifo" *) 
module system_v_axi4s_vid_out_0_0_fifo_generator_ramfifo
   (wr_rst_busy,
    dout,
    empty,
    full,
    underflow,
    overflow,
    rd_data_count,
    wr_en,
    wr_clk,
    rd_clk,
    din,
    rst,
    rd_en);
  output wr_rst_busy;
  output [26:0]dout;
  output empty;
  output full;
  output underflow;
  output overflow;
  output [8:0]rd_data_count;
  input wr_en;
  input wr_clk;
  input rd_clk;
  input [26:0]din;
  input rst;
  input rd_en;

  wire [9:1]diff_wr_rd;
  wire [26:0]din;
  wire [26:0]dout;
  wire empty;
  wire full;
  wire \gntv_or_sync_fifo.gcx.clkx_n_0 ;
  wire \gntv_or_sync_fifo.gcx.clkx_n_1 ;
  wire \gntv_or_sync_fifo.gcx.clkx_n_13 ;
  wire \gntv_or_sync_fifo.gcx.clkx_n_14 ;
  wire \gntv_or_sync_fifo.gcx.clkx_n_15 ;
  wire \gntv_or_sync_fifo.gcx.clkx_n_16 ;
  wire \gntv_or_sync_fifo.gcx.clkx_n_17 ;
  wire \gntv_or_sync_fifo.gcx.clkx_n_18 ;
  wire \gntv_or_sync_fifo.gcx.clkx_n_2 ;
  wire \gntv_or_sync_fifo.gcx.clkx_n_3 ;
  wire \gntv_or_sync_fifo.gcx.clkx_n_34 ;
  wire \gntv_or_sync_fifo.gcx.clkx_n_35 ;
  wire \gntv_or_sync_fifo.gcx.clkx_n_36 ;
  wire \gntv_or_sync_fifo.gl0.rd_n_2 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_2 ;
  wire [4:0]\gras.rsts/c0/v1_reg ;
  wire [4:0]\gras.rsts/c1/v1_reg ;
  wire overflow;
  wire [10:3]p_0_in;
  wire [9:0]p_0_out;
  wire [9:0]p_12_out;
  wire [8:0]p_22_out;
  wire [9:0]p_23_out;
  wire p_3_out;
  wire rd_clk;
  wire [8:0]rd_data_count;
  wire rd_en;
  wire [9:0]rd_pntr_plus1;
  wire [2:0]rd_rst_i;
  wire rst;
  wire rst_full_ff_i;
  wire tmp_ram_rd_en;
  wire tmp_ram_regout_en;
  wire underflow;
  wire wr_clk;
  wire wr_en;
  wire wr_rst_busy;
  wire [1:0]wr_rst_i;

  system_v_axi4s_vid_out_0_0_clk_x_pntrs \gntv_or_sync_fifo.gcx.clkx 
       (.AR(wr_rst_i[0]),
        .D({p_0_in[10:8],p_0_in[4:3]}),
        .Q(p_0_out),
        .RD_PNTR_WR(p_23_out),
        .S({\gntv_or_sync_fifo.gcx.clkx_n_0 ,\gntv_or_sync_fifo.gcx.clkx_n_1 ,\gntv_or_sync_fifo.gcx.clkx_n_2 ,\gntv_or_sync_fifo.gcx.clkx_n_3 }),
        .WR_PNTR_RD(p_22_out),
        .diff_wr_rd(diff_wr_rd),
        .\g_rd.gvalid_low.rd_dc_i_reg[10] ({\gntv_or_sync_fifo.gcx.clkx_n_17 ,\gntv_or_sync_fifo.gcx.clkx_n_18 }),
        .\g_rd.gvalid_low.rd_dc_i_reg[10]_0 (\gntv_or_sync_fifo.gcx.clkx_n_34 ),
        .\g_rd.gvalid_low.rd_dc_i_reg[5] (\gntv_or_sync_fifo.gcx.clkx_n_36 ),
        .\g_rd.gvalid_low.rd_dc_i_reg[6] (\gntv_or_sync_fifo.gcx.clkx_n_35 ),
        .\g_rd.gvalid_low.rd_dc_i_reg[7] ({\gntv_or_sync_fifo.gcx.clkx_n_13 ,\gntv_or_sync_fifo.gcx.clkx_n_14 ,\gntv_or_sync_fifo.gcx.clkx_n_15 ,\gntv_or_sync_fifo.gcx.clkx_n_16 }),
        .\gc0.count_reg[9] (rd_pntr_plus1),
        .\gic0.gc0.count_d2_reg[9] (p_12_out),
        .\gpregsm1.user_valid_reg (\gntv_or_sync_fifo.gl0.rd_n_2 ),
        .\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] (rd_rst_i[1]),
        .out(p_3_out),
        .rd_clk(rd_clk),
        .v1_reg(\gras.rsts/c0/v1_reg ),
        .v1_reg_0(\gras.rsts/c1/v1_reg ),
        .wr_clk(wr_clk));
  system_v_axi4s_vid_out_0_0_rd_logic \gntv_or_sync_fifo.gl0.rd 
       (.D({p_0_in[10:8],p_0_in[4:3]}),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram (p_0_out),
        .Q(rd_pntr_plus1),
        .S({\gntv_or_sync_fifo.gcx.clkx_n_0 ,\gntv_or_sync_fifo.gcx.clkx_n_1 ,\gntv_or_sync_fifo.gcx.clkx_n_2 ,\gntv_or_sync_fifo.gcx.clkx_n_3 }),
        .WR_PNTR_RD(p_22_out),
        .diff_wr_rd(diff_wr_rd),
        .empty(empty),
        .\g_rd.gvalid_low.rd_dc_i_reg[5] (\gntv_or_sync_fifo.gl0.rd_n_2 ),
        .\gnxpm_cdc.wr_pntr_bin_reg[7] ({\gntv_or_sync_fifo.gcx.clkx_n_13 ,\gntv_or_sync_fifo.gcx.clkx_n_14 ,\gntv_or_sync_fifo.gcx.clkx_n_15 ,\gntv_or_sync_fifo.gcx.clkx_n_16 }),
        .\gnxpm_cdc.wr_pntr_bin_reg[7]_0 (\gntv_or_sync_fifo.gcx.clkx_n_34 ),
        .\gnxpm_cdc.wr_pntr_bin_reg[7]_1 (\gntv_or_sync_fifo.gcx.clkx_n_35 ),
        .\gnxpm_cdc.wr_pntr_bin_reg[7]_2 (\gntv_or_sync_fifo.gcx.clkx_n_36 ),
        .\gnxpm_cdc.wr_pntr_bin_reg[9] ({\gntv_or_sync_fifo.gcx.clkx_n_17 ,\gntv_or_sync_fifo.gcx.clkx_n_18 }),
        .\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] ({rd_rst_i[2],rd_rst_i[0]}),
        .out(p_3_out),
        .rd_clk(rd_clk),
        .rd_data_count(rd_data_count),
        .rd_en(rd_en),
        .tmp_ram_rd_en(tmp_ram_rd_en),
        .tmp_ram_regout_en(tmp_ram_regout_en),
        .underflow(underflow),
        .v1_reg(\gras.rsts/c0/v1_reg ),
        .v1_reg_0(\gras.rsts/c1/v1_reg ));
  system_v_axi4s_vid_out_0_0_wr_logic \gntv_or_sync_fifo.gl0.wr 
       (.AR(wr_rst_i[1]),
        .Q(p_12_out),
        .RD_PNTR_WR(p_23_out),
        .WEA(\gntv_or_sync_fifo.gl0.wr_n_2 ),
        .full(full),
        .out(rst_full_ff_i),
        .overflow(overflow),
        .wr_clk(wr_clk),
        .wr_en(wr_en),
        .wr_rst_busy(wr_rst_busy));
  system_v_axi4s_vid_out_0_0_memory \gntv_or_sync_fifo.mem 
       (.Q(p_12_out),
        .WEA(\gntv_or_sync_fifo.gl0.wr_n_2 ),
        .din(din),
        .dout(dout),
        .\gc0.count_d1_reg[9] (p_0_out),
        .out(rd_rst_i[0]),
        .rd_clk(rd_clk),
        .tmp_ram_rd_en(tmp_ram_rd_en),
        .tmp_ram_regout_en(tmp_ram_regout_en),
        .wr_clk(wr_clk));
  system_v_axi4s_vid_out_0_0_reset_blk_ramfifo rstblk
       (.\gc0.count_reg[1] (rd_rst_i),
        .\grstd1.grst_full.grst_f.rst_d3_reg_0 (rst_full_ff_i),
        .out(wr_rst_i),
        .rd_clk(rd_clk),
        .rst(rst),
        .wr_clk(wr_clk),
        .wr_rst_busy(wr_rst_busy));
endmodule

(* ORIG_REF_NAME = "fifo_generator_top" *) 
module system_v_axi4s_vid_out_0_0_fifo_generator_top
   (wr_rst_busy,
    dout,
    empty,
    full,
    underflow,
    overflow,
    rd_data_count,
    wr_en,
    wr_clk,
    rd_clk,
    din,
    rst,
    rd_en);
  output wr_rst_busy;
  output [26:0]dout;
  output empty;
  output full;
  output underflow;
  output overflow;
  output [8:0]rd_data_count;
  input wr_en;
  input wr_clk;
  input rd_clk;
  input [26:0]din;
  input rst;
  input rd_en;

  wire [26:0]din;
  wire [26:0]dout;
  wire empty;
  wire full;
  wire overflow;
  wire rd_clk;
  wire [8:0]rd_data_count;
  wire rd_en;
  wire rst;
  wire underflow;
  wire wr_clk;
  wire wr_en;
  wire wr_rst_busy;

  system_v_axi4s_vid_out_0_0_fifo_generator_ramfifo \grf.rf 
       (.din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .overflow(overflow),
        .rd_clk(rd_clk),
        .rd_data_count(rd_data_count),
        .rd_en(rd_en),
        .rst(rst),
        .underflow(underflow),
        .wr_clk(wr_clk),
        .wr_en(wr_en),
        .wr_rst_busy(wr_rst_busy));
endmodule

(* C_ADD_NGC_CONSTRAINT = "0" *) (* C_APPLICATION_TYPE_AXIS = "0" *) (* C_APPLICATION_TYPE_RACH = "0" *) 
(* C_APPLICATION_TYPE_RDCH = "0" *) (* C_APPLICATION_TYPE_WACH = "0" *) (* C_APPLICATION_TYPE_WDCH = "0" *) 
(* C_APPLICATION_TYPE_WRCH = "0" *) (* C_AXIS_TDATA_WIDTH = "8" *) (* C_AXIS_TDEST_WIDTH = "1" *) 
(* C_AXIS_TID_WIDTH = "1" *) (* C_AXIS_TKEEP_WIDTH = "1" *) (* C_AXIS_TSTRB_WIDTH = "1" *) 
(* C_AXIS_TUSER_WIDTH = "4" *) (* C_AXIS_TYPE = "0" *) (* C_AXI_ADDR_WIDTH = "32" *) 
(* C_AXI_ARUSER_WIDTH = "1" *) (* C_AXI_AWUSER_WIDTH = "1" *) (* C_AXI_BUSER_WIDTH = "1" *) 
(* C_AXI_DATA_WIDTH = "64" *) (* C_AXI_ID_WIDTH = "1" *) (* C_AXI_LEN_WIDTH = "8" *) 
(* C_AXI_LOCK_WIDTH = "1" *) (* C_AXI_RUSER_WIDTH = "1" *) (* C_AXI_TYPE = "1" *) 
(* C_AXI_WUSER_WIDTH = "1" *) (* C_COMMON_CLOCK = "0" *) (* C_COUNT_TYPE = "0" *) 
(* C_DATA_COUNT_WIDTH = "11" *) (* C_DEFAULT_VALUE = "BlankString" *) (* C_DIN_WIDTH = "27" *) 
(* C_DIN_WIDTH_AXIS = "1" *) (* C_DIN_WIDTH_RACH = "32" *) (* C_DIN_WIDTH_RDCH = "64" *) 
(* C_DIN_WIDTH_WACH = "32" *) (* C_DIN_WIDTH_WDCH = "64" *) (* C_DIN_WIDTH_WRCH = "2" *) 
(* C_DOUT_RST_VAL = "0" *) (* C_DOUT_WIDTH = "27" *) (* C_ENABLE_RLOCS = "0" *) 
(* C_ENABLE_RST_SYNC = "1" *) (* C_EN_SAFETY_CKT = "0" *) (* C_ERROR_INJECTION_TYPE = "0" *) 
(* C_ERROR_INJECTION_TYPE_AXIS = "0" *) (* C_ERROR_INJECTION_TYPE_RACH = "0" *) (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
(* C_ERROR_INJECTION_TYPE_WACH = "0" *) (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
(* C_FAMILY = "zynq" *) (* C_FULL_FLAGS_RST_VAL = "1" *) (* C_HAS_ALMOST_EMPTY = "0" *) 
(* C_HAS_ALMOST_FULL = "0" *) (* C_HAS_AXIS_TDATA = "1" *) (* C_HAS_AXIS_TDEST = "0" *) 
(* C_HAS_AXIS_TID = "0" *) (* C_HAS_AXIS_TKEEP = "0" *) (* C_HAS_AXIS_TLAST = "0" *) 
(* C_HAS_AXIS_TREADY = "1" *) (* C_HAS_AXIS_TSTRB = "0" *) (* C_HAS_AXIS_TUSER = "1" *) 
(* C_HAS_AXI_ARUSER = "0" *) (* C_HAS_AXI_AWUSER = "0" *) (* C_HAS_AXI_BUSER = "0" *) 
(* C_HAS_AXI_ID = "0" *) (* C_HAS_AXI_RD_CHANNEL = "1" *) (* C_HAS_AXI_RUSER = "0" *) 
(* C_HAS_AXI_WR_CHANNEL = "1" *) (* C_HAS_AXI_WUSER = "0" *) (* C_HAS_BACKUP = "0" *) 
(* C_HAS_DATA_COUNT = "0" *) (* C_HAS_DATA_COUNTS_AXIS = "0" *) (* C_HAS_DATA_COUNTS_RACH = "0" *) 
(* C_HAS_DATA_COUNTS_RDCH = "0" *) (* C_HAS_DATA_COUNTS_WACH = "0" *) (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
(* C_HAS_DATA_COUNTS_WRCH = "0" *) (* C_HAS_INT_CLK = "0" *) (* C_HAS_MASTER_CE = "0" *) 
(* C_HAS_MEMINIT_FILE = "0" *) (* C_HAS_OVERFLOW = "1" *) (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
(* C_HAS_PROG_FLAGS_RACH = "0" *) (* C_HAS_PROG_FLAGS_RDCH = "0" *) (* C_HAS_PROG_FLAGS_WACH = "0" *) 
(* C_HAS_PROG_FLAGS_WDCH = "0" *) (* C_HAS_PROG_FLAGS_WRCH = "0" *) (* C_HAS_RD_DATA_COUNT = "1" *) 
(* C_HAS_RD_RST = "0" *) (* C_HAS_RST = "1" *) (* C_HAS_SLAVE_CE = "0" *) 
(* C_HAS_SRST = "0" *) (* C_HAS_UNDERFLOW = "1" *) (* C_HAS_VALID = "1" *) 
(* C_HAS_WR_ACK = "0" *) (* C_HAS_WR_DATA_COUNT = "1" *) (* C_HAS_WR_RST = "0" *) 
(* C_IMPLEMENTATION_TYPE = "2" *) (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
(* C_IMPLEMENTATION_TYPE_RDCH = "1" *) (* C_IMPLEMENTATION_TYPE_WACH = "1" *) (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
(* C_IMPLEMENTATION_TYPE_WRCH = "1" *) (* C_INIT_WR_PNTR_VAL = "0" *) (* C_INTERFACE_TYPE = "0" *) 
(* C_MEMORY_TYPE = "1" *) (* C_MIF_FILE_NAME = "BlankString" *) (* C_MSGON_VAL = "1" *) 
(* C_OPTIMIZATION_MODE = "0" *) (* C_OVERFLOW_LOW = "0" *) (* C_POWER_SAVING_MODE = "0" *) 
(* C_PRELOAD_LATENCY = "0" *) (* C_PRELOAD_REGS = "1" *) (* C_PRIM_FIFO_TYPE = "1kx36" *) 
(* C_PRIM_FIFO_TYPE_AXIS = "1kx18" *) (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) (* C_PRIM_FIFO_TYPE_RDCH = "1kx36" *) 
(* C_PRIM_FIFO_TYPE_WACH = "512x36" *) (* C_PRIM_FIFO_TYPE_WDCH = "1kx36" *) (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
(* C_PROG_EMPTY_THRESH_ASSERT_VAL = "4" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
(* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
(* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "5" *) (* C_PROG_EMPTY_TYPE = "0" *) 
(* C_PROG_EMPTY_TYPE_AXIS = "0" *) (* C_PROG_EMPTY_TYPE_RACH = "0" *) (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
(* C_PROG_EMPTY_TYPE_WACH = "0" *) (* C_PROG_EMPTY_TYPE_WDCH = "0" *) (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
(* C_PROG_FULL_THRESH_ASSERT_VAL = "1023" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
(* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
(* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) (* C_PROG_FULL_THRESH_NEGATE_VAL = "1022" *) (* C_PROG_FULL_TYPE = "0" *) 
(* C_PROG_FULL_TYPE_AXIS = "0" *) (* C_PROG_FULL_TYPE_RACH = "0" *) (* C_PROG_FULL_TYPE_RDCH = "0" *) 
(* C_PROG_FULL_TYPE_WACH = "0" *) (* C_PROG_FULL_TYPE_WDCH = "0" *) (* C_PROG_FULL_TYPE_WRCH = "0" *) 
(* C_RACH_TYPE = "0" *) (* C_RDCH_TYPE = "0" *) (* C_RD_DATA_COUNT_WIDTH = "11" *) 
(* C_RD_DEPTH = "1024" *) (* C_RD_FREQ = "1" *) (* C_RD_PNTR_WIDTH = "10" *) 
(* C_REG_SLICE_MODE_AXIS = "0" *) (* C_REG_SLICE_MODE_RACH = "0" *) (* C_REG_SLICE_MODE_RDCH = "0" *) 
(* C_REG_SLICE_MODE_WACH = "0" *) (* C_REG_SLICE_MODE_WDCH = "0" *) (* C_REG_SLICE_MODE_WRCH = "0" *) 
(* C_SELECT_XPM = "0" *) (* C_SYNCHRONIZER_STAGE = "2" *) (* C_UNDERFLOW_LOW = "0" *) 
(* C_USE_COMMON_OVERFLOW = "0" *) (* C_USE_COMMON_UNDERFLOW = "0" *) (* C_USE_DEFAULT_SETTINGS = "0" *) 
(* C_USE_DOUT_RST = "1" *) (* C_USE_ECC = "0" *) (* C_USE_ECC_AXIS = "0" *) 
(* C_USE_ECC_RACH = "0" *) (* C_USE_ECC_RDCH = "0" *) (* C_USE_ECC_WACH = "0" *) 
(* C_USE_ECC_WDCH = "0" *) (* C_USE_ECC_WRCH = "0" *) (* C_USE_EMBEDDED_REG = "1" *) 
(* C_USE_FIFO16_FLAGS = "0" *) (* C_USE_FWFT_DATA_COUNT = "1" *) (* C_USE_PIPELINE_REG = "0" *) 
(* C_VALID_LOW = "0" *) (* C_WACH_TYPE = "0" *) (* C_WDCH_TYPE = "0" *) 
(* C_WRCH_TYPE = "0" *) (* C_WR_ACK_LOW = "0" *) (* C_WR_DATA_COUNT_WIDTH = "11" *) 
(* C_WR_DEPTH = "1024" *) (* C_WR_DEPTH_AXIS = "1024" *) (* C_WR_DEPTH_RACH = "16" *) 
(* C_WR_DEPTH_RDCH = "1024" *) (* C_WR_DEPTH_WACH = "16" *) (* C_WR_DEPTH_WDCH = "1024" *) 
(* C_WR_DEPTH_WRCH = "16" *) (* C_WR_FREQ = "1" *) (* C_WR_PNTR_WIDTH = "10" *) 
(* C_WR_PNTR_WIDTH_AXIS = "10" *) (* C_WR_PNTR_WIDTH_RACH = "4" *) (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
(* C_WR_PNTR_WIDTH_WACH = "4" *) (* C_WR_PNTR_WIDTH_WDCH = "10" *) (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
(* C_WR_RESPONSE_LATENCY = "1" *) (* ORIG_REF_NAME = "fifo_generator_v13_1_3" *) 
module system_v_axi4s_vid_out_0_0_fifo_generator_v13_1_3
   (backup,
    backup_marker,
    clk,
    rst,
    srst,
    wr_clk,
    wr_rst,
    rd_clk,
    rd_rst,
    din,
    wr_en,
    rd_en,
    prog_empty_thresh,
    prog_empty_thresh_assert,
    prog_empty_thresh_negate,
    prog_full_thresh,
    prog_full_thresh_assert,
    prog_full_thresh_negate,
    int_clk,
    injectdbiterr,
    injectsbiterr,
    sleep,
    dout,
    full,
    almost_full,
    wr_ack,
    overflow,
    empty,
    almost_empty,
    valid,
    underflow,
    data_count,
    rd_data_count,
    wr_data_count,
    prog_full,
    prog_empty,
    sbiterr,
    dbiterr,
    wr_rst_busy,
    rd_rst_busy,
    m_aclk,
    s_aclk,
    s_aresetn,
    m_aclk_en,
    s_aclk_en,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awqos,
    s_axi_awregion,
    s_axi_awuser,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wid,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wuser,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_buser,
    s_axi_bvalid,
    s_axi_bready,
    m_axi_awid,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awqos,
    m_axi_awregion,
    m_axi_awuser,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wid,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wuser,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bid,
    m_axi_bresp,
    m_axi_buser,
    m_axi_bvalid,
    m_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arqos,
    s_axi_arregion,
    s_axi_aruser,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_ruser,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_arid,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arqos,
    m_axi_arregion,
    m_axi_aruser,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rid,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_ruser,
    m_axi_rvalid,
    m_axi_rready,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tstrb,
    s_axis_tkeep,
    s_axis_tlast,
    s_axis_tid,
    s_axis_tdest,
    s_axis_tuser,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tstrb,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tid,
    m_axis_tdest,
    m_axis_tuser,
    axi_aw_injectsbiterr,
    axi_aw_injectdbiterr,
    axi_aw_prog_full_thresh,
    axi_aw_prog_empty_thresh,
    axi_aw_data_count,
    axi_aw_wr_data_count,
    axi_aw_rd_data_count,
    axi_aw_sbiterr,
    axi_aw_dbiterr,
    axi_aw_overflow,
    axi_aw_underflow,
    axi_aw_prog_full,
    axi_aw_prog_empty,
    axi_w_injectsbiterr,
    axi_w_injectdbiterr,
    axi_w_prog_full_thresh,
    axi_w_prog_empty_thresh,
    axi_w_data_count,
    axi_w_wr_data_count,
    axi_w_rd_data_count,
    axi_w_sbiterr,
    axi_w_dbiterr,
    axi_w_overflow,
    axi_w_underflow,
    axi_w_prog_full,
    axi_w_prog_empty,
    axi_b_injectsbiterr,
    axi_b_injectdbiterr,
    axi_b_prog_full_thresh,
    axi_b_prog_empty_thresh,
    axi_b_data_count,
    axi_b_wr_data_count,
    axi_b_rd_data_count,
    axi_b_sbiterr,
    axi_b_dbiterr,
    axi_b_overflow,
    axi_b_underflow,
    axi_b_prog_full,
    axi_b_prog_empty,
    axi_ar_injectsbiterr,
    axi_ar_injectdbiterr,
    axi_ar_prog_full_thresh,
    axi_ar_prog_empty_thresh,
    axi_ar_data_count,
    axi_ar_wr_data_count,
    axi_ar_rd_data_count,
    axi_ar_sbiterr,
    axi_ar_dbiterr,
    axi_ar_overflow,
    axi_ar_underflow,
    axi_ar_prog_full,
    axi_ar_prog_empty,
    axi_r_injectsbiterr,
    axi_r_injectdbiterr,
    axi_r_prog_full_thresh,
    axi_r_prog_empty_thresh,
    axi_r_data_count,
    axi_r_wr_data_count,
    axi_r_rd_data_count,
    axi_r_sbiterr,
    axi_r_dbiterr,
    axi_r_overflow,
    axi_r_underflow,
    axi_r_prog_full,
    axi_r_prog_empty,
    axis_injectsbiterr,
    axis_injectdbiterr,
    axis_prog_full_thresh,
    axis_prog_empty_thresh,
    axis_data_count,
    axis_wr_data_count,
    axis_rd_data_count,
    axis_sbiterr,
    axis_dbiterr,
    axis_overflow,
    axis_underflow,
    axis_prog_full,
    axis_prog_empty);
  input backup;
  input backup_marker;
  input clk;
  input rst;
  input srst;
  input wr_clk;
  input wr_rst;
  input rd_clk;
  input rd_rst;
  input [26:0]din;
  input wr_en;
  input rd_en;
  input [9:0]prog_empty_thresh;
  input [9:0]prog_empty_thresh_assert;
  input [9:0]prog_empty_thresh_negate;
  input [9:0]prog_full_thresh;
  input [9:0]prog_full_thresh_assert;
  input [9:0]prog_full_thresh_negate;
  input int_clk;
  input injectdbiterr;
  input injectsbiterr;
  input sleep;
  output [26:0]dout;
  output full;
  output almost_full;
  output wr_ack;
  output overflow;
  output empty;
  output almost_empty;
  output valid;
  output underflow;
  output [10:0]data_count;
  output [10:0]rd_data_count;
  output [10:0]wr_data_count;
  output prog_full;
  output prog_empty;
  output sbiterr;
  output dbiterr;
  output wr_rst_busy;
  output rd_rst_busy;
  input m_aclk;
  input s_aclk;
  input s_aresetn;
  input m_aclk_en;
  input s_aclk_en;
  input [0:0]s_axi_awid;
  input [31:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input [0:0]s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awqos;
  input [3:0]s_axi_awregion;
  input [0:0]s_axi_awuser;
  input s_axi_awvalid;
  output s_axi_awready;
  input [0:0]s_axi_wid;
  input [63:0]s_axi_wdata;
  input [7:0]s_axi_wstrb;
  input s_axi_wlast;
  input [0:0]s_axi_wuser;
  input s_axi_wvalid;
  output s_axi_wready;
  output [0:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output [0:0]s_axi_buser;
  output s_axi_bvalid;
  input s_axi_bready;
  output [0:0]m_axi_awid;
  output [31:0]m_axi_awaddr;
  output [7:0]m_axi_awlen;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [0:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awqos;
  output [3:0]m_axi_awregion;
  output [0:0]m_axi_awuser;
  output m_axi_awvalid;
  input m_axi_awready;
  output [0:0]m_axi_wid;
  output [63:0]m_axi_wdata;
  output [7:0]m_axi_wstrb;
  output m_axi_wlast;
  output [0:0]m_axi_wuser;
  output m_axi_wvalid;
  input m_axi_wready;
  input [0:0]m_axi_bid;
  input [1:0]m_axi_bresp;
  input [0:0]m_axi_buser;
  input m_axi_bvalid;
  output m_axi_bready;
  input [0:0]s_axi_arid;
  input [31:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input [0:0]s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input [3:0]s_axi_arqos;
  input [3:0]s_axi_arregion;
  input [0:0]s_axi_aruser;
  input s_axi_arvalid;
  output s_axi_arready;
  output [0:0]s_axi_rid;
  output [63:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output [0:0]s_axi_ruser;
  output s_axi_rvalid;
  input s_axi_rready;
  output [0:0]m_axi_arid;
  output [31:0]m_axi_araddr;
  output [7:0]m_axi_arlen;
  output [2:0]m_axi_arsize;
  output [1:0]m_axi_arburst;
  output [0:0]m_axi_arlock;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arqos;
  output [3:0]m_axi_arregion;
  output [0:0]m_axi_aruser;
  output m_axi_arvalid;
  input m_axi_arready;
  input [0:0]m_axi_rid;
  input [63:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rlast;
  input [0:0]m_axi_ruser;
  input m_axi_rvalid;
  output m_axi_rready;
  input s_axis_tvalid;
  output s_axis_tready;
  input [7:0]s_axis_tdata;
  input [0:0]s_axis_tstrb;
  input [0:0]s_axis_tkeep;
  input s_axis_tlast;
  input [0:0]s_axis_tid;
  input [0:0]s_axis_tdest;
  input [3:0]s_axis_tuser;
  output m_axis_tvalid;
  input m_axis_tready;
  output [7:0]m_axis_tdata;
  output [0:0]m_axis_tstrb;
  output [0:0]m_axis_tkeep;
  output m_axis_tlast;
  output [0:0]m_axis_tid;
  output [0:0]m_axis_tdest;
  output [3:0]m_axis_tuser;
  input axi_aw_injectsbiterr;
  input axi_aw_injectdbiterr;
  input [3:0]axi_aw_prog_full_thresh;
  input [3:0]axi_aw_prog_empty_thresh;
  output [4:0]axi_aw_data_count;
  output [4:0]axi_aw_wr_data_count;
  output [4:0]axi_aw_rd_data_count;
  output axi_aw_sbiterr;
  output axi_aw_dbiterr;
  output axi_aw_overflow;
  output axi_aw_underflow;
  output axi_aw_prog_full;
  output axi_aw_prog_empty;
  input axi_w_injectsbiterr;
  input axi_w_injectdbiterr;
  input [9:0]axi_w_prog_full_thresh;
  input [9:0]axi_w_prog_empty_thresh;
  output [10:0]axi_w_data_count;
  output [10:0]axi_w_wr_data_count;
  output [10:0]axi_w_rd_data_count;
  output axi_w_sbiterr;
  output axi_w_dbiterr;
  output axi_w_overflow;
  output axi_w_underflow;
  output axi_w_prog_full;
  output axi_w_prog_empty;
  input axi_b_injectsbiterr;
  input axi_b_injectdbiterr;
  input [3:0]axi_b_prog_full_thresh;
  input [3:0]axi_b_prog_empty_thresh;
  output [4:0]axi_b_data_count;
  output [4:0]axi_b_wr_data_count;
  output [4:0]axi_b_rd_data_count;
  output axi_b_sbiterr;
  output axi_b_dbiterr;
  output axi_b_overflow;
  output axi_b_underflow;
  output axi_b_prog_full;
  output axi_b_prog_empty;
  input axi_ar_injectsbiterr;
  input axi_ar_injectdbiterr;
  input [3:0]axi_ar_prog_full_thresh;
  input [3:0]axi_ar_prog_empty_thresh;
  output [4:0]axi_ar_data_count;
  output [4:0]axi_ar_wr_data_count;
  output [4:0]axi_ar_rd_data_count;
  output axi_ar_sbiterr;
  output axi_ar_dbiterr;
  output axi_ar_overflow;
  output axi_ar_underflow;
  output axi_ar_prog_full;
  output axi_ar_prog_empty;
  input axi_r_injectsbiterr;
  input axi_r_injectdbiterr;
  input [9:0]axi_r_prog_full_thresh;
  input [9:0]axi_r_prog_empty_thresh;
  output [10:0]axi_r_data_count;
  output [10:0]axi_r_wr_data_count;
  output [10:0]axi_r_rd_data_count;
  output axi_r_sbiterr;
  output axi_r_dbiterr;
  output axi_r_overflow;
  output axi_r_underflow;
  output axi_r_prog_full;
  output axi_r_prog_empty;
  input axis_injectsbiterr;
  input axis_injectdbiterr;
  input [9:0]axis_prog_full_thresh;
  input [9:0]axis_prog_empty_thresh;
  output [10:0]axis_data_count;
  output [10:0]axis_wr_data_count;
  output [10:0]axis_rd_data_count;
  output axis_sbiterr;
  output axis_dbiterr;
  output axis_overflow;
  output axis_underflow;
  output axis_prog_full;
  output axis_prog_empty;

  wire \<const0> ;
  wire [26:0]din;
  wire [26:0]dout;
  wire empty;
  wire full;
  wire overflow;
  wire rd_clk;
  wire [10:2]\^rd_data_count ;
  wire rd_en;
  wire rst;
  wire underflow;
  wire wr_clk;
  wire wr_en;
  wire wr_rst_busy;

  assign almost_empty = \<const0> ;
  assign almost_full = \<const0> ;
  assign axi_ar_data_count[4] = \<const0> ;
  assign axi_ar_data_count[3] = \<const0> ;
  assign axi_ar_data_count[2] = \<const0> ;
  assign axi_ar_data_count[1] = \<const0> ;
  assign axi_ar_data_count[0] = \<const0> ;
  assign axi_ar_dbiterr = \<const0> ;
  assign axi_ar_overflow = \<const0> ;
  assign axi_ar_prog_empty = \<const0> ;
  assign axi_ar_prog_full = \<const0> ;
  assign axi_ar_rd_data_count[4] = \<const0> ;
  assign axi_ar_rd_data_count[3] = \<const0> ;
  assign axi_ar_rd_data_count[2] = \<const0> ;
  assign axi_ar_rd_data_count[1] = \<const0> ;
  assign axi_ar_rd_data_count[0] = \<const0> ;
  assign axi_ar_sbiterr = \<const0> ;
  assign axi_ar_underflow = \<const0> ;
  assign axi_ar_wr_data_count[4] = \<const0> ;
  assign axi_ar_wr_data_count[3] = \<const0> ;
  assign axi_ar_wr_data_count[2] = \<const0> ;
  assign axi_ar_wr_data_count[1] = \<const0> ;
  assign axi_ar_wr_data_count[0] = \<const0> ;
  assign axi_aw_data_count[4] = \<const0> ;
  assign axi_aw_data_count[3] = \<const0> ;
  assign axi_aw_data_count[2] = \<const0> ;
  assign axi_aw_data_count[1] = \<const0> ;
  assign axi_aw_data_count[0] = \<const0> ;
  assign axi_aw_dbiterr = \<const0> ;
  assign axi_aw_overflow = \<const0> ;
  assign axi_aw_prog_empty = \<const0> ;
  assign axi_aw_prog_full = \<const0> ;
  assign axi_aw_rd_data_count[4] = \<const0> ;
  assign axi_aw_rd_data_count[3] = \<const0> ;
  assign axi_aw_rd_data_count[2] = \<const0> ;
  assign axi_aw_rd_data_count[1] = \<const0> ;
  assign axi_aw_rd_data_count[0] = \<const0> ;
  assign axi_aw_sbiterr = \<const0> ;
  assign axi_aw_underflow = \<const0> ;
  assign axi_aw_wr_data_count[4] = \<const0> ;
  assign axi_aw_wr_data_count[3] = \<const0> ;
  assign axi_aw_wr_data_count[2] = \<const0> ;
  assign axi_aw_wr_data_count[1] = \<const0> ;
  assign axi_aw_wr_data_count[0] = \<const0> ;
  assign axi_b_data_count[4] = \<const0> ;
  assign axi_b_data_count[3] = \<const0> ;
  assign axi_b_data_count[2] = \<const0> ;
  assign axi_b_data_count[1] = \<const0> ;
  assign axi_b_data_count[0] = \<const0> ;
  assign axi_b_dbiterr = \<const0> ;
  assign axi_b_overflow = \<const0> ;
  assign axi_b_prog_empty = \<const0> ;
  assign axi_b_prog_full = \<const0> ;
  assign axi_b_rd_data_count[4] = \<const0> ;
  assign axi_b_rd_data_count[3] = \<const0> ;
  assign axi_b_rd_data_count[2] = \<const0> ;
  assign axi_b_rd_data_count[1] = \<const0> ;
  assign axi_b_rd_data_count[0] = \<const0> ;
  assign axi_b_sbiterr = \<const0> ;
  assign axi_b_underflow = \<const0> ;
  assign axi_b_wr_data_count[4] = \<const0> ;
  assign axi_b_wr_data_count[3] = \<const0> ;
  assign axi_b_wr_data_count[2] = \<const0> ;
  assign axi_b_wr_data_count[1] = \<const0> ;
  assign axi_b_wr_data_count[0] = \<const0> ;
  assign axi_r_data_count[10] = \<const0> ;
  assign axi_r_data_count[9] = \<const0> ;
  assign axi_r_data_count[8] = \<const0> ;
  assign axi_r_data_count[7] = \<const0> ;
  assign axi_r_data_count[6] = \<const0> ;
  assign axi_r_data_count[5] = \<const0> ;
  assign axi_r_data_count[4] = \<const0> ;
  assign axi_r_data_count[3] = \<const0> ;
  assign axi_r_data_count[2] = \<const0> ;
  assign axi_r_data_count[1] = \<const0> ;
  assign axi_r_data_count[0] = \<const0> ;
  assign axi_r_dbiterr = \<const0> ;
  assign axi_r_overflow = \<const0> ;
  assign axi_r_prog_empty = \<const0> ;
  assign axi_r_prog_full = \<const0> ;
  assign axi_r_rd_data_count[10] = \<const0> ;
  assign axi_r_rd_data_count[9] = \<const0> ;
  assign axi_r_rd_data_count[8] = \<const0> ;
  assign axi_r_rd_data_count[7] = \<const0> ;
  assign axi_r_rd_data_count[6] = \<const0> ;
  assign axi_r_rd_data_count[5] = \<const0> ;
  assign axi_r_rd_data_count[4] = \<const0> ;
  assign axi_r_rd_data_count[3] = \<const0> ;
  assign axi_r_rd_data_count[2] = \<const0> ;
  assign axi_r_rd_data_count[1] = \<const0> ;
  assign axi_r_rd_data_count[0] = \<const0> ;
  assign axi_r_sbiterr = \<const0> ;
  assign axi_r_underflow = \<const0> ;
  assign axi_r_wr_data_count[10] = \<const0> ;
  assign axi_r_wr_data_count[9] = \<const0> ;
  assign axi_r_wr_data_count[8] = \<const0> ;
  assign axi_r_wr_data_count[7] = \<const0> ;
  assign axi_r_wr_data_count[6] = \<const0> ;
  assign axi_r_wr_data_count[5] = \<const0> ;
  assign axi_r_wr_data_count[4] = \<const0> ;
  assign axi_r_wr_data_count[3] = \<const0> ;
  assign axi_r_wr_data_count[2] = \<const0> ;
  assign axi_r_wr_data_count[1] = \<const0> ;
  assign axi_r_wr_data_count[0] = \<const0> ;
  assign axi_w_data_count[10] = \<const0> ;
  assign axi_w_data_count[9] = \<const0> ;
  assign axi_w_data_count[8] = \<const0> ;
  assign axi_w_data_count[7] = \<const0> ;
  assign axi_w_data_count[6] = \<const0> ;
  assign axi_w_data_count[5] = \<const0> ;
  assign axi_w_data_count[4] = \<const0> ;
  assign axi_w_data_count[3] = \<const0> ;
  assign axi_w_data_count[2] = \<const0> ;
  assign axi_w_data_count[1] = \<const0> ;
  assign axi_w_data_count[0] = \<const0> ;
  assign axi_w_dbiterr = \<const0> ;
  assign axi_w_overflow = \<const0> ;
  assign axi_w_prog_empty = \<const0> ;
  assign axi_w_prog_full = \<const0> ;
  assign axi_w_rd_data_count[10] = \<const0> ;
  assign axi_w_rd_data_count[9] = \<const0> ;
  assign axi_w_rd_data_count[8] = \<const0> ;
  assign axi_w_rd_data_count[7] = \<const0> ;
  assign axi_w_rd_data_count[6] = \<const0> ;
  assign axi_w_rd_data_count[5] = \<const0> ;
  assign axi_w_rd_data_count[4] = \<const0> ;
  assign axi_w_rd_data_count[3] = \<const0> ;
  assign axi_w_rd_data_count[2] = \<const0> ;
  assign axi_w_rd_data_count[1] = \<const0> ;
  assign axi_w_rd_data_count[0] = \<const0> ;
  assign axi_w_sbiterr = \<const0> ;
  assign axi_w_underflow = \<const0> ;
  assign axi_w_wr_data_count[10] = \<const0> ;
  assign axi_w_wr_data_count[9] = \<const0> ;
  assign axi_w_wr_data_count[8] = \<const0> ;
  assign axi_w_wr_data_count[7] = \<const0> ;
  assign axi_w_wr_data_count[6] = \<const0> ;
  assign axi_w_wr_data_count[5] = \<const0> ;
  assign axi_w_wr_data_count[4] = \<const0> ;
  assign axi_w_wr_data_count[3] = \<const0> ;
  assign axi_w_wr_data_count[2] = \<const0> ;
  assign axi_w_wr_data_count[1] = \<const0> ;
  assign axi_w_wr_data_count[0] = \<const0> ;
  assign axis_data_count[10] = \<const0> ;
  assign axis_data_count[9] = \<const0> ;
  assign axis_data_count[8] = \<const0> ;
  assign axis_data_count[7] = \<const0> ;
  assign axis_data_count[6] = \<const0> ;
  assign axis_data_count[5] = \<const0> ;
  assign axis_data_count[4] = \<const0> ;
  assign axis_data_count[3] = \<const0> ;
  assign axis_data_count[2] = \<const0> ;
  assign axis_data_count[1] = \<const0> ;
  assign axis_data_count[0] = \<const0> ;
  assign axis_dbiterr = \<const0> ;
  assign axis_overflow = \<const0> ;
  assign axis_prog_empty = \<const0> ;
  assign axis_prog_full = \<const0> ;
  assign axis_rd_data_count[10] = \<const0> ;
  assign axis_rd_data_count[9] = \<const0> ;
  assign axis_rd_data_count[8] = \<const0> ;
  assign axis_rd_data_count[7] = \<const0> ;
  assign axis_rd_data_count[6] = \<const0> ;
  assign axis_rd_data_count[5] = \<const0> ;
  assign axis_rd_data_count[4] = \<const0> ;
  assign axis_rd_data_count[3] = \<const0> ;
  assign axis_rd_data_count[2] = \<const0> ;
  assign axis_rd_data_count[1] = \<const0> ;
  assign axis_rd_data_count[0] = \<const0> ;
  assign axis_sbiterr = \<const0> ;
  assign axis_underflow = \<const0> ;
  assign axis_wr_data_count[10] = \<const0> ;
  assign axis_wr_data_count[9] = \<const0> ;
  assign axis_wr_data_count[8] = \<const0> ;
  assign axis_wr_data_count[7] = \<const0> ;
  assign axis_wr_data_count[6] = \<const0> ;
  assign axis_wr_data_count[5] = \<const0> ;
  assign axis_wr_data_count[4] = \<const0> ;
  assign axis_wr_data_count[3] = \<const0> ;
  assign axis_wr_data_count[2] = \<const0> ;
  assign axis_wr_data_count[1] = \<const0> ;
  assign axis_wr_data_count[0] = \<const0> ;
  assign data_count[10] = \<const0> ;
  assign data_count[9] = \<const0> ;
  assign data_count[8] = \<const0> ;
  assign data_count[7] = \<const0> ;
  assign data_count[6] = \<const0> ;
  assign data_count[5] = \<const0> ;
  assign data_count[4] = \<const0> ;
  assign data_count[3] = \<const0> ;
  assign data_count[2] = \<const0> ;
  assign data_count[1] = \<const0> ;
  assign data_count[0] = \<const0> ;
  assign dbiterr = \<const0> ;
  assign m_axi_araddr[31] = \<const0> ;
  assign m_axi_araddr[30] = \<const0> ;
  assign m_axi_araddr[29] = \<const0> ;
  assign m_axi_araddr[28] = \<const0> ;
  assign m_axi_araddr[27] = \<const0> ;
  assign m_axi_araddr[26] = \<const0> ;
  assign m_axi_araddr[25] = \<const0> ;
  assign m_axi_araddr[24] = \<const0> ;
  assign m_axi_araddr[23] = \<const0> ;
  assign m_axi_araddr[22] = \<const0> ;
  assign m_axi_araddr[21] = \<const0> ;
  assign m_axi_araddr[20] = \<const0> ;
  assign m_axi_araddr[19] = \<const0> ;
  assign m_axi_araddr[18] = \<const0> ;
  assign m_axi_araddr[17] = \<const0> ;
  assign m_axi_araddr[16] = \<const0> ;
  assign m_axi_araddr[15] = \<const0> ;
  assign m_axi_araddr[14] = \<const0> ;
  assign m_axi_araddr[13] = \<const0> ;
  assign m_axi_araddr[12] = \<const0> ;
  assign m_axi_araddr[11] = \<const0> ;
  assign m_axi_araddr[10] = \<const0> ;
  assign m_axi_araddr[9] = \<const0> ;
  assign m_axi_araddr[8] = \<const0> ;
  assign m_axi_araddr[7] = \<const0> ;
  assign m_axi_araddr[6] = \<const0> ;
  assign m_axi_araddr[5] = \<const0> ;
  assign m_axi_araddr[4] = \<const0> ;
  assign m_axi_araddr[3] = \<const0> ;
  assign m_axi_araddr[2] = \<const0> ;
  assign m_axi_araddr[1] = \<const0> ;
  assign m_axi_araddr[0] = \<const0> ;
  assign m_axi_arburst[1] = \<const0> ;
  assign m_axi_arburst[0] = \<const0> ;
  assign m_axi_arcache[3] = \<const0> ;
  assign m_axi_arcache[2] = \<const0> ;
  assign m_axi_arcache[1] = \<const0> ;
  assign m_axi_arcache[0] = \<const0> ;
  assign m_axi_arid[0] = \<const0> ;
  assign m_axi_arlen[7] = \<const0> ;
  assign m_axi_arlen[6] = \<const0> ;
  assign m_axi_arlen[5] = \<const0> ;
  assign m_axi_arlen[4] = \<const0> ;
  assign m_axi_arlen[3] = \<const0> ;
  assign m_axi_arlen[2] = \<const0> ;
  assign m_axi_arlen[1] = \<const0> ;
  assign m_axi_arlen[0] = \<const0> ;
  assign m_axi_arlock[0] = \<const0> ;
  assign m_axi_arprot[2] = \<const0> ;
  assign m_axi_arprot[1] = \<const0> ;
  assign m_axi_arprot[0] = \<const0> ;
  assign m_axi_arqos[3] = \<const0> ;
  assign m_axi_arqos[2] = \<const0> ;
  assign m_axi_arqos[1] = \<const0> ;
  assign m_axi_arqos[0] = \<const0> ;
  assign m_axi_arregion[3] = \<const0> ;
  assign m_axi_arregion[2] = \<const0> ;
  assign m_axi_arregion[1] = \<const0> ;
  assign m_axi_arregion[0] = \<const0> ;
  assign m_axi_arsize[2] = \<const0> ;
  assign m_axi_arsize[1] = \<const0> ;
  assign m_axi_arsize[0] = \<const0> ;
  assign m_axi_aruser[0] = \<const0> ;
  assign m_axi_arvalid = \<const0> ;
  assign m_axi_awaddr[31] = \<const0> ;
  assign m_axi_awaddr[30] = \<const0> ;
  assign m_axi_awaddr[29] = \<const0> ;
  assign m_axi_awaddr[28] = \<const0> ;
  assign m_axi_awaddr[27] = \<const0> ;
  assign m_axi_awaddr[26] = \<const0> ;
  assign m_axi_awaddr[25] = \<const0> ;
  assign m_axi_awaddr[24] = \<const0> ;
  assign m_axi_awaddr[23] = \<const0> ;
  assign m_axi_awaddr[22] = \<const0> ;
  assign m_axi_awaddr[21] = \<const0> ;
  assign m_axi_awaddr[20] = \<const0> ;
  assign m_axi_awaddr[19] = \<const0> ;
  assign m_axi_awaddr[18] = \<const0> ;
  assign m_axi_awaddr[17] = \<const0> ;
  assign m_axi_awaddr[16] = \<const0> ;
  assign m_axi_awaddr[15] = \<const0> ;
  assign m_axi_awaddr[14] = \<const0> ;
  assign m_axi_awaddr[13] = \<const0> ;
  assign m_axi_awaddr[12] = \<const0> ;
  assign m_axi_awaddr[11] = \<const0> ;
  assign m_axi_awaddr[10] = \<const0> ;
  assign m_axi_awaddr[9] = \<const0> ;
  assign m_axi_awaddr[8] = \<const0> ;
  assign m_axi_awaddr[7] = \<const0> ;
  assign m_axi_awaddr[6] = \<const0> ;
  assign m_axi_awaddr[5] = \<const0> ;
  assign m_axi_awaddr[4] = \<const0> ;
  assign m_axi_awaddr[3] = \<const0> ;
  assign m_axi_awaddr[2] = \<const0> ;
  assign m_axi_awaddr[1] = \<const0> ;
  assign m_axi_awaddr[0] = \<const0> ;
  assign m_axi_awburst[1] = \<const0> ;
  assign m_axi_awburst[0] = \<const0> ;
  assign m_axi_awcache[3] = \<const0> ;
  assign m_axi_awcache[2] = \<const0> ;
  assign m_axi_awcache[1] = \<const0> ;
  assign m_axi_awcache[0] = \<const0> ;
  assign m_axi_awid[0] = \<const0> ;
  assign m_axi_awlen[7] = \<const0> ;
  assign m_axi_awlen[6] = \<const0> ;
  assign m_axi_awlen[5] = \<const0> ;
  assign m_axi_awlen[4] = \<const0> ;
  assign m_axi_awlen[3] = \<const0> ;
  assign m_axi_awlen[2] = \<const0> ;
  assign m_axi_awlen[1] = \<const0> ;
  assign m_axi_awlen[0] = \<const0> ;
  assign m_axi_awlock[0] = \<const0> ;
  assign m_axi_awprot[2] = \<const0> ;
  assign m_axi_awprot[1] = \<const0> ;
  assign m_axi_awprot[0] = \<const0> ;
  assign m_axi_awqos[3] = \<const0> ;
  assign m_axi_awqos[2] = \<const0> ;
  assign m_axi_awqos[1] = \<const0> ;
  assign m_axi_awqos[0] = \<const0> ;
  assign m_axi_awregion[3] = \<const0> ;
  assign m_axi_awregion[2] = \<const0> ;
  assign m_axi_awregion[1] = \<const0> ;
  assign m_axi_awregion[0] = \<const0> ;
  assign m_axi_awsize[2] = \<const0> ;
  assign m_axi_awsize[1] = \<const0> ;
  assign m_axi_awsize[0] = \<const0> ;
  assign m_axi_awuser[0] = \<const0> ;
  assign m_axi_awvalid = \<const0> ;
  assign m_axi_bready = \<const0> ;
  assign m_axi_rready = \<const0> ;
  assign m_axi_wdata[63] = \<const0> ;
  assign m_axi_wdata[62] = \<const0> ;
  assign m_axi_wdata[61] = \<const0> ;
  assign m_axi_wdata[60] = \<const0> ;
  assign m_axi_wdata[59] = \<const0> ;
  assign m_axi_wdata[58] = \<const0> ;
  assign m_axi_wdata[57] = \<const0> ;
  assign m_axi_wdata[56] = \<const0> ;
  assign m_axi_wdata[55] = \<const0> ;
  assign m_axi_wdata[54] = \<const0> ;
  assign m_axi_wdata[53] = \<const0> ;
  assign m_axi_wdata[52] = \<const0> ;
  assign m_axi_wdata[51] = \<const0> ;
  assign m_axi_wdata[50] = \<const0> ;
  assign m_axi_wdata[49] = \<const0> ;
  assign m_axi_wdata[48] = \<const0> ;
  assign m_axi_wdata[47] = \<const0> ;
  assign m_axi_wdata[46] = \<const0> ;
  assign m_axi_wdata[45] = \<const0> ;
  assign m_axi_wdata[44] = \<const0> ;
  assign m_axi_wdata[43] = \<const0> ;
  assign m_axi_wdata[42] = \<const0> ;
  assign m_axi_wdata[41] = \<const0> ;
  assign m_axi_wdata[40] = \<const0> ;
  assign m_axi_wdata[39] = \<const0> ;
  assign m_axi_wdata[38] = \<const0> ;
  assign m_axi_wdata[37] = \<const0> ;
  assign m_axi_wdata[36] = \<const0> ;
  assign m_axi_wdata[35] = \<const0> ;
  assign m_axi_wdata[34] = \<const0> ;
  assign m_axi_wdata[33] = \<const0> ;
  assign m_axi_wdata[32] = \<const0> ;
  assign m_axi_wdata[31] = \<const0> ;
  assign m_axi_wdata[30] = \<const0> ;
  assign m_axi_wdata[29] = \<const0> ;
  assign m_axi_wdata[28] = \<const0> ;
  assign m_axi_wdata[27] = \<const0> ;
  assign m_axi_wdata[26] = \<const0> ;
  assign m_axi_wdata[25] = \<const0> ;
  assign m_axi_wdata[24] = \<const0> ;
  assign m_axi_wdata[23] = \<const0> ;
  assign m_axi_wdata[22] = \<const0> ;
  assign m_axi_wdata[21] = \<const0> ;
  assign m_axi_wdata[20] = \<const0> ;
  assign m_axi_wdata[19] = \<const0> ;
  assign m_axi_wdata[18] = \<const0> ;
  assign m_axi_wdata[17] = \<const0> ;
  assign m_axi_wdata[16] = \<const0> ;
  assign m_axi_wdata[15] = \<const0> ;
  assign m_axi_wdata[14] = \<const0> ;
  assign m_axi_wdata[13] = \<const0> ;
  assign m_axi_wdata[12] = \<const0> ;
  assign m_axi_wdata[11] = \<const0> ;
  assign m_axi_wdata[10] = \<const0> ;
  assign m_axi_wdata[9] = \<const0> ;
  assign m_axi_wdata[8] = \<const0> ;
  assign m_axi_wdata[7] = \<const0> ;
  assign m_axi_wdata[6] = \<const0> ;
  assign m_axi_wdata[5] = \<const0> ;
  assign m_axi_wdata[4] = \<const0> ;
  assign m_axi_wdata[3] = \<const0> ;
  assign m_axi_wdata[2] = \<const0> ;
  assign m_axi_wdata[1] = \<const0> ;
  assign m_axi_wdata[0] = \<const0> ;
  assign m_axi_wid[0] = \<const0> ;
  assign m_axi_wlast = \<const0> ;
  assign m_axi_wstrb[7] = \<const0> ;
  assign m_axi_wstrb[6] = \<const0> ;
  assign m_axi_wstrb[5] = \<const0> ;
  assign m_axi_wstrb[4] = \<const0> ;
  assign m_axi_wstrb[3] = \<const0> ;
  assign m_axi_wstrb[2] = \<const0> ;
  assign m_axi_wstrb[1] = \<const0> ;
  assign m_axi_wstrb[0] = \<const0> ;
  assign m_axi_wuser[0] = \<const0> ;
  assign m_axi_wvalid = \<const0> ;
  assign m_axis_tdata[7] = \<const0> ;
  assign m_axis_tdata[6] = \<const0> ;
  assign m_axis_tdata[5] = \<const0> ;
  assign m_axis_tdata[4] = \<const0> ;
  assign m_axis_tdata[3] = \<const0> ;
  assign m_axis_tdata[2] = \<const0> ;
  assign m_axis_tdata[1] = \<const0> ;
  assign m_axis_tdata[0] = \<const0> ;
  assign m_axis_tdest[0] = \<const0> ;
  assign m_axis_tid[0] = \<const0> ;
  assign m_axis_tkeep[0] = \<const0> ;
  assign m_axis_tlast = \<const0> ;
  assign m_axis_tstrb[0] = \<const0> ;
  assign m_axis_tuser[3] = \<const0> ;
  assign m_axis_tuser[2] = \<const0> ;
  assign m_axis_tuser[1] = \<const0> ;
  assign m_axis_tuser[0] = \<const0> ;
  assign m_axis_tvalid = \<const0> ;
  assign prog_empty = \<const0> ;
  assign prog_full = \<const0> ;
  assign rd_data_count[10:2] = \^rd_data_count [10:2];
  assign rd_data_count[1] = \<const0> ;
  assign rd_data_count[0] = \<const0> ;
  assign rd_rst_busy = \<const0> ;
  assign s_axi_arready = \<const0> ;
  assign s_axi_awready = \<const0> ;
  assign s_axi_bid[0] = \<const0> ;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_buser[0] = \<const0> ;
  assign s_axi_bvalid = \<const0> ;
  assign s_axi_rdata[63] = \<const0> ;
  assign s_axi_rdata[62] = \<const0> ;
  assign s_axi_rdata[61] = \<const0> ;
  assign s_axi_rdata[60] = \<const0> ;
  assign s_axi_rdata[59] = \<const0> ;
  assign s_axi_rdata[58] = \<const0> ;
  assign s_axi_rdata[57] = \<const0> ;
  assign s_axi_rdata[56] = \<const0> ;
  assign s_axi_rdata[55] = \<const0> ;
  assign s_axi_rdata[54] = \<const0> ;
  assign s_axi_rdata[53] = \<const0> ;
  assign s_axi_rdata[52] = \<const0> ;
  assign s_axi_rdata[51] = \<const0> ;
  assign s_axi_rdata[50] = \<const0> ;
  assign s_axi_rdata[49] = \<const0> ;
  assign s_axi_rdata[48] = \<const0> ;
  assign s_axi_rdata[47] = \<const0> ;
  assign s_axi_rdata[46] = \<const0> ;
  assign s_axi_rdata[45] = \<const0> ;
  assign s_axi_rdata[44] = \<const0> ;
  assign s_axi_rdata[43] = \<const0> ;
  assign s_axi_rdata[42] = \<const0> ;
  assign s_axi_rdata[41] = \<const0> ;
  assign s_axi_rdata[40] = \<const0> ;
  assign s_axi_rdata[39] = \<const0> ;
  assign s_axi_rdata[38] = \<const0> ;
  assign s_axi_rdata[37] = \<const0> ;
  assign s_axi_rdata[36] = \<const0> ;
  assign s_axi_rdata[35] = \<const0> ;
  assign s_axi_rdata[34] = \<const0> ;
  assign s_axi_rdata[33] = \<const0> ;
  assign s_axi_rdata[32] = \<const0> ;
  assign s_axi_rdata[31] = \<const0> ;
  assign s_axi_rdata[30] = \<const0> ;
  assign s_axi_rdata[29] = \<const0> ;
  assign s_axi_rdata[28] = \<const0> ;
  assign s_axi_rdata[27] = \<const0> ;
  assign s_axi_rdata[26] = \<const0> ;
  assign s_axi_rdata[25] = \<const0> ;
  assign s_axi_rdata[24] = \<const0> ;
  assign s_axi_rdata[23] = \<const0> ;
  assign s_axi_rdata[22] = \<const0> ;
  assign s_axi_rdata[21] = \<const0> ;
  assign s_axi_rdata[20] = \<const0> ;
  assign s_axi_rdata[19] = \<const0> ;
  assign s_axi_rdata[18] = \<const0> ;
  assign s_axi_rdata[17] = \<const0> ;
  assign s_axi_rdata[16] = \<const0> ;
  assign s_axi_rdata[15] = \<const0> ;
  assign s_axi_rdata[14] = \<const0> ;
  assign s_axi_rdata[13] = \<const0> ;
  assign s_axi_rdata[12] = \<const0> ;
  assign s_axi_rdata[11] = \<const0> ;
  assign s_axi_rdata[10] = \<const0> ;
  assign s_axi_rdata[9] = \<const0> ;
  assign s_axi_rdata[8] = \<const0> ;
  assign s_axi_rdata[7] = \<const0> ;
  assign s_axi_rdata[6] = \<const0> ;
  assign s_axi_rdata[5] = \<const0> ;
  assign s_axi_rdata[4] = \<const0> ;
  assign s_axi_rdata[3] = \<const0> ;
  assign s_axi_rdata[2] = \<const0> ;
  assign s_axi_rdata[1] = \<const0> ;
  assign s_axi_rdata[0] = \<const0> ;
  assign s_axi_rid[0] = \<const0> ;
  assign s_axi_rlast = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  assign s_axi_ruser[0] = \<const0> ;
  assign s_axi_rvalid = \<const0> ;
  assign s_axi_wready = \<const0> ;
  assign s_axis_tready = \<const0> ;
  assign sbiterr = \<const0> ;
  assign valid = \<const0> ;
  assign wr_ack = \<const0> ;
  assign wr_data_count[10] = \<const0> ;
  assign wr_data_count[9] = \<const0> ;
  assign wr_data_count[8] = \<const0> ;
  assign wr_data_count[7] = \<const0> ;
  assign wr_data_count[6] = \<const0> ;
  assign wr_data_count[5] = \<const0> ;
  assign wr_data_count[4] = \<const0> ;
  assign wr_data_count[3] = \<const0> ;
  assign wr_data_count[2] = \<const0> ;
  assign wr_data_count[1] = \<const0> ;
  assign wr_data_count[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  system_v_axi4s_vid_out_0_0_fifo_generator_v13_1_3_synth inst_fifo_gen
       (.din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .overflow(overflow),
        .rd_clk(rd_clk),
        .rd_data_count(\^rd_data_count ),
        .rd_en(rd_en),
        .rst(rst),
        .underflow(underflow),
        .wr_clk(wr_clk),
        .wr_en(wr_en),
        .wr_rst_busy(wr_rst_busy));
endmodule

(* ORIG_REF_NAME = "fifo_generator_v13_1_3_synth" *) 
module system_v_axi4s_vid_out_0_0_fifo_generator_v13_1_3_synth
   (wr_rst_busy,
    dout,
    empty,
    full,
    underflow,
    overflow,
    rd_data_count,
    wr_en,
    wr_clk,
    rd_clk,
    din,
    rst,
    rd_en);
  output wr_rst_busy;
  output [26:0]dout;
  output empty;
  output full;
  output underflow;
  output overflow;
  output [8:0]rd_data_count;
  input wr_en;
  input wr_clk;
  input rd_clk;
  input [26:0]din;
  input rst;
  input rd_en;

  wire [26:0]din;
  wire [26:0]dout;
  wire empty;
  wire full;
  wire overflow;
  wire rd_clk;
  wire [8:0]rd_data_count;
  wire rd_en;
  wire rst;
  wire underflow;
  wire wr_clk;
  wire wr_en;
  wire wr_rst_busy;

  system_v_axi4s_vid_out_0_0_fifo_generator_top \gconvfifo.rf 
       (.din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .overflow(overflow),
        .rd_clk(rd_clk),
        .rd_data_count(rd_data_count),
        .rd_en(rd_en),
        .rst(rst),
        .underflow(underflow),
        .wr_clk(wr_clk),
        .wr_en(wr_en),
        .wr_rst_busy(wr_rst_busy));
endmodule

(* ORIG_REF_NAME = "memory" *) 
module system_v_axi4s_vid_out_0_0_memory
   (dout,
    wr_clk,
    rd_clk,
    WEA,
    tmp_ram_rd_en,
    tmp_ram_regout_en,
    out,
    Q,
    \gc0.count_d1_reg[9] ,
    din);
  output [26:0]dout;
  input wr_clk;
  input rd_clk;
  input [0:0]WEA;
  input tmp_ram_rd_en;
  input tmp_ram_regout_en;
  input [0:0]out;
  input [9:0]Q;
  input [9:0]\gc0.count_d1_reg[9] ;
  input [26:0]din;

  wire [9:0]Q;
  wire [0:0]WEA;
  wire [26:0]din;
  wire [26:0]dout;
  wire [9:0]\gc0.count_d1_reg[9] ;
  wire [0:0]out;
  wire rd_clk;
  wire tmp_ram_rd_en;
  wire tmp_ram_regout_en;
  wire wr_clk;

  system_v_axi4s_vid_out_0_0_blk_mem_gen_v8_3_5 \gbm.gbmg.gbmgb.ngecc.bmg 
       (.Q(Q),
        .WEA(WEA),
        .din(din),
        .dout(dout),
        .\gc0.count_d1_reg[9] (\gc0.count_d1_reg[9] ),
        .out(out),
        .rd_clk(rd_clk),
        .tmp_ram_rd_en(tmp_ram_rd_en),
        .tmp_ram_regout_en(tmp_ram_regout_en),
        .wr_clk(wr_clk));
endmodule

(* ORIG_REF_NAME = "rd_bin_cntr" *) 
module system_v_axi4s_vid_out_0_0_rd_bin_cntr
   (Q,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ,
    E,
    rd_clk,
    \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] );
  output [9:0]Q;
  output [9:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ;
  input [0:0]E;
  input rd_clk;
  input [0:0]\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] ;

  wire [9:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ;
  wire [0:0]E;
  wire [9:0]Q;
  wire \gc0.count[9]_i_2_n_0 ;
  wire [0:0]\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] ;
  wire [9:0]plusOp;
  wire rd_clk;

  LUT1 #(
    .INIT(2'h1)) 
    \gc0.count[0]_i_1 
       (.I0(Q[0]),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gc0.count[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \gc0.count[2]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(plusOp[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \gc0.count[3]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(plusOp[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \gc0.count[4]_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(plusOp[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \gc0.count[5]_i_1 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[4]),
        .I5(Q[5]),
        .O(plusOp[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gc0.count[6]_i_1 
       (.I0(\gc0.count[9]_i_2_n_0 ),
        .I1(Q[6]),
        .O(plusOp[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \gc0.count[7]_i_1 
       (.I0(\gc0.count[9]_i_2_n_0 ),
        .I1(Q[6]),
        .I2(Q[7]),
        .O(plusOp[7]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \gc0.count[8]_i_1 
       (.I0(Q[6]),
        .I1(\gc0.count[9]_i_2_n_0 ),
        .I2(Q[7]),
        .I3(Q[8]),
        .O(plusOp[8]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \gc0.count[9]_i_1 
       (.I0(Q[7]),
        .I1(\gc0.count[9]_i_2_n_0 ),
        .I2(Q[6]),
        .I3(Q[8]),
        .I4(Q[9]),
        .O(plusOp[9]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \gc0.count[9]_i_2 
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(Q[4]),
        .O(\gc0.count[9]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[0] 
       (.C(rd_clk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] ),
        .D(Q[0]),
        .Q(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram [0]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[1] 
       (.C(rd_clk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] ),
        .D(Q[1]),
        .Q(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram [1]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[2] 
       (.C(rd_clk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] ),
        .D(Q[2]),
        .Q(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram [2]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[3] 
       (.C(rd_clk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] ),
        .D(Q[3]),
        .Q(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram [3]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[4] 
       (.C(rd_clk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] ),
        .D(Q[4]),
        .Q(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram [4]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[5] 
       (.C(rd_clk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] ),
        .D(Q[5]),
        .Q(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram [5]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[6] 
       (.C(rd_clk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] ),
        .D(Q[6]),
        .Q(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram [6]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[7] 
       (.C(rd_clk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] ),
        .D(Q[7]),
        .Q(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram [7]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[8] 
       (.C(rd_clk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] ),
        .D(Q[8]),
        .Q(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram [8]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[9] 
       (.C(rd_clk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] ),
        .D(Q[9]),
        .Q(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram [9]));
  FDPE #(
    .INIT(1'b1)) 
    \gc0.count_reg[0] 
       (.C(rd_clk),
        .CE(E),
        .D(plusOp[0]),
        .PRE(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] ),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_reg[1] 
       (.C(rd_clk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] ),
        .D(plusOp[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_reg[2] 
       (.C(rd_clk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] ),
        .D(plusOp[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_reg[3] 
       (.C(rd_clk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] ),
        .D(plusOp[3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_reg[4] 
       (.C(rd_clk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] ),
        .D(plusOp[4]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_reg[5] 
       (.C(rd_clk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] ),
        .D(plusOp[5]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_reg[6] 
       (.C(rd_clk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] ),
        .D(plusOp[6]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_reg[7] 
       (.C(rd_clk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] ),
        .D(plusOp[7]),
        .Q(Q[7]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_reg[8] 
       (.C(rd_clk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] ),
        .D(plusOp[8]),
        .Q(Q[8]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_reg[9] 
       (.C(rd_clk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] ),
        .D(plusOp[9]),
        .Q(Q[9]));
endmodule

(* ORIG_REF_NAME = "rd_dc_fwft_ext_as" *) 
module system_v_axi4s_vid_out_0_0_rd_dc_fwft_ext_as
   (diff_wr_rd,
    rd_data_count,
    WR_PNTR_RD,
    S,
    \gnxpm_cdc.wr_pntr_bin_reg[7] ,
    \gnxpm_cdc.wr_pntr_bin_reg[9] ,
    D,
    rd_clk,
    \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] );
  output [8:0]diff_wr_rd;
  output [8:0]rd_data_count;
  input [8:0]WR_PNTR_RD;
  input [3:0]S;
  input [3:0]\gnxpm_cdc.wr_pntr_bin_reg[7] ;
  input [1:0]\gnxpm_cdc.wr_pntr_bin_reg[9] ;
  input [8:0]D;
  input rd_clk;
  input [0:0]\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] ;

  wire [8:0]D;
  wire [3:0]S;
  wire [8:0]WR_PNTR_RD;
  wire [8:0]diff_wr_rd;
  wire [3:0]\gnxpm_cdc.wr_pntr_bin_reg[7] ;
  wire [1:0]\gnxpm_cdc.wr_pntr_bin_reg[9] ;
  wire minusOp_carry__0_n_0;
  wire minusOp_carry__0_n_1;
  wire minusOp_carry__0_n_2;
  wire minusOp_carry__0_n_3;
  wire minusOp_carry__1_n_3;
  wire minusOp_carry_n_0;
  wire minusOp_carry_n_1;
  wire minusOp_carry_n_2;
  wire minusOp_carry_n_3;
  wire [0:0]\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] ;
  wire rd_clk;
  wire [8:0]rd_data_count;
  wire [0:0]NLW_minusOp_carry_O_UNCONNECTED;
  wire [3:1]NLW_minusOp_carry__1_CO_UNCONNECTED;
  wire [3:2]NLW_minusOp_carry__1_O_UNCONNECTED;

  FDCE #(
    .INIT(1'b0)) 
    \g_rd.gvalid_low.rd_dc_i_reg[10] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] ),
        .D(D[8]),
        .Q(rd_data_count[8]));
  FDCE #(
    .INIT(1'b0)) 
    \g_rd.gvalid_low.rd_dc_i_reg[2] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] ),
        .D(D[0]),
        .Q(rd_data_count[0]));
  FDCE #(
    .INIT(1'b0)) 
    \g_rd.gvalid_low.rd_dc_i_reg[3] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] ),
        .D(D[1]),
        .Q(rd_data_count[1]));
  FDCE #(
    .INIT(1'b0)) 
    \g_rd.gvalid_low.rd_dc_i_reg[4] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] ),
        .D(D[2]),
        .Q(rd_data_count[2]));
  FDCE #(
    .INIT(1'b0)) 
    \g_rd.gvalid_low.rd_dc_i_reg[5] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] ),
        .D(D[3]),
        .Q(rd_data_count[3]));
  FDCE #(
    .INIT(1'b0)) 
    \g_rd.gvalid_low.rd_dc_i_reg[6] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] ),
        .D(D[4]),
        .Q(rd_data_count[4]));
  FDCE #(
    .INIT(1'b0)) 
    \g_rd.gvalid_low.rd_dc_i_reg[7] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] ),
        .D(D[5]),
        .Q(rd_data_count[5]));
  FDCE #(
    .INIT(1'b0)) 
    \g_rd.gvalid_low.rd_dc_i_reg[8] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] ),
        .D(D[6]),
        .Q(rd_data_count[6]));
  FDCE #(
    .INIT(1'b0)) 
    \g_rd.gvalid_low.rd_dc_i_reg[9] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] ),
        .D(D[7]),
        .Q(rd_data_count[7]));
  CARRY4 minusOp_carry
       (.CI(1'b0),
        .CO({minusOp_carry_n_0,minusOp_carry_n_1,minusOp_carry_n_2,minusOp_carry_n_3}),
        .CYINIT(1'b1),
        .DI(WR_PNTR_RD[3:0]),
        .O({diff_wr_rd[2:0],NLW_minusOp_carry_O_UNCONNECTED[0]}),
        .S(S));
  CARRY4 minusOp_carry__0
       (.CI(minusOp_carry_n_0),
        .CO({minusOp_carry__0_n_0,minusOp_carry__0_n_1,minusOp_carry__0_n_2,minusOp_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(WR_PNTR_RD[7:4]),
        .O(diff_wr_rd[6:3]),
        .S(\gnxpm_cdc.wr_pntr_bin_reg[7] ));
  CARRY4 minusOp_carry__1
       (.CI(minusOp_carry__0_n_0),
        .CO({NLW_minusOp_carry__1_CO_UNCONNECTED[3:1],minusOp_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,WR_PNTR_RD[8]}),
        .O({NLW_minusOp_carry__1_O_UNCONNECTED[3:2],diff_wr_rd[8:7]}),
        .S({1'b0,1'b0,\gnxpm_cdc.wr_pntr_bin_reg[9] }));
endmodule

(* ORIG_REF_NAME = "rd_fwft" *) 
module system_v_axi4s_vid_out_0_0_rd_fwft
   (out,
    empty,
    \g_rd.gvalid_low.rd_dc_i_reg[5] ,
    tmp_ram_regout_en,
    p_1_out,
    tmp_ram_rd_en,
    E,
    D,
    rd_clk,
    \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] ,
    rd_en,
    ram_empty_fb_i_reg,
    diff_wr_rd,
    \gnxpm_cdc.wr_pntr_bin_reg[7] ,
    \gnxpm_cdc.wr_pntr_bin_reg[7]_0 ,
    \gnxpm_cdc.wr_pntr_bin_reg[7]_1 );
  output [1:0]out;
  output empty;
  output \g_rd.gvalid_low.rd_dc_i_reg[5] ;
  output tmp_ram_regout_en;
  output p_1_out;
  output tmp_ram_rd_en;
  output [0:0]E;
  output [3:0]D;
  input rd_clk;
  input [1:0]\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] ;
  input rd_en;
  input ram_empty_fb_i_reg;
  input [4:0]diff_wr_rd;
  input \gnxpm_cdc.wr_pntr_bin_reg[7] ;
  input \gnxpm_cdc.wr_pntr_bin_reg[7]_0 ;
  input \gnxpm_cdc.wr_pntr_bin_reg[7]_1 ;

  wire [3:0]D;
  wire [0:0]E;
  (* DONT_TOUCH *) wire aempty_fwft_fb_i;
  (* DONT_TOUCH *) wire aempty_fwft_i;
  wire aempty_fwft_i0;
  (* DONT_TOUCH *) wire [1:0]curr_fwft_state;
  wire [4:0]diff_wr_rd;
  (* DONT_TOUCH *) wire empty_fwft_fb_i;
  (* DONT_TOUCH *) wire empty_fwft_fb_o_i;
  wire empty_fwft_fb_o_i0;
  (* DONT_TOUCH *) wire empty_fwft_i;
  wire empty_fwft_i0;
  wire \gnxpm_cdc.wr_pntr_bin_reg[7] ;
  wire \gnxpm_cdc.wr_pntr_bin_reg[7]_0 ;
  wire \gnxpm_cdc.wr_pntr_bin_reg[7]_1 ;
  wire [1:0]next_fwft_state;
  wire [1:0]\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] ;
  wire p_1_out;
  wire ram_empty_fb_i_reg;
  wire rd_clk;
  wire rd_en;
  wire tmp_ram_rd_en;
  wire tmp_ram_regout_en;
  (* DONT_TOUCH *) wire user_valid;

  assign empty = empty_fwft_i;
  assign \g_rd.gvalid_low.rd_dc_i_reg[5]  = user_valid;
  assign out[1:0] = curr_fwft_state;
  LUT5 #(
    .INIT(32'hBABBBBBB)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2 
       (.I0(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] [0]),
        .I1(ram_empty_fb_i_reg),
        .I2(rd_en),
        .I3(curr_fwft_state[0]),
        .I4(curr_fwft_state[1]),
        .O(tmp_ram_rd_en));
  LUT4 #(
    .INIT(16'hFFB0)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_3 
       (.I0(rd_en),
        .I1(curr_fwft_state[0]),
        .I2(curr_fwft_state[1]),
        .I3(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] [0]),
        .O(tmp_ram_regout_en));
  LUT5 #(
    .INIT(32'hEEFD8000)) 
    aempty_fwft_fb_i_i_1
       (.I0(curr_fwft_state[0]),
        .I1(ram_empty_fb_i_reg),
        .I2(rd_en),
        .I3(curr_fwft_state[1]),
        .I4(aempty_fwft_fb_i),
        .O(aempty_fwft_i0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    aempty_fwft_fb_i_reg
       (.C(rd_clk),
        .CE(1'b1),
        .D(aempty_fwft_i0),
        .PRE(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] [1]),
        .Q(aempty_fwft_fb_i));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    aempty_fwft_i_reg
       (.C(rd_clk),
        .CE(1'b1),
        .D(aempty_fwft_i0),
        .PRE(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] [1]),
        .Q(aempty_fwft_i));
  LUT4 #(
    .INIT(16'hF320)) 
    empty_fwft_fb_i_i_1
       (.I0(rd_en),
        .I1(curr_fwft_state[1]),
        .I2(curr_fwft_state[0]),
        .I3(empty_fwft_fb_i),
        .O(empty_fwft_i0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    empty_fwft_fb_i_reg
       (.C(rd_clk),
        .CE(1'b1),
        .D(empty_fwft_i0),
        .PRE(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] [1]),
        .Q(empty_fwft_fb_i));
  LUT4 #(
    .INIT(16'hF320)) 
    empty_fwft_fb_o_i_i_1
       (.I0(rd_en),
        .I1(curr_fwft_state[1]),
        .I2(curr_fwft_state[0]),
        .I3(empty_fwft_fb_o_i),
        .O(empty_fwft_fb_o_i0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    empty_fwft_fb_o_i_reg
       (.C(rd_clk),
        .CE(1'b1),
        .D(empty_fwft_fb_o_i0),
        .PRE(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] [1]),
        .Q(empty_fwft_fb_o_i));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    empty_fwft_i_reg
       (.C(rd_clk),
        .CE(1'b1),
        .D(empty_fwft_i0),
        .PRE(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] [1]),
        .Q(empty_fwft_i));
  LUT4 #(
    .INIT(16'h2800)) 
    \g_rd.gvalid_low.rd_dc_i[2]_i_1 
       (.I0(curr_fwft_state[1]),
        .I1(diff_wr_rd[0]),
        .I2(diff_wr_rd[1]),
        .I3(user_valid),
        .O(D[0]));
  LUT4 #(
    .INIT(16'h2800)) 
    \g_rd.gvalid_low.rd_dc_i[5]_i_1 
       (.I0(curr_fwft_state[1]),
        .I1(\gnxpm_cdc.wr_pntr_bin_reg[7]_1 ),
        .I2(diff_wr_rd[2]),
        .I3(user_valid),
        .O(D[1]));
  LUT4 #(
    .INIT(16'h2800)) 
    \g_rd.gvalid_low.rd_dc_i[6]_i_1 
       (.I0(curr_fwft_state[1]),
        .I1(\gnxpm_cdc.wr_pntr_bin_reg[7]_0 ),
        .I2(diff_wr_rd[3]),
        .I3(user_valid),
        .O(D[2]));
  LUT4 #(
    .INIT(16'h2800)) 
    \g_rd.gvalid_low.rd_dc_i[7]_i_1 
       (.I0(curr_fwft_state[1]),
        .I1(\gnxpm_cdc.wr_pntr_bin_reg[7] ),
        .I2(diff_wr_rd[4]),
        .I3(user_valid),
        .O(D[3]));
  LUT4 #(
    .INIT(16'h00BF)) 
    \gc0.count_d1[9]_i_1 
       (.I0(rd_en),
        .I1(curr_fwft_state[0]),
        .I2(curr_fwft_state[1]),
        .I3(ram_empty_fb_i_reg),
        .O(E));
  LUT3 #(
    .INIT(8'hBA)) 
    \gpregsm1.curr_fwft_state[0]_i_1 
       (.I0(curr_fwft_state[1]),
        .I1(rd_en),
        .I2(curr_fwft_state[0]),
        .O(next_fwft_state[0]));
  LUT4 #(
    .INIT(16'h20FF)) 
    \gpregsm1.curr_fwft_state[1]_i_1 
       (.I0(curr_fwft_state[1]),
        .I1(rd_en),
        .I2(curr_fwft_state[0]),
        .I3(ram_empty_fb_i_reg),
        .O(next_fwft_state[1]));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gpregsm1.curr_fwft_state_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] [1]),
        .D(next_fwft_state[0]),
        .Q(curr_fwft_state[0]));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gpregsm1.curr_fwft_state_reg[1] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] [1]),
        .D(next_fwft_state[1]),
        .Q(curr_fwft_state[1]));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gpregsm1.user_valid_reg 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] [1]),
        .D(next_fwft_state[0]),
        .Q(user_valid));
  LUT2 #(
    .INIT(4'h8)) 
    \guf.guf1.underflow_i_i_1 
       (.I0(rd_en),
        .I1(empty_fwft_i),
        .O(p_1_out));
endmodule

(* ORIG_REF_NAME = "rd_handshaking_flags" *) 
module system_v_axi4s_vid_out_0_0_rd_handshaking_flags
   (underflow,
    p_1_out,
    rd_clk);
  output underflow;
  input p_1_out;
  input rd_clk;

  wire p_1_out;
  wire rd_clk;
  wire underflow;

  FDRE #(
    .INIT(1'b0)) 
    \guf.guf1.underflow_i_reg 
       (.C(rd_clk),
        .CE(1'b1),
        .D(p_1_out),
        .Q(underflow),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "rd_logic" *) 
module system_v_axi4s_vid_out_0_0_rd_logic
   (out,
    empty,
    \g_rd.gvalid_low.rd_dc_i_reg[5] ,
    underflow,
    diff_wr_rd,
    tmp_ram_regout_en,
    tmp_ram_rd_en,
    Q,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ,
    rd_data_count,
    v1_reg,
    v1_reg_0,
    rd_clk,
    \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] ,
    WR_PNTR_RD,
    S,
    \gnxpm_cdc.wr_pntr_bin_reg[7] ,
    \gnxpm_cdc.wr_pntr_bin_reg[9] ,
    rd_en,
    D,
    \gnxpm_cdc.wr_pntr_bin_reg[7]_0 ,
    \gnxpm_cdc.wr_pntr_bin_reg[7]_1 ,
    \gnxpm_cdc.wr_pntr_bin_reg[7]_2 );
  output [0:0]out;
  output empty;
  output \g_rd.gvalid_low.rd_dc_i_reg[5] ;
  output underflow;
  output [8:0]diff_wr_rd;
  output tmp_ram_regout_en;
  output tmp_ram_rd_en;
  output [9:0]Q;
  output [9:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ;
  output [8:0]rd_data_count;
  input [4:0]v1_reg;
  input [4:0]v1_reg_0;
  input rd_clk;
  input [1:0]\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] ;
  input [8:0]WR_PNTR_RD;
  input [3:0]S;
  input [3:0]\gnxpm_cdc.wr_pntr_bin_reg[7] ;
  input [1:0]\gnxpm_cdc.wr_pntr_bin_reg[9] ;
  input rd_en;
  input [4:0]D;
  input \gnxpm_cdc.wr_pntr_bin_reg[7]_0 ;
  input \gnxpm_cdc.wr_pntr_bin_reg[7]_1 ;
  input \gnxpm_cdc.wr_pntr_bin_reg[7]_2 ;

  wire [4:0]D;
  wire [9:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ;
  wire [9:0]Q;
  wire [3:0]S;
  wire [8:0]WR_PNTR_RD;
  wire [8:0]diff_wr_rd;
  wire empty;
  wire \g_rd.gvalid_low.rd_dc_i_reg[5] ;
  wire [3:0]\gnxpm_cdc.wr_pntr_bin_reg[7] ;
  wire \gnxpm_cdc.wr_pntr_bin_reg[7]_0 ;
  wire \gnxpm_cdc.wr_pntr_bin_reg[7]_1 ;
  wire \gnxpm_cdc.wr_pntr_bin_reg[7]_2 ;
  wire [1:0]\gnxpm_cdc.wr_pntr_bin_reg[9] ;
  wire [1:0]\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] ;
  wire [0:0]out;
  wire [7:2]p_0_in;
  wire [0:0]p_0_in_0;
  wire p_1_out;
  wire p_2_out;
  wire p_7_out;
  wire rd_clk;
  wire [8:0]rd_data_count;
  wire rd_en;
  wire tmp_ram_rd_en;
  wire tmp_ram_regout_en;
  wire underflow;
  wire [4:0]v1_reg;
  wire [4:0]v1_reg_0;

  system_v_axi4s_vid_out_0_0_rd_fwft \gr1.gr1_int.rfwft 
       (.D({p_0_in[7:5],p_0_in[2]}),
        .E(p_7_out),
        .diff_wr_rd({diff_wr_rd[6:4],diff_wr_rd[1:0]}),
        .empty(empty),
        .\g_rd.gvalid_low.rd_dc_i_reg[5] (\g_rd.gvalid_low.rd_dc_i_reg[5] ),
        .\gnxpm_cdc.wr_pntr_bin_reg[7] (\gnxpm_cdc.wr_pntr_bin_reg[7]_0 ),
        .\gnxpm_cdc.wr_pntr_bin_reg[7]_0 (\gnxpm_cdc.wr_pntr_bin_reg[7]_1 ),
        .\gnxpm_cdc.wr_pntr_bin_reg[7]_1 (\gnxpm_cdc.wr_pntr_bin_reg[7]_2 ),
        .\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] (\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] ),
        .out({out,p_0_in_0}),
        .p_1_out(p_1_out),
        .ram_empty_fb_i_reg(p_2_out),
        .rd_clk(rd_clk),
        .rd_en(rd_en),
        .tmp_ram_rd_en(tmp_ram_rd_en),
        .tmp_ram_regout_en(tmp_ram_regout_en));
  system_v_axi4s_vid_out_0_0_rd_dc_fwft_ext_as \gr1.grdc2.rdc 
       (.D({D[4:2],p_0_in[7:5],D[1:0],p_0_in[2]}),
        .S(S),
        .WR_PNTR_RD(WR_PNTR_RD),
        .diff_wr_rd(diff_wr_rd),
        .\gnxpm_cdc.wr_pntr_bin_reg[7] (\gnxpm_cdc.wr_pntr_bin_reg[7] ),
        .\gnxpm_cdc.wr_pntr_bin_reg[9] (\gnxpm_cdc.wr_pntr_bin_reg[9] ),
        .\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] (\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] [1]),
        .rd_clk(rd_clk),
        .rd_data_count(rd_data_count));
  system_v_axi4s_vid_out_0_0_rd_status_flags_as \gras.rsts 
       (.\gpregsm1.curr_fwft_state_reg[1] ({out,p_0_in_0}),
        .\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] (\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] [1]),
        .out(p_2_out),
        .rd_clk(rd_clk),
        .rd_en(rd_en),
        .v1_reg(v1_reg),
        .v1_reg_0(v1_reg_0));
  system_v_axi4s_vid_out_0_0_rd_handshaking_flags \grhf.rhf 
       (.p_1_out(p_1_out),
        .rd_clk(rd_clk),
        .underflow(underflow));
  system_v_axi4s_vid_out_0_0_rd_bin_cntr rpntr
       (.\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram (\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ),
        .E(p_7_out),
        .Q(Q),
        .\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] (\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] [1]),
        .rd_clk(rd_clk));
endmodule

(* ORIG_REF_NAME = "rd_status_flags_as" *) 
module system_v_axi4s_vid_out_0_0_rd_status_flags_as
   (out,
    v1_reg,
    v1_reg_0,
    rd_clk,
    \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] ,
    rd_en,
    \gpregsm1.curr_fwft_state_reg[1] );
  output out;
  input [4:0]v1_reg;
  input [4:0]v1_reg_0;
  input rd_clk;
  input [0:0]\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] ;
  input rd_en;
  input [1:0]\gpregsm1.curr_fwft_state_reg[1] ;

  wire c0_n_0;
  wire comp1;
  wire [1:0]\gpregsm1.curr_fwft_state_reg[1] ;
  wire [0:0]\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] ;
  (* DONT_TOUCH *) wire ram_empty_fb_i;
  (* DONT_TOUCH *) wire ram_empty_i;
  wire rd_clk;
  wire rd_en;
  wire [4:0]v1_reg;
  wire [4:0]v1_reg_0;

  assign out = ram_empty_fb_i;
  system_v_axi4s_vid_out_0_0_compare_4 c0
       (.comp1(comp1),
        .\gpregsm1.curr_fwft_state_reg[1] (\gpregsm1.curr_fwft_state_reg[1] ),
        .out(ram_empty_fb_i),
        .ram_empty_fb_i_reg(c0_n_0),
        .rd_en(rd_en),
        .v1_reg(v1_reg));
  system_v_axi4s_vid_out_0_0_compare_5 c1
       (.comp1(comp1),
        .v1_reg_0(v1_reg_0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    ram_empty_fb_i_reg
       (.C(rd_clk),
        .CE(1'b1),
        .D(c0_n_0),
        .PRE(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] ),
        .Q(ram_empty_fb_i));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    ram_empty_i_reg
       (.C(rd_clk),
        .CE(1'b1),
        .D(c0_n_0),
        .PRE(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] ),
        .Q(ram_empty_i));
endmodule

(* ORIG_REF_NAME = "reset_blk_ramfifo" *) 
module system_v_axi4s_vid_out_0_0_reset_blk_ramfifo
   (out,
    \gc0.count_reg[1] ,
    \grstd1.grst_full.grst_f.rst_d3_reg_0 ,
    wr_rst_busy,
    rd_clk,
    wr_clk,
    rst);
  output [1:0]out;
  output [2:0]\gc0.count_reg[1] ;
  output \grstd1.grst_full.grst_f.rst_d3_reg_0 ;
  output wr_rst_busy;
  input rd_clk;
  input wr_clk;
  input rst;

  wire \ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[1].rrst_inst_n_1 ;
  wire \ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[1].wrst_inst_n_1 ;
  wire \ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[2].rrst_inst_n_0 ;
  wire \ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[2].wrst_inst_n_0 ;
  wire p_7_out;
  wire p_8_out;
  wire rd_clk;
  wire rd_rst_asreg;
  (* DONT_TOUCH *) wire [2:0]rd_rst_reg;
  wire rst;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_d1;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_d2;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_d3;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_rd_reg1;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_rd_reg2;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_wr_reg1;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_wr_reg2;
  wire wr_clk;
  wire wr_rst_asreg;
  (* DONT_TOUCH *) wire [2:0]wr_rst_reg;

  assign \gc0.count_reg[1] [2:0] = rd_rst_reg;
  assign \grstd1.grst_full.grst_f.rst_d3_reg_0  = rst_d2;
  assign out[1:0] = wr_rst_reg[1:0];
  assign wr_rst_busy = rst_d3;
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDPE #(
    .INIT(1'b1)) 
    \grstd1.grst_full.grst_f.rst_d1_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(rst_wr_reg2),
        .Q(rst_d1));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDPE #(
    .INIT(1'b1)) 
    \grstd1.grst_full.grst_f.rst_d2_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(rst_d1),
        .PRE(rst_wr_reg2),
        .Q(rst_d2));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDPE #(
    .INIT(1'b1)) 
    \grstd1.grst_full.grst_f.rst_d3_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(rst_d2),
        .PRE(rst_wr_reg2),
        .Q(rst_d3));
  system_v_axi4s_vid_out_0_0_synchronizer_ff \ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[1].rrst_inst 
       (.in0(rd_rst_asreg),
        .\ngwrdrst.grst.g7serrst.rd_rst_asreg_reg (\ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[1].rrst_inst_n_1 ),
        .out(p_7_out),
        .rd_clk(rd_clk));
  system_v_axi4s_vid_out_0_0_synchronizer_ff_0 \ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[1].wrst_inst 
       (.in0(wr_rst_asreg),
        .\ngwrdrst.grst.g7serrst.wr_rst_asreg_reg (\ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[1].wrst_inst_n_1 ),
        .out(p_8_out),
        .wr_clk(wr_clk));
  system_v_axi4s_vid_out_0_0_synchronizer_ff_1 \ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[2].rrst_inst 
       (.AS(\ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[2].rrst_inst_n_0 ),
        .in0(rd_rst_asreg),
        .out(p_7_out),
        .rd_clk(rd_clk));
  system_v_axi4s_vid_out_0_0_synchronizer_ff_2 \ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[2].wrst_inst 
       (.AS(\ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[2].wrst_inst_n_0 ),
        .in0(wr_rst_asreg),
        .out(p_8_out),
        .wr_clk(wr_clk));
  FDPE #(
    .INIT(1'b1)) 
    \ngwrdrst.grst.g7serrst.rd_rst_asreg_reg 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[1].rrst_inst_n_1 ),
        .PRE(rst_rd_reg2),
        .Q(rd_rst_asreg));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[2].rrst_inst_n_0 ),
        .Q(rd_rst_reg[0]));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[2].rrst_inst_n_0 ),
        .Q(rd_rst_reg[1]));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[2].rrst_inst_n_0 ),
        .Q(rd_rst_reg[2]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDPE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.rst_rd_reg1_reg 
       (.C(rd_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(rst),
        .Q(rst_rd_reg1));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDPE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.rst_rd_reg2_reg 
       (.C(rd_clk),
        .CE(1'b1),
        .D(rst_rd_reg1),
        .PRE(rst),
        .Q(rst_rd_reg2));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDPE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.rst_wr_reg1_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(rst),
        .Q(rst_wr_reg1));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDPE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.rst_wr_reg2_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(rst_wr_reg1),
        .PRE(rst),
        .Q(rst_wr_reg2));
  FDPE #(
    .INIT(1'b1)) 
    \ngwrdrst.grst.g7serrst.wr_rst_asreg_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[1].wrst_inst_n_1 ),
        .PRE(rst_wr_reg2),
        .Q(wr_rst_asreg));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[2].wrst_inst_n_0 ),
        .Q(wr_rst_reg[0]));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[2].wrst_inst_n_0 ),
        .Q(wr_rst_reg[1]));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[2] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[2].wrst_inst_n_0 ),
        .Q(wr_rst_reg[2]));
endmodule

(* ORIG_REF_NAME = "synchronizer_ff" *) 
module system_v_axi4s_vid_out_0_0_synchronizer_ff
   (out,
    \ngwrdrst.grst.g7serrst.rd_rst_asreg_reg ,
    in0,
    rd_clk);
  output out;
  output \ngwrdrst.grst.g7serrst.rd_rst_asreg_reg ;
  input [0:0]in0;
  input rd_clk;

  (* async_reg = "true" *) (* msgon = "true" *) wire Q_reg;
  wire [0:0]in0;
  wire \ngwrdrst.grst.g7serrst.rd_rst_asreg_reg ;
  wire rd_clk;

  assign out = Q_reg;
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(in0),
        .Q(Q_reg),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \ngwrdrst.grst.g7serrst.rd_rst_asreg_i_1 
       (.I0(in0),
        .I1(Q_reg),
        .O(\ngwrdrst.grst.g7serrst.rd_rst_asreg_reg ));
endmodule

(* ORIG_REF_NAME = "synchronizer_ff" *) 
module system_v_axi4s_vid_out_0_0_synchronizer_ff_0
   (out,
    \ngwrdrst.grst.g7serrst.wr_rst_asreg_reg ,
    in0,
    wr_clk);
  output out;
  output \ngwrdrst.grst.g7serrst.wr_rst_asreg_reg ;
  input [0:0]in0;
  input wr_clk;

  (* async_reg = "true" *) (* msgon = "true" *) wire Q_reg;
  wire [0:0]in0;
  wire \ngwrdrst.grst.g7serrst.wr_rst_asreg_reg ;
  wire wr_clk;

  assign out = Q_reg;
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(in0),
        .Q(Q_reg),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \ngwrdrst.grst.g7serrst.wr_rst_asreg_i_1 
       (.I0(in0),
        .I1(Q_reg),
        .O(\ngwrdrst.grst.g7serrst.wr_rst_asreg_reg ));
endmodule

(* ORIG_REF_NAME = "synchronizer_ff" *) 
module system_v_axi4s_vid_out_0_0_synchronizer_ff_1
   (AS,
    out,
    rd_clk,
    in0);
  output [0:0]AS;
  input out;
  input rd_clk;
  input [0:0]in0;

  wire [0:0]AS;
  (* async_reg = "true" *) (* msgon = "true" *) wire Q_reg;
  wire [0:0]in0;
  wire out;
  wire rd_clk;

  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(out),
        .Q(Q_reg),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \ngwrdrst.grst.g7serrst.rd_rst_reg[2]_i_1 
       (.I0(in0),
        .I1(Q_reg),
        .O(AS));
endmodule

(* ORIG_REF_NAME = "synchronizer_ff" *) 
module system_v_axi4s_vid_out_0_0_synchronizer_ff_2
   (AS,
    out,
    wr_clk,
    in0);
  output [0:0]AS;
  input out;
  input wr_clk;
  input [0:0]in0;

  wire [0:0]AS;
  (* async_reg = "true" *) (* msgon = "true" *) wire Q_reg;
  wire [0:0]in0;
  wire out;
  wire wr_clk;

  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(out),
        .Q(Q_reg),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \ngwrdrst.grst.g7serrst.wr_rst_reg[2]_i_1 
       (.I0(in0),
        .I1(Q_reg),
        .O(AS));
endmodule

(* ORIG_REF_NAME = "synchronizer_ff" *) 
module system_v_axi4s_vid_out_0_0_synchronizer_ff__parameterized0
   (D,
    Q,
    rd_clk,
    \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] );
  output [9:0]D;
  input [9:0]Q;
  input rd_clk;
  input [0:0]\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ;

  wire [9:0]Q;
  (* async_reg = "true" *) (* msgon = "true" *) wire [9:0]Q_reg;
  wire [0:0]\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ;
  wire rd_clk;

  assign D[9:0] = Q_reg;
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(Q[0]),
        .Q(Q_reg[0]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[1] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(Q[1]),
        .Q(Q_reg[1]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[2] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(Q[2]),
        .Q(Q_reg[2]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[3] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(Q[3]),
        .Q(Q_reg[3]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[4] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(Q[4]),
        .Q(Q_reg[4]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[5] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(Q[5]),
        .Q(Q_reg[5]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[6] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(Q[6]),
        .Q(Q_reg[6]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[7] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(Q[7]),
        .Q(Q_reg[7]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[8] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(Q[8]),
        .Q(Q_reg[8]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[9] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(Q[9]),
        .Q(Q_reg[9]));
endmodule

(* ORIG_REF_NAME = "synchronizer_ff" *) 
module system_v_axi4s_vid_out_0_0_synchronizer_ff__parameterized1
   (D,
    Q,
    wr_clk,
    AR);
  output [9:0]D;
  input [9:0]Q;
  input wr_clk;
  input [0:0]AR;

  wire [0:0]AR;
  wire [9:0]Q;
  (* async_reg = "true" *) (* msgon = "true" *) wire [9:0]Q_reg;
  wire wr_clk;

  assign D[9:0] = Q_reg;
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(Q[0]),
        .Q(Q_reg[0]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(Q[1]),
        .Q(Q_reg[1]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[2] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(Q[2]),
        .Q(Q_reg[2]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[3] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(Q[3]),
        .Q(Q_reg[3]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[4] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(Q[4]),
        .Q(Q_reg[4]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[5] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(Q[5]),
        .Q(Q_reg[5]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[6] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(Q[6]),
        .Q(Q_reg[6]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[7] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(Q[7]),
        .Q(Q_reg[7]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[8] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(Q[8]),
        .Q(Q_reg[8]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[9] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(Q[9]),
        .Q(Q_reg[9]));
endmodule

(* ORIG_REF_NAME = "synchronizer_ff" *) 
module system_v_axi4s_vid_out_0_0_synchronizer_ff__parameterized2
   (out,
    D,
    \Q_reg_reg[9]_0 ,
    rd_clk,
    \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] );
  output [0:0]out;
  output [8:0]D;
  input [9:0]\Q_reg_reg[9]_0 ;
  input rd_clk;
  input [0:0]\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ;

  wire [8:0]D;
  (* async_reg = "true" *) (* msgon = "true" *) wire [9:0]Q_reg;
  wire [9:0]\Q_reg_reg[9]_0 ;
  wire \gnxpm_cdc.wr_pntr_bin[3]_i_2_n_0 ;
  wire [0:0]\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ;
  wire rd_clk;

  assign out[0] = Q_reg[9];
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(\Q_reg_reg[9]_0 [0]),
        .Q(Q_reg[0]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[1] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(\Q_reg_reg[9]_0 [1]),
        .Q(Q_reg[1]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[2] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(\Q_reg_reg[9]_0 [2]),
        .Q(Q_reg[2]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[3] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(\Q_reg_reg[9]_0 [3]),
        .Q(Q_reg[3]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[4] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(\Q_reg_reg[9]_0 [4]),
        .Q(Q_reg[4]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[5] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(\Q_reg_reg[9]_0 [5]),
        .Q(Q_reg[5]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[6] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(\Q_reg_reg[9]_0 [6]),
        .Q(Q_reg[6]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[7] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(\Q_reg_reg[9]_0 [7]),
        .Q(Q_reg[7]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[8] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(\Q_reg_reg[9]_0 [8]),
        .Q(Q_reg[8]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[9] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(\Q_reg_reg[9]_0 [9]),
        .Q(Q_reg[9]));
  LUT4 #(
    .INIT(16'h6996)) 
    \gnxpm_cdc.wr_pntr_bin[0]_i_1 
       (.I0(D[3]),
        .I1(Q_reg[2]),
        .I2(Q_reg[1]),
        .I3(Q_reg[0]),
        .O(D[0]));
  LUT3 #(
    .INIT(8'h96)) 
    \gnxpm_cdc.wr_pntr_bin[1]_i_1 
       (.I0(D[3]),
        .I1(Q_reg[2]),
        .I2(Q_reg[1]),
        .O(D[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \gnxpm_cdc.wr_pntr_bin[2]_i_1 
       (.I0(D[3]),
        .I1(Q_reg[2]),
        .O(D[2]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \gnxpm_cdc.wr_pntr_bin[3]_i_1 
       (.I0(Q_reg[9]),
        .I1(Q_reg[3]),
        .I2(Q_reg[4]),
        .I3(\gnxpm_cdc.wr_pntr_bin[3]_i_2_n_0 ),
        .I4(Q_reg[7]),
        .I5(Q_reg[8]),
        .O(D[3]));
  LUT2 #(
    .INIT(4'h6)) 
    \gnxpm_cdc.wr_pntr_bin[3]_i_2 
       (.I0(Q_reg[5]),
        .I1(Q_reg[6]),
        .O(\gnxpm_cdc.wr_pntr_bin[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \gnxpm_cdc.wr_pntr_bin[4]_i_1 
       (.I0(Q_reg[6]),
        .I1(Q_reg[4]),
        .I2(Q_reg[5]),
        .I3(Q_reg[9]),
        .I4(Q_reg[7]),
        .I5(Q_reg[8]),
        .O(D[4]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \gnxpm_cdc.wr_pntr_bin[5]_i_1 
       (.I0(Q_reg[7]),
        .I1(Q_reg[5]),
        .I2(Q_reg[6]),
        .I3(Q_reg[9]),
        .I4(Q_reg[8]),
        .O(D[5]));
  LUT4 #(
    .INIT(16'h6996)) 
    \gnxpm_cdc.wr_pntr_bin[6]_i_1 
       (.I0(Q_reg[7]),
        .I1(Q_reg[6]),
        .I2(Q_reg[9]),
        .I3(Q_reg[8]),
        .O(D[6]));
  LUT3 #(
    .INIT(8'h96)) 
    \gnxpm_cdc.wr_pntr_bin[7]_i_1 
       (.I0(Q_reg[8]),
        .I1(Q_reg[7]),
        .I2(Q_reg[9]),
        .O(D[7]));
  LUT2 #(
    .INIT(4'h6)) 
    \gnxpm_cdc.wr_pntr_bin[8]_i_1 
       (.I0(Q_reg[8]),
        .I1(Q_reg[9]),
        .O(D[8]));
endmodule

(* ORIG_REF_NAME = "synchronizer_ff" *) 
module system_v_axi4s_vid_out_0_0_synchronizer_ff__parameterized3
   (out,
    D,
    \Q_reg_reg[9]_0 ,
    wr_clk,
    AR);
  output [0:0]out;
  output [8:0]D;
  input [9:0]\Q_reg_reg[9]_0 ;
  input wr_clk;
  input [0:0]AR;

  wire [0:0]AR;
  wire [8:0]D;
  (* async_reg = "true" *) (* msgon = "true" *) wire [9:0]Q_reg;
  wire [9:0]\Q_reg_reg[9]_0 ;
  wire \gnxpm_cdc.rd_pntr_bin[3]_i_2_n_0 ;
  wire wr_clk;

  assign out[0] = Q_reg[9];
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\Q_reg_reg[9]_0 [0]),
        .Q(Q_reg[0]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\Q_reg_reg[9]_0 [1]),
        .Q(Q_reg[1]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[2] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\Q_reg_reg[9]_0 [2]),
        .Q(Q_reg[2]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[3] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\Q_reg_reg[9]_0 [3]),
        .Q(Q_reg[3]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[4] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\Q_reg_reg[9]_0 [4]),
        .Q(Q_reg[4]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[5] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\Q_reg_reg[9]_0 [5]),
        .Q(Q_reg[5]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[6] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\Q_reg_reg[9]_0 [6]),
        .Q(Q_reg[6]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[7] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\Q_reg_reg[9]_0 [7]),
        .Q(Q_reg[7]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[8] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\Q_reg_reg[9]_0 [8]),
        .Q(Q_reg[8]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[9] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\Q_reg_reg[9]_0 [9]),
        .Q(Q_reg[9]));
  LUT4 #(
    .INIT(16'h6996)) 
    \gnxpm_cdc.rd_pntr_bin[0]_i_1 
       (.I0(D[3]),
        .I1(Q_reg[2]),
        .I2(Q_reg[1]),
        .I3(Q_reg[0]),
        .O(D[0]));
  LUT3 #(
    .INIT(8'h96)) 
    \gnxpm_cdc.rd_pntr_bin[1]_i_1 
       (.I0(D[3]),
        .I1(Q_reg[2]),
        .I2(Q_reg[1]),
        .O(D[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \gnxpm_cdc.rd_pntr_bin[2]_i_1 
       (.I0(D[3]),
        .I1(Q_reg[2]),
        .O(D[2]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \gnxpm_cdc.rd_pntr_bin[3]_i_1 
       (.I0(Q_reg[9]),
        .I1(Q_reg[3]),
        .I2(Q_reg[4]),
        .I3(\gnxpm_cdc.rd_pntr_bin[3]_i_2_n_0 ),
        .I4(Q_reg[7]),
        .I5(Q_reg[8]),
        .O(D[3]));
  LUT2 #(
    .INIT(4'h6)) 
    \gnxpm_cdc.rd_pntr_bin[3]_i_2 
       (.I0(Q_reg[5]),
        .I1(Q_reg[6]),
        .O(\gnxpm_cdc.rd_pntr_bin[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \gnxpm_cdc.rd_pntr_bin[4]_i_1 
       (.I0(Q_reg[6]),
        .I1(Q_reg[4]),
        .I2(Q_reg[5]),
        .I3(Q_reg[9]),
        .I4(Q_reg[7]),
        .I5(Q_reg[8]),
        .O(D[4]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \gnxpm_cdc.rd_pntr_bin[5]_i_1 
       (.I0(Q_reg[7]),
        .I1(Q_reg[5]),
        .I2(Q_reg[6]),
        .I3(Q_reg[9]),
        .I4(Q_reg[8]),
        .O(D[5]));
  LUT4 #(
    .INIT(16'h6996)) 
    \gnxpm_cdc.rd_pntr_bin[6]_i_1 
       (.I0(Q_reg[7]),
        .I1(Q_reg[6]),
        .I2(Q_reg[9]),
        .I3(Q_reg[8]),
        .O(D[6]));
  LUT3 #(
    .INIT(8'h96)) 
    \gnxpm_cdc.rd_pntr_bin[7]_i_1 
       (.I0(Q_reg[8]),
        .I1(Q_reg[7]),
        .I2(Q_reg[9]),
        .O(D[7]));
  LUT2 #(
    .INIT(4'h6)) 
    \gnxpm_cdc.rd_pntr_bin[8]_i_1 
       (.I0(Q_reg[8]),
        .I1(Q_reg[9]),
        .O(D[8]));
endmodule

(* ORIG_REF_NAME = "wr_bin_cntr" *) 
module system_v_axi4s_vid_out_0_0_wr_bin_cntr
   (v1_reg,
    v1_reg_0,
    Q,
    RD_PNTR_WR,
    E,
    wr_clk,
    AR);
  output [4:0]v1_reg;
  output [4:0]v1_reg_0;
  output [9:0]Q;
  input [9:0]RD_PNTR_WR;
  input [0:0]E;
  input wr_clk;
  input [0:0]AR;

  wire [0:0]AR;
  wire [0:0]E;
  wire [9:0]Q;
  wire [9:0]RD_PNTR_WR;
  wire \gic0.gc0.count[9]_i_2_n_0 ;
  wire [9:0]p_13_out;
  wire [9:0]plusOp__0;
  wire [4:0]v1_reg;
  wire [4:0]v1_reg_0;
  wire wr_clk;
  wire [9:0]wr_pntr_plus2;

  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \gic0.gc0.count[0]_i_1 
       (.I0(wr_pntr_plus2[0]),
        .O(plusOp__0[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \gic0.gc0.count[1]_i_1 
       (.I0(wr_pntr_plus2[0]),
        .I1(wr_pntr_plus2[1]),
        .O(plusOp__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \gic0.gc0.count[2]_i_1 
       (.I0(wr_pntr_plus2[0]),
        .I1(wr_pntr_plus2[1]),
        .I2(wr_pntr_plus2[2]),
        .O(plusOp__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \gic0.gc0.count[3]_i_1 
       (.I0(wr_pntr_plus2[1]),
        .I1(wr_pntr_plus2[0]),
        .I2(wr_pntr_plus2[2]),
        .I3(wr_pntr_plus2[3]),
        .O(plusOp__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \gic0.gc0.count[4]_i_1 
       (.I0(wr_pntr_plus2[2]),
        .I1(wr_pntr_plus2[0]),
        .I2(wr_pntr_plus2[1]),
        .I3(wr_pntr_plus2[3]),
        .I4(wr_pntr_plus2[4]),
        .O(plusOp__0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \gic0.gc0.count[5]_i_1 
       (.I0(wr_pntr_plus2[3]),
        .I1(wr_pntr_plus2[1]),
        .I2(wr_pntr_plus2[0]),
        .I3(wr_pntr_plus2[2]),
        .I4(wr_pntr_plus2[4]),
        .I5(wr_pntr_plus2[5]),
        .O(plusOp__0[5]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gic0.gc0.count[6]_i_1 
       (.I0(\gic0.gc0.count[9]_i_2_n_0 ),
        .I1(wr_pntr_plus2[6]),
        .O(plusOp__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \gic0.gc0.count[7]_i_1 
       (.I0(\gic0.gc0.count[9]_i_2_n_0 ),
        .I1(wr_pntr_plus2[6]),
        .I2(wr_pntr_plus2[7]),
        .O(plusOp__0[7]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \gic0.gc0.count[8]_i_1 
       (.I0(wr_pntr_plus2[6]),
        .I1(\gic0.gc0.count[9]_i_2_n_0 ),
        .I2(wr_pntr_plus2[7]),
        .I3(wr_pntr_plus2[8]),
        .O(plusOp__0[8]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \gic0.gc0.count[9]_i_1 
       (.I0(wr_pntr_plus2[7]),
        .I1(\gic0.gc0.count[9]_i_2_n_0 ),
        .I2(wr_pntr_plus2[6]),
        .I3(wr_pntr_plus2[8]),
        .I4(wr_pntr_plus2[9]),
        .O(plusOp__0[9]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \gic0.gc0.count[9]_i_2 
       (.I0(wr_pntr_plus2[5]),
        .I1(wr_pntr_plus2[3]),
        .I2(wr_pntr_plus2[1]),
        .I3(wr_pntr_plus2[0]),
        .I4(wr_pntr_plus2[2]),
        .I5(wr_pntr_plus2[4]),
        .O(\gic0.gc0.count[9]_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \gic0.gc0.count_d1_reg[0] 
       (.C(wr_clk),
        .CE(E),
        .D(wr_pntr_plus2[0]),
        .PRE(AR),
        .Q(p_13_out[0]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d1_reg[1] 
       (.C(wr_clk),
        .CE(E),
        .CLR(AR),
        .D(wr_pntr_plus2[1]),
        .Q(p_13_out[1]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d1_reg[2] 
       (.C(wr_clk),
        .CE(E),
        .CLR(AR),
        .D(wr_pntr_plus2[2]),
        .Q(p_13_out[2]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d1_reg[3] 
       (.C(wr_clk),
        .CE(E),
        .CLR(AR),
        .D(wr_pntr_plus2[3]),
        .Q(p_13_out[3]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d1_reg[4] 
       (.C(wr_clk),
        .CE(E),
        .CLR(AR),
        .D(wr_pntr_plus2[4]),
        .Q(p_13_out[4]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d1_reg[5] 
       (.C(wr_clk),
        .CE(E),
        .CLR(AR),
        .D(wr_pntr_plus2[5]),
        .Q(p_13_out[5]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d1_reg[6] 
       (.C(wr_clk),
        .CE(E),
        .CLR(AR),
        .D(wr_pntr_plus2[6]),
        .Q(p_13_out[6]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d1_reg[7] 
       (.C(wr_clk),
        .CE(E),
        .CLR(AR),
        .D(wr_pntr_plus2[7]),
        .Q(p_13_out[7]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d1_reg[8] 
       (.C(wr_clk),
        .CE(E),
        .CLR(AR),
        .D(wr_pntr_plus2[8]),
        .Q(p_13_out[8]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d1_reg[9] 
       (.C(wr_clk),
        .CE(E),
        .CLR(AR),
        .D(wr_pntr_plus2[9]),
        .Q(p_13_out[9]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d2_reg[0] 
       (.C(wr_clk),
        .CE(E),
        .CLR(AR),
        .D(p_13_out[0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d2_reg[1] 
       (.C(wr_clk),
        .CE(E),
        .CLR(AR),
        .D(p_13_out[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d2_reg[2] 
       (.C(wr_clk),
        .CE(E),
        .CLR(AR),
        .D(p_13_out[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d2_reg[3] 
       (.C(wr_clk),
        .CE(E),
        .CLR(AR),
        .D(p_13_out[3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d2_reg[4] 
       (.C(wr_clk),
        .CE(E),
        .CLR(AR),
        .D(p_13_out[4]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d2_reg[5] 
       (.C(wr_clk),
        .CE(E),
        .CLR(AR),
        .D(p_13_out[5]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d2_reg[6] 
       (.C(wr_clk),
        .CE(E),
        .CLR(AR),
        .D(p_13_out[6]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d2_reg[7] 
       (.C(wr_clk),
        .CE(E),
        .CLR(AR),
        .D(p_13_out[7]),
        .Q(Q[7]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d2_reg[8] 
       (.C(wr_clk),
        .CE(E),
        .CLR(AR),
        .D(p_13_out[8]),
        .Q(Q[8]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d2_reg[9] 
       (.C(wr_clk),
        .CE(E),
        .CLR(AR),
        .D(p_13_out[9]),
        .Q(Q[9]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_reg[0] 
       (.C(wr_clk),
        .CE(E),
        .CLR(AR),
        .D(plusOp__0[0]),
        .Q(wr_pntr_plus2[0]));
  FDPE #(
    .INIT(1'b1)) 
    \gic0.gc0.count_reg[1] 
       (.C(wr_clk),
        .CE(E),
        .D(plusOp__0[1]),
        .PRE(AR),
        .Q(wr_pntr_plus2[1]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_reg[2] 
       (.C(wr_clk),
        .CE(E),
        .CLR(AR),
        .D(plusOp__0[2]),
        .Q(wr_pntr_plus2[2]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_reg[3] 
       (.C(wr_clk),
        .CE(E),
        .CLR(AR),
        .D(plusOp__0[3]),
        .Q(wr_pntr_plus2[3]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_reg[4] 
       (.C(wr_clk),
        .CE(E),
        .CLR(AR),
        .D(plusOp__0[4]),
        .Q(wr_pntr_plus2[4]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_reg[5] 
       (.C(wr_clk),
        .CE(E),
        .CLR(AR),
        .D(plusOp__0[5]),
        .Q(wr_pntr_plus2[5]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_reg[6] 
       (.C(wr_clk),
        .CE(E),
        .CLR(AR),
        .D(plusOp__0[6]),
        .Q(wr_pntr_plus2[6]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_reg[7] 
       (.C(wr_clk),
        .CE(E),
        .CLR(AR),
        .D(plusOp__0[7]),
        .Q(wr_pntr_plus2[7]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_reg[8] 
       (.C(wr_clk),
        .CE(E),
        .CLR(AR),
        .D(plusOp__0[8]),
        .Q(wr_pntr_plus2[8]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_reg[9] 
       (.C(wr_clk),
        .CE(E),
        .CLR(AR),
        .D(plusOp__0[9]),
        .Q(wr_pntr_plus2[9]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[0].gm1.m1_i_1__1 
       (.I0(p_13_out[0]),
        .I1(RD_PNTR_WR[0]),
        .I2(p_13_out[1]),
        .I3(RD_PNTR_WR[1]),
        .O(v1_reg[0]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[0].gm1.m1_i_1__2 
       (.I0(wr_pntr_plus2[0]),
        .I1(RD_PNTR_WR[0]),
        .I2(wr_pntr_plus2[1]),
        .I3(RD_PNTR_WR[1]),
        .O(v1_reg_0[0]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[1].gms.ms_i_1__1 
       (.I0(p_13_out[2]),
        .I1(RD_PNTR_WR[2]),
        .I2(p_13_out[3]),
        .I3(RD_PNTR_WR[3]),
        .O(v1_reg[1]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[1].gms.ms_i_1__2 
       (.I0(wr_pntr_plus2[2]),
        .I1(RD_PNTR_WR[2]),
        .I2(wr_pntr_plus2[3]),
        .I3(RD_PNTR_WR[3]),
        .O(v1_reg_0[1]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[2].gms.ms_i_1__1 
       (.I0(p_13_out[4]),
        .I1(RD_PNTR_WR[4]),
        .I2(p_13_out[5]),
        .I3(RD_PNTR_WR[5]),
        .O(v1_reg[2]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[2].gms.ms_i_1__2 
       (.I0(wr_pntr_plus2[4]),
        .I1(RD_PNTR_WR[4]),
        .I2(wr_pntr_plus2[5]),
        .I3(RD_PNTR_WR[5]),
        .O(v1_reg_0[2]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[3].gms.ms_i_1__1 
       (.I0(p_13_out[6]),
        .I1(RD_PNTR_WR[6]),
        .I2(p_13_out[7]),
        .I3(RD_PNTR_WR[7]),
        .O(v1_reg[3]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[3].gms.ms_i_1__2 
       (.I0(wr_pntr_plus2[6]),
        .I1(RD_PNTR_WR[6]),
        .I2(wr_pntr_plus2[7]),
        .I3(RD_PNTR_WR[7]),
        .O(v1_reg_0[3]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[4].gms.ms_i_1__1 
       (.I0(p_13_out[8]),
        .I1(RD_PNTR_WR[8]),
        .I2(p_13_out[9]),
        .I3(RD_PNTR_WR[9]),
        .O(v1_reg[4]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[4].gms.ms_i_1__2 
       (.I0(wr_pntr_plus2[8]),
        .I1(RD_PNTR_WR[8]),
        .I2(wr_pntr_plus2[9]),
        .I3(RD_PNTR_WR[9]),
        .O(v1_reg_0[4]));
endmodule

(* ORIG_REF_NAME = "wr_handshaking_flags" *) 
module system_v_axi4s_vid_out_0_0_wr_handshaking_flags
   (overflow,
    ram_full_fb_i_reg,
    wr_clk);
  output overflow;
  input ram_full_fb_i_reg;
  input wr_clk;

  wire overflow;
  wire ram_full_fb_i_reg;
  wire wr_clk;

  FDRE #(
    .INIT(1'b0)) 
    \gof.gof1.overflow_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(ram_full_fb_i_reg),
        .Q(overflow),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "wr_logic" *) 
module system_v_axi4s_vid_out_0_0_wr_logic
   (full,
    overflow,
    WEA,
    Q,
    wr_clk,
    out,
    wr_en,
    AR,
    RD_PNTR_WR,
    wr_rst_busy);
  output full;
  output overflow;
  output [0:0]WEA;
  output [9:0]Q;
  input wr_clk;
  input out;
  input wr_en;
  input [0:0]AR;
  input [9:0]RD_PNTR_WR;
  input wr_rst_busy;

  wire [0:0]AR;
  wire [9:0]Q;
  wire [9:0]RD_PNTR_WR;
  wire [0:0]WEA;
  wire [4:0]\c1/v1_reg ;
  wire [4:0]\c2/v1_reg ;
  wire full;
  wire \gwas.wsts_n_2 ;
  wire out;
  wire overflow;
  wire wr_clk;
  wire wr_en;
  wire wr_rst_busy;

  system_v_axi4s_vid_out_0_0_wr_status_flags_as \gwas.wsts 
       (.E(WEA),
        .full(full),
        .\gof.gof1.overflow_i_reg (\gwas.wsts_n_2 ),
        .out(out),
        .v1_reg(\c1/v1_reg ),
        .v1_reg_0(\c2/v1_reg ),
        .wr_clk(wr_clk),
        .wr_en(wr_en),
        .wr_rst_busy(wr_rst_busy));
  system_v_axi4s_vid_out_0_0_wr_handshaking_flags \gwhf.whf 
       (.overflow(overflow),
        .ram_full_fb_i_reg(\gwas.wsts_n_2 ),
        .wr_clk(wr_clk));
  system_v_axi4s_vid_out_0_0_wr_bin_cntr wpntr
       (.AR(AR),
        .E(WEA),
        .Q(Q),
        .RD_PNTR_WR(RD_PNTR_WR),
        .v1_reg(\c1/v1_reg ),
        .v1_reg_0(\c2/v1_reg ),
        .wr_clk(wr_clk));
endmodule

(* ORIG_REF_NAME = "wr_status_flags_as" *) 
module system_v_axi4s_vid_out_0_0_wr_status_flags_as
   (full,
    E,
    \gof.gof1.overflow_i_reg ,
    v1_reg,
    v1_reg_0,
    wr_clk,
    out,
    wr_en,
    wr_rst_busy);
  output full;
  output [0:0]E;
  output \gof.gof1.overflow_i_reg ;
  input [4:0]v1_reg;
  input [4:0]v1_reg_0;
  input wr_clk;
  input out;
  input wr_en;
  input wr_rst_busy;

  wire [0:0]E;
  wire c2_n_0;
  wire comp1;
  wire \gof.gof1.overflow_i_reg ;
  wire out;
  (* DONT_TOUCH *) wire ram_full_fb_i;
  (* DONT_TOUCH *) wire ram_full_i;
  wire [4:0]v1_reg;
  wire [4:0]v1_reg_0;
  wire wr_clk;
  wire wr_en;
  wire wr_rst_busy;

  assign full = ram_full_i;
  LUT2 #(
    .INIT(4'h2)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1 
       (.I0(wr_en),
        .I1(ram_full_fb_i),
        .O(E));
  system_v_axi4s_vid_out_0_0_compare c1
       (.comp1(comp1),
        .v1_reg(v1_reg));
  system_v_axi4s_vid_out_0_0_compare_3 c2
       (.comp1(comp1),
        .out(ram_full_fb_i),
        .ram_full_fb_i_reg(c2_n_0),
        .v1_reg_0(v1_reg_0),
        .wr_en(wr_en),
        .wr_rst_busy(wr_rst_busy));
  LUT3 #(
    .INIT(8'hA8)) 
    \gof.gof1.overflow_i_i_1 
       (.I0(wr_en),
        .I1(ram_full_fb_i),
        .I2(wr_rst_busy),
        .O(\gof.gof1.overflow_i_reg ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    ram_full_fb_i_reg
       (.C(wr_clk),
        .CE(1'b1),
        .D(c2_n_0),
        .PRE(out),
        .Q(ram_full_fb_i));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    ram_full_i_reg
       (.C(wr_clk),
        .CE(1'b1),
        .D(c2_n_0),
        .PRE(out),
        .Q(ram_full_i));
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
