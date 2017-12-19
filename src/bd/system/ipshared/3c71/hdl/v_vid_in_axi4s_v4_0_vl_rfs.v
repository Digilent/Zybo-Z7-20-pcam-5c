// $Revision: $ $Date:  $
//-----------------------------------------------------------------------------
//  (c) Copyright 2015 Xilinx, Inc. All rights reserved.
//
//  This file contains confidential and proprietary information
//  of Xilinx, Inc. and is protected under U.S. and
//  international copyright and other intellectual property
//  laws.
//
//  DISCLAIMER
//  This disclaimer is not a license and does not grant any
//  rights to the materials distributed herewith. Except as
//  otherwise provided in a valid license issued to you by
//  Xilinx, and to the maximum extent permitted by applicable
//  law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
//  WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
//  AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
//  BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
//  INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
//  (2) Xilinx shall not be liable (whether in contract or tort,
//  including negligence, or under any other theory of
//  liability) for any loss or damage of any kind or nature
//  related to, arising under or in connection with these
//  materials, including for any direct, or any indirect,
//  special, incidental, or consequential loss or damage
//  (including loss of data, profits, goodwill, or any type of
//  loss or damage suffered as a result of any action brought
//  by a third party) even if such damage or loss was
//  reasonably foreseeable or Xilinx had been advised of the
//  possibility of the same.
//
//  CRITICAL APPLICATIONS
//  Xilinx products are not designed or intended to be fail-
//  safe, or for use in any application requiring fail-safe
//  performance, such as life-support or safety devices or
//  systems, Class III medical devices, nuclear facilities,
//  applications related to the deployment of airbags, or any
//  other applications that could lead to death, personal
//  injury, or severe property or environmental damage
//  (individually and collectively, "Critical
//  Applications"). Customer assumes the sole risk and
//  liability of any use of Xilinx products in Critical
//  Applications, subject only to applicable laws and
//  regulations governing limitations on product liability.
//
//  THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
//  PART OF THIS FILE AT ALL TIMES. 
//
//--------------------------------------------------------------------------
//  Module Description:
//  This module is the stream coupler for the Video-In to AXI4-Stream bridge.
//  It instantiates a fifo used to absorb backpressure from the AXI4-Stream
//  channel and provides synchronous or asynchronous clock domains. Component
//  width conversion is supported by either trimming or padding the input.
//
//  Verilog-standard:  Verilog 2001
//--------------------------------------------------------------------------

`timescale 1ps/1ps
`default_nettype none
(* DowngradeIPIdentifiedWarnings="yes" *)

module v_vid_in_axi4s_v4_0_5_coupler #(
  parameter C_FAMILY = "virtex6",
  parameter C_HAS_ASYNC_CLK = 0,          // Enable asyncronous clock domains
  parameter C_ADDR_WIDTH = 10,            // FIFO address width [5,10,11,12,13]
  parameter C_PIXELS_PER_CLOCK = 1,       // Pixels per clock [1,2,4]
  parameter C_COMPONENTS_PER_PIXEL = 3,   // Components per pixel [1,2,3,4]
  parameter C_M_AXIS_COMPONENT_WIDTH = 8, // AXIS video component width [8,10,12,16]
  parameter C_NATIVE_COMPONENT_WIDTH = 8, // Native video component width [8,10,12,16]
  parameter C_M_AXIS_TDATA_WIDTH = 24,    // AXIS video tdata width
  parameter C_NATIVE_DATA_WIDTH = 24      // Native video data width
) (
  // System signals
  input  wire VID_IN_CLK,                 // Native video clock
  input  wire VID_RESET,                  // Native video reset
  input  wire VID_CE,                     // Native video clock enable

  input  wire ACLK,                       // AXI4-Stream clock
  input  wire ACLKEN,                     // AXI4-Stream clock enable
  input  wire ARESETN,                    // AXI4-Stream reset, active low

  // FIFO write signals
  input  wire [C_NATIVE_DATA_WIDTH+3-1:0] FIFO_WR_DATA, // FIFO write data
  input  wire FIFO_WR_EN,                 // FIFO write enable

  // FIFO read signals
  output wire [C_M_AXIS_TDATA_WIDTH+3-1:0] FIFO_RD_DATA, // FIFO read data
  output wire FIFO_VALID,                 // FIFO valid
  input  wire FIFO_READY,                 // FIFO ready

  // FIFO status signals
  output wire FIFO_OVERFLOW,              // AXI4-Stream FIFO overflow
  output wire FIFO_UNDERFLOW              // Native video FIFO underflow
);

  // Parameters
  localparam C_NUM_COMPONENTS       = C_PIXELS_PER_CLOCK * C_COMPONENTS_PER_PIXEL;
  localparam C_DO_TRIM              = C_NATIVE_COMPONENT_WIDTH > C_M_AXIS_COMPONENT_WIDTH;
  localparam C_DO_PAD               = C_NATIVE_COMPONENT_WIDTH < C_M_AXIS_COMPONENT_WIDTH;
  localparam C_DATA_WIDTH           = C_DO_TRIM ? ((C_NUM_COMPONENTS * C_M_AXIS_COMPONENT_WIDTH) + 3) : ((C_NUM_COMPONENTS * C_NATIVE_COMPONENT_WIDTH) + 3);
  localparam C_DIFF_COMPONENT_WIDTH = C_DO_TRIM ? C_NATIVE_COMPONENT_WIDTH-C_M_AXIS_COMPONENT_WIDTH : C_M_AXIS_COMPONENT_WIDTH-C_NATIVE_COMPONENT_WIDTH;
  localparam C_DIFF_AXIS_DATA_WIDTH = C_M_AXIS_TDATA_WIDTH-(C_NUM_COMPONENTS*C_M_AXIS_COMPONENT_WIDTH);
  localparam C_IMPLEMENTATION_TYPE  = C_HAS_ASYNC_CLK ? 2 : 0;
  localparam C_EN_SAFETY_CKT        = C_HAS_ASYNC_CLK ? 0 : 0;

  // Wire and register declarations
  genvar                   i;
  wire [C_DATA_WIDTH-1:0]  din_i;      
  wire [C_DATA_WIDTH-1:0]  dout_i;      
  wire [C_M_AXIS_TDATA_WIDTH-1:0] dout_from_pad;      
  wire                     wr_rst_busy_i;
  wire                     rd_rst_busy_i;
  wire                     full_i;     
  wire                     empty_i;
  wire                     valid_i;
  wire                     rd_en_i;   
  wire                     wr_en_i = FIFO_WR_EN & VID_CE & ~wr_rst_busy_i;   
  wire                     wr_clk_i;
  wire                     rd_clk_i;
  wire                     clk_i;
  wire                     wr_rst_i = 1'b0;
  wire                     rd_rst_i = 1'b0;
  wire                     srst_i   = (C_HAS_ASYNC_CLK) ? 1'b0 : ~ARESETN;
  wire                     rst_i = (C_HAS_ASYNC_CLK) ? (VID_RESET | ~ARESETN) : 1'b0;
  wire [C_ADDR_WIDTH:0]    rd_data_count_i;
  wire [C_ADDR_WIDTH:0]    wr_data_count_i; 
  wire [C_ADDR_WIDTH:0]    data_count_i;
  wire                     overflow_i;
  wire                     underflow_i;


  // Assignments
  assign rd_en_i = FIFO_VALID & FIFO_READY & ACLKEN & ~empty_i;
  assign FIFO_VALID = valid_i; 
  assign FIFO_RD_DATA = {dout_i[C_DATA_WIDTH-1:C_DATA_WIDTH-3],dout_from_pad};
  assign FIFO_OVERFLOW = overflow_i;
  assign FIFO_UNDERFLOW = underflow_i;

  generate
    if(C_HAS_ASYNC_CLK) begin : gen_async_fifo_signals
      assign wr_clk_i = VID_IN_CLK;
      assign rd_clk_i = ACLK;
      assign clk_i    = 1'b0;
    end else begin : gen_sync_fifo_signals
      assign wr_clk_i = 1'b0;
      assign rd_clk_i = 1'b0;
      assign clk_i    = ACLK;
    end
  endgenerate

  // Trim data input to FIFO
  generate
    if(C_DO_TRIM) begin : gen_trim_to_fifo
      for(i=0; i<C_NUM_COMPONENTS; i=i+1) begin : gen_trim_to_fifo_loop
        assign din_i[i*C_M_AXIS_COMPONENT_WIDTH +: C_M_AXIS_COMPONENT_WIDTH] = FIFO_WR_DATA[(i*C_NATIVE_COMPONENT_WIDTH+C_DIFF_COMPONENT_WIDTH) +: C_M_AXIS_COMPONENT_WIDTH];
      end
      assign din_i[C_DATA_WIDTH-1:C_DATA_WIDTH-3] = FIFO_WR_DATA[C_NATIVE_DATA_WIDTH+3-1:C_NATIVE_DATA_WIDTH+3-3];
    end 
    else begin : gen_no_trim_to_fifo
      assign din_i = FIFO_WR_DATA;
    end
  endgenerate

  // Pad data output from FIFO
  generate
    if(C_DO_PAD) begin : gen_pad_from_fifo
      for(i=0; i<C_NUM_COMPONENTS; i=i+1) begin : gen_pad_from_fifo_loop
        assign dout_from_pad[i*C_M_AXIS_COMPONENT_WIDTH +: C_M_AXIS_COMPONENT_WIDTH] = {dout_i[i*C_NATIVE_COMPONENT_WIDTH +: C_NATIVE_COMPONENT_WIDTH],{C_DIFF_COMPONENT_WIDTH{1'b0}}};
      end
    end else begin : gen_no_pad_from_fifo
      assign dout_from_pad[C_M_AXIS_TDATA_WIDTH-C_DIFF_AXIS_DATA_WIDTH-1:0] = dout_i[C_M_AXIS_TDATA_WIDTH-C_DIFF_AXIS_DATA_WIDTH-1:0];
    end

    if(C_DIFF_AXIS_DATA_WIDTH > 0) begin : gen_pad_tdata_from_fifo
      assign dout_from_pad[C_M_AXIS_TDATA_WIDTH-1:C_M_AXIS_TDATA_WIDTH-C_DIFF_AXIS_DATA_WIDTH] = {C_DIFF_AXIS_DATA_WIDTH{1'b0}};
    end 
  endgenerate

  fifo_generator_v13_1_3 #(
    .C_COMMON_CLOCK(C_HAS_ASYNC_CLK==0),
    .C_COUNT_TYPE(0),
    .C_DATA_COUNT_WIDTH(C_ADDR_WIDTH+1),
    .C_DEFAULT_VALUE("BlankString"),
    .C_DIN_WIDTH(C_DATA_WIDTH),
    .C_DOUT_RST_VAL("0"),
    .C_DOUT_WIDTH(C_DATA_WIDTH),
    .C_ENABLE_RLOCS(0),
    .C_FAMILY(C_FAMILY),
    .C_FULL_FLAGS_RST_VAL(C_HAS_ASYNC_CLK),
    .C_HAS_ALMOST_EMPTY(0),
    .C_HAS_ALMOST_FULL(0),
    .C_HAS_BACKUP(0),
    .C_HAS_DATA_COUNT(C_HAS_ASYNC_CLK==0),
    .C_HAS_INT_CLK(0),
    .C_HAS_MEMINIT_FILE(0),
    .C_HAS_OVERFLOW(1),
    .C_HAS_RD_DATA_COUNT(C_HAS_ASYNC_CLK),
    .C_HAS_RD_RST(0),
    .C_HAS_RST(C_HAS_ASYNC_CLK),
    .C_HAS_SRST(C_HAS_ASYNC_CLK==0),
    .C_HAS_UNDERFLOW(1),
    .C_HAS_VALID(1),
    .C_HAS_WR_ACK(0),
    .C_HAS_WR_DATA_COUNT(C_HAS_ASYNC_CLK),
    .C_HAS_WR_RST(0),
    .C_IMPLEMENTATION_TYPE(C_IMPLEMENTATION_TYPE),
    .C_INIT_WR_PNTR_VAL(0),
    .C_MEMORY_TYPE(1),
    .C_MIF_FILE_NAME("BlankString"),
    .C_OPTIMIZATION_MODE(0),
    .C_OVERFLOW_LOW(0),
    .C_PRELOAD_LATENCY(0),
    .C_PRELOAD_REGS(1),
    .C_PRIM_FIFO_TYPE("1kx36"),
    .C_PROG_EMPTY_THRESH_ASSERT_VAL(4),
    .C_PROG_EMPTY_THRESH_NEGATE_VAL(5),
    .C_PROG_EMPTY_TYPE(0),
    .C_PROG_FULL_THRESH_ASSERT_VAL((2**C_ADDR_WIDTH)-1),
    .C_PROG_FULL_THRESH_NEGATE_VAL((2**C_ADDR_WIDTH)-2),
    .C_PROG_FULL_TYPE(0),
    .C_RD_DATA_COUNT_WIDTH(C_ADDR_WIDTH+1),
    .C_RD_DEPTH((2**C_ADDR_WIDTH)),
    .C_RD_FREQ(1),
    .C_RD_PNTR_WIDTH(C_ADDR_WIDTH),
    .C_UNDERFLOW_LOW(0),
    .C_USE_DOUT_RST(1),
    .C_USE_ECC(0),
    .C_USE_EMBEDDED_REG(1),
    .C_USE_PIPELINE_REG(0),
    .C_POWER_SAVING_MODE(0),
    .C_USE_FIFO16_FLAGS(0),
    .C_USE_FWFT_DATA_COUNT(1),
    .C_VALID_LOW(0),
    .C_WR_ACK_LOW(0),
    .C_WR_DATA_COUNT_WIDTH(C_ADDR_WIDTH+1),
    .C_WR_DEPTH((2**C_ADDR_WIDTH)),
    .C_WR_FREQ(1),
    .C_WR_PNTR_WIDTH(C_ADDR_WIDTH),
    .C_WR_RESPONSE_LATENCY(1),
    .C_MSGON_VAL(1),
    .C_ENABLE_RST_SYNC(1),
    .C_ERROR_INJECTION_TYPE(0),
    .C_EN_SAFETY_CKT(C_EN_SAFETY_CKT),
    .C_SYNCHRONIZER_STAGE(2),
    .C_INTERFACE_TYPE(0),
    .C_AXI_TYPE(1),
    .C_HAS_AXI_WR_CHANNEL(1),
    .C_HAS_AXI_RD_CHANNEL(1),
    .C_HAS_SLAVE_CE(0),
    .C_HAS_MASTER_CE(0),
    .C_ADD_NGC_CONSTRAINT(0),
    .C_USE_COMMON_OVERFLOW(0),
    .C_USE_COMMON_UNDERFLOW(0),
    .C_USE_DEFAULT_SETTINGS(0),
    .C_AXI_ID_WIDTH(1),
    .C_AXI_ADDR_WIDTH(32),
    .C_AXI_DATA_WIDTH(64),
    .C_AXI_LEN_WIDTH(8),
    .C_AXI_LOCK_WIDTH(1),
    .C_HAS_AXI_ID(0),
    .C_HAS_AXI_AWUSER(0),
    .C_HAS_AXI_WUSER(0),
    .C_HAS_AXI_BUSER(0),
    .C_HAS_AXI_ARUSER(0),
    .C_HAS_AXI_RUSER(0),
    .C_AXI_ARUSER_WIDTH(1),
    .C_AXI_AWUSER_WIDTH(1),
    .C_AXI_WUSER_WIDTH(1),
    .C_AXI_BUSER_WIDTH(1),
    .C_AXI_RUSER_WIDTH(1),
    .C_HAS_AXIS_TDATA(1),
    .C_HAS_AXIS_TID(0),
    .C_HAS_AXIS_TDEST(0),
    .C_HAS_AXIS_TUSER(1),
    .C_HAS_AXIS_TREADY(1),
    .C_HAS_AXIS_TLAST(0),
    .C_HAS_AXIS_TSTRB(0),
    .C_HAS_AXIS_TKEEP(0),
    .C_AXIS_TDATA_WIDTH(8),
    .C_AXIS_TID_WIDTH(1),
    .C_AXIS_TDEST_WIDTH(1),
    .C_AXIS_TUSER_WIDTH(4),
    .C_AXIS_TSTRB_WIDTH(1),
    .C_AXIS_TKEEP_WIDTH(1),
    .C_WACH_TYPE(0),
    .C_WDCH_TYPE(0),
    .C_WRCH_TYPE(0),
    .C_RACH_TYPE(0),
    .C_RDCH_TYPE(0),
    .C_AXIS_TYPE(0),
    .C_IMPLEMENTATION_TYPE_WACH(1),
    .C_IMPLEMENTATION_TYPE_WDCH(1),
    .C_IMPLEMENTATION_TYPE_WRCH(1),
    .C_IMPLEMENTATION_TYPE_RACH(1),
    .C_IMPLEMENTATION_TYPE_RDCH(1),
    .C_IMPLEMENTATION_TYPE_AXIS(1),
    .C_APPLICATION_TYPE_WACH(0),
    .C_APPLICATION_TYPE_WDCH(0),
    .C_APPLICATION_TYPE_WRCH(0),
    .C_APPLICATION_TYPE_RACH(0),
    .C_APPLICATION_TYPE_RDCH(0),
    .C_APPLICATION_TYPE_AXIS(0),
    .C_PRIM_FIFO_TYPE_WACH("512x36"),
    .C_PRIM_FIFO_TYPE_WDCH("1kx36"),
    .C_PRIM_FIFO_TYPE_WRCH("512x36"),
    .C_PRIM_FIFO_TYPE_RACH("512x36"),
    .C_PRIM_FIFO_TYPE_RDCH("1kx36"),
    .C_PRIM_FIFO_TYPE_AXIS("1kx18"),
    .C_USE_ECC_WACH(0),
    .C_USE_ECC_WDCH(0),
    .C_USE_ECC_WRCH(0),
    .C_USE_ECC_RACH(0),
    .C_USE_ECC_RDCH(0),
    .C_USE_ECC_AXIS(0),
    .C_ERROR_INJECTION_TYPE_WACH(0),
    .C_ERROR_INJECTION_TYPE_WDCH(0),
    .C_ERROR_INJECTION_TYPE_WRCH(0),
    .C_ERROR_INJECTION_TYPE_RACH(0),
    .C_ERROR_INJECTION_TYPE_RDCH(0),
    .C_ERROR_INJECTION_TYPE_AXIS(0),
    .C_DIN_WIDTH_WACH(32),
    .C_DIN_WIDTH_WDCH(64),
    .C_DIN_WIDTH_WRCH(2),
    .C_DIN_WIDTH_RACH(32),
    .C_DIN_WIDTH_RDCH(64),
    .C_DIN_WIDTH_AXIS(1),
    .C_WR_DEPTH_WACH(16),
    .C_WR_DEPTH_WDCH(1024),
    .C_WR_DEPTH_WRCH(16),
    .C_WR_DEPTH_RACH(16),
    .C_WR_DEPTH_RDCH(1024),
    .C_WR_DEPTH_AXIS(1024),
    .C_WR_PNTR_WIDTH_WACH(4),
    .C_WR_PNTR_WIDTH_WDCH(C_ADDR_WIDTH),
    .C_WR_PNTR_WIDTH_WRCH(4),
    .C_WR_PNTR_WIDTH_RACH(4),
    .C_WR_PNTR_WIDTH_RDCH(C_ADDR_WIDTH),
    .C_WR_PNTR_WIDTH_AXIS(C_ADDR_WIDTH),
    .C_HAS_DATA_COUNTS_WACH(0),
    .C_HAS_DATA_COUNTS_WDCH(0),
    .C_HAS_DATA_COUNTS_WRCH(0),
    .C_HAS_DATA_COUNTS_RACH(0),
    .C_HAS_DATA_COUNTS_RDCH(0),
    .C_HAS_DATA_COUNTS_AXIS(0),
    .C_HAS_PROG_FLAGS_WACH(0),
    .C_HAS_PROG_FLAGS_WDCH(0),
    .C_HAS_PROG_FLAGS_WRCH(0),
    .C_HAS_PROG_FLAGS_RACH(0),
    .C_HAS_PROG_FLAGS_RDCH(0),
    .C_HAS_PROG_FLAGS_AXIS(0),
    .C_PROG_FULL_TYPE_WACH(0),
    .C_PROG_FULL_TYPE_WDCH(0),
    .C_PROG_FULL_TYPE_WRCH(0),
    .C_PROG_FULL_TYPE_RACH(0),
    .C_PROG_FULL_TYPE_RDCH(0),
    .C_PROG_FULL_TYPE_AXIS(0),
    .C_PROG_FULL_THRESH_ASSERT_VAL_WACH(1023),
    .C_PROG_FULL_THRESH_ASSERT_VAL_WDCH(1023),
    .C_PROG_FULL_THRESH_ASSERT_VAL_WRCH(1023),
    .C_PROG_FULL_THRESH_ASSERT_VAL_RACH(1023),
    .C_PROG_FULL_THRESH_ASSERT_VAL_RDCH(1023),
    .C_PROG_FULL_THRESH_ASSERT_VAL_AXIS(1023),
    .C_PROG_EMPTY_TYPE_WACH(0),
    .C_PROG_EMPTY_TYPE_WDCH(0),
    .C_PROG_EMPTY_TYPE_WRCH(0),
    .C_PROG_EMPTY_TYPE_RACH(0),
    .C_PROG_EMPTY_TYPE_RDCH(0),
    .C_PROG_EMPTY_TYPE_AXIS(0),
    .C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH(1022),
    .C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH(1022),
    .C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH(1022),
    .C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH(1022),
    .C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH(1022),
    .C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS(1022),
    .C_REG_SLICE_MODE_WACH(0),
    .C_REG_SLICE_MODE_WDCH(0),
    .C_REG_SLICE_MODE_WRCH(0),
    .C_REG_SLICE_MODE_RACH(0),
    .C_REG_SLICE_MODE_RDCH(0),
    .C_REG_SLICE_MODE_AXIS(0)
  ) FIFO_INST (
    .backup(1'd0),
    .backup_marker(1'd0),
    .clk(clk_i),
    .rst(rst_i),
    .srst(srst_i),
    .wr_clk(wr_clk_i),
    .wr_rst(wr_rst_i),
    .rd_clk(rd_clk_i),
    .rd_rst(rd_rst_i),
    .din(din_i),
    .wr_en(wr_en_i),
    .rd_en(rd_en_i),
    .prog_empty_thresh({C_ADDR_WIDTH{1'b0}}),
    .prog_empty_thresh_assert({C_ADDR_WIDTH{1'b0}}),
    .prog_empty_thresh_negate({C_ADDR_WIDTH{1'b0}}),
    .prog_full_thresh({C_ADDR_WIDTH{1'b0}}),
    .prog_full_thresh_assert({C_ADDR_WIDTH{1'b0}}),
    .prog_full_thresh_negate({C_ADDR_WIDTH{1'b0}}),
    .int_clk(1'd0),
    .injectdbiterr(1'd0),
    .injectsbiterr(1'd0),
    .sleep(1'd0),
    .dout(dout_i),
    .full(full_i),
    .overflow(overflow_i),
    .empty(empty_i),
    .valid(valid_i),
    .underflow(underflow_i),
    .rd_data_count(rd_data_count_i),
    .wr_data_count(wr_data_count_i),
    .data_count(data_count_i),
    .wr_rst_busy(wr_rst_busy_i),
    .rd_rst_busy(rd_rst_busy_i),
    .m_aclk(1'd0),
    .s_aclk(1'd0),
    .s_aresetn(1'd0),
    .m_aclk_en(1'd0),
    .s_aclk_en(1'd0),
    .s_axi_awid(1'd0),
    .s_axi_awaddr(32'd0),
    .s_axi_awlen(8'd0),
    .s_axi_awsize(3'd0),
    .s_axi_awburst(2'd0),
    .s_axi_awlock(1'd0),
    .s_axi_awcache(4'd0),
    .s_axi_awprot(3'd0),
    .s_axi_awqos(4'd0),
    .s_axi_awregion(4'd0),
    .s_axi_awuser(1'd0),
    .s_axi_awvalid(1'd0),
    .s_axi_wid(1'd0),
    .s_axi_wdata(64'd0),
    .s_axi_wstrb(8'd0),
    .s_axi_wlast(1'd0),
    .s_axi_wuser(1'd0),
    .s_axi_wvalid(1'd0),
    .s_axi_bready(1'd0),
    .m_axi_awready(1'd0),
    .m_axi_wready(1'd0),
    .m_axi_bid(1'd0),
    .m_axi_bresp(2'd0),
    .m_axi_buser(1'd0),
    .m_axi_bvalid(1'd0),
    .s_axi_arid(1'd0),
    .s_axi_araddr(32'd0),
    .s_axi_arlen(8'd0),
    .s_axi_arsize(3'd0),
    .s_axi_arburst(2'd0),
    .s_axi_arlock(1'd0),
    .s_axi_arcache(4'd0),
    .s_axi_arprot(3'd0),
    .s_axi_arqos(4'd0),
    .s_axi_arregion(4'd0),
    .s_axi_aruser(1'd0),
    .s_axi_arvalid(1'd0),
    .s_axi_rready(1'd0),
    .m_axi_arready(1'd0),
    .m_axi_rid(1'd0),
    .m_axi_rdata(64'd0),
    .m_axi_rresp(2'd0),
    .m_axi_rlast(1'd0),
    .m_axi_ruser(1'd0),
    .m_axi_rvalid(1'd0),
    .s_axis_tvalid(1'd0),
    .s_axis_tdata(8'd0),
    .s_axis_tstrb(1'd0),
    .s_axis_tkeep(1'd0),
    .s_axis_tlast(1'd0),
    .s_axis_tid(1'd0),
    .s_axis_tdest(1'd0),
    .s_axis_tuser(4'd0),
    .m_axis_tready(1'd0),
    .axi_aw_injectsbiterr(1'd0),
    .axi_aw_injectdbiterr(1'd0),
    .axi_aw_prog_full_thresh(4'd0),
    .axi_aw_prog_empty_thresh(4'd0),
    .axi_w_injectsbiterr(1'd0),
    .axi_w_injectdbiterr(1'd0),
    .axi_w_prog_full_thresh({C_ADDR_WIDTH{1'b0}}),
    .axi_w_prog_empty_thresh({C_ADDR_WIDTH{1'b0}}),
    .axi_b_injectsbiterr(1'd0),
    .axi_b_injectdbiterr(1'd0),
    .axi_b_prog_full_thresh(4'd0),
    .axi_b_prog_empty_thresh(4'd0),
    .axi_ar_injectsbiterr(1'd0),
    .axi_ar_injectdbiterr(1'd0),
    .axi_ar_prog_full_thresh(4'd0),
    .axi_ar_prog_empty_thresh(4'd0),
    .axi_r_injectsbiterr(1'd0),
    .axi_r_injectdbiterr(1'd0),
    .axi_r_prog_full_thresh({C_ADDR_WIDTH{1'b0}}),
    .axi_r_prog_empty_thresh({C_ADDR_WIDTH{1'b0}}),
    .axis_injectsbiterr(1'd0),
    .axis_injectdbiterr(1'd0),
    .axis_prog_full_thresh({C_ADDR_WIDTH{1'b0}}),
    .axis_prog_empty_thresh({C_ADDR_WIDTH{1'b0}})
  );
   
endmodule

`default_nettype wire



// $Revision: $ $Date:  $
//-----------------------------------------------------------------------------
//  (c) Copyright 2015 Xilinx, Inc. All rights reserved.
//
//  This file contains confidential and proprietary information
//  of Xilinx, Inc. and is protected under U.S. and
//  international copyright and other intellectual property
//  laws.
//
//  DISCLAIMER
//  This disclaimer is not a license and does not grant any
//  rights to the materials distributed herewith. Except as
//  otherwise provided in a valid license issued to you by
//  Xilinx, and to the maximum extent permitted by applicable
//  law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
//  WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
//  AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
//  BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
//  INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
//  (2) Xilinx shall not be liable (whether in contract or tort,
//  including negligence, or under any other theory of
//  liability) for any loss or damage of any kind or nature
//  related to, arising under or in connection with these
//  materials, including for any direct, or any indirect,
//  special, incidental, or consequential loss or damage
//  (including loss of data, profits, goodwill, or any type of
//  loss or damage suffered as a result of any action brought
//  by a third party) even if such damage or loss was
//  reasonably foreseeable or Xilinx had been advised of the
//  possibility of the same.
//
//  CRITICAL APPLICATIONS
//  Xilinx products are not designed or intended to be fail-
//  safe, or for use in any application requiring fail-safe
//  performance, such as life-support or safety devices or
//  systems, Class III medical devices, nuclear facilities,
//  applications related to the deployment of airbags, or any
//  other applications that could lead to death, personal
//  injury, or severe property or environmental damage
//  (individually and collectively, "Critical
//  Applications"). Customer assumes the sole risk and
//  liability of any use of Xilinx products in Critical
//  Applications, subject only to applicable laws and
//  regulations governing limitations on product liability.
//
//  THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
//  PART OF THIS FILE AT ALL TIMES. 
//
//--------------------------------------------------------------------------
//  Module Description:
//  This module is the data formatter for the Video-In to AXI4-Stream bridge.
//  The data formater generates the start of frame (SOF) and end of line (EOL)
//  signals associated with a video data sample based on incoming native video
//  timing. The video data is concatenated with the SOF/EOL signals to produce
//  the fifo write data and the parallel fifo write enable.
//
//  Verilog-standard:  Verilog 2001
//--------------------------------------------------------------------------

`timescale 1ps/1ps
`default_nettype none
(* DowngradeIPIdentifiedWarnings="yes" *)

module v_vid_in_axi4s_v4_0_5_formatter #( 
  parameter  C_NATIVE_DATA_WIDTH = 24
) (
  // System signals
  input  wire VID_IN_CLK,           // Native video clock 
  input  wire VID_RESET,            // Native video reset
  input  wire VID_CE,               // Native video clock enable

  // Video input signals
  input  wire VID_ACTIVE_VIDEO,     // Native video input data enable
  input  wire VID_VBLANK,           // Native video input vertical blank
  input  wire VID_HBLANK,           // Native video input horizontal blank
  input  wire VID_VSYNC,            // Native video input vertical sync
  input  wire VID_HSYNC,            // Native video input horizontal sync
  input  wire VID_FIELD_ID,         // Native video input field-id
  input  wire [C_NATIVE_DATA_WIDTH-1:0] VID_DATA, // Native video input data 
  
  // Video timing detector signals
  output wire VTD_ACTIVE_VIDEO,     // Native video output data enable
  output wire VTD_VBLANK,           // Native video output vertical blank
  output wire VTD_HBLANK,           // Native video output horizontal blank
  output wire VTD_VSYNC,            // Native video output vertical sync
  output wire VTD_HSYNC,            // Native video output horizontal sync
  output wire VTD_FIELD_ID,         // Native video output field-id
  input  wire VTD_LOCKED,           // Native video locked signal from VTD
  
  // FIFO write signals
  output wire [C_NATIVE_DATA_WIDTH+2:0] FIFO_WR_DATA, // FIFO write data
  output wire FIFO_WR_EN            // FIFO write enable
);

  // Wire and register declarations
  reg  de_1 = 0;         
  reg  vblank_1 = 0;
  reg  hblank_1 = 0;
  reg  vsync_1 = 0;  
  reg  hsync_1 = 0;
  reg  [C_NATIVE_DATA_WIDTH -1:0] data_1 = 0;  
  reg  de_2 = 0;  
  reg  v_blank_sync_2 = 0;  
  reg  [C_NATIVE_DATA_WIDTH -1:0] data_2 = 0;  
  reg  de_3 = 0;  // DE output register
  reg  [C_NATIVE_DATA_WIDTH -1:0] data_3 = 0;  // data output register
  reg  vert_blanking_intvl = 0; // SR, reset by DE rising
  reg  field_id_1 = 0;
  reg  field_id_2 = 0;
  reg  field_id_3 = 0;
  
  wire v_blank_sync_1;  // vblank or vsync
  wire de_rising;                   
  wire de_falling;      
  wire vsync_rising;
  reg  sof;
  reg  sof_1;
  reg  eol;   
  reg  vtd_locked;
  wire sof_rising;

  // Assignments
  assign FIFO_WR_DATA     = {field_id_3,sof_1,eol,data_3};
  assign FIFO_WR_EN       = de_3 & ~VID_RESET & vtd_locked;
  assign VTD_ACTIVE_VIDEO = de_1;
  assign VTD_VBLANK       = vblank_1;
  assign VTD_HBLANK       = hblank_1;
  assign VTD_VSYNC        = vsync_1;
  assign VTD_HSYNC        = hsync_1;
  assign VTD_FIELD_ID     = field_id_1;

  assign v_blank_sync_1 = vblank_1 || vsync_1;
  assign de_rising  = de_1  && !de_2;  
  assign de_falling = !de_1 && de_2;  
  assign vsync_rising = v_blank_sync_1 && !v_blank_sync_2;    
  assign sof_rising = sof & ~sof_1;

  // VTD locked process
  always @(posedge VID_IN_CLK) begin
    if(VID_RESET | ~VTD_LOCKED) begin
      vtd_locked <= 1'b0;
    end else if(VID_CE) begin
      vtd_locked <= (sof_rising & VTD_LOCKED) ? 1'b1 : vtd_locked;
    end
  end
  
  // input, output, and delay registers
  always @ (posedge VID_IN_CLK) begin
    if(VID_RESET) begin
      de_1           <= 1'b0;  
      de_2           <= 1'b0; 
      de_3           <= 1'b0; 
      vblank_1       <= 1'b0; 
      hblank_1       <= 1'b0; 
      vsync_1        <= 1'b0; 
      hsync_1        <= 1'b0; 
      field_id_1     <= 1'b0; 
      field_id_2     <= 1'b0; 
      field_id_3     <= 1'b0; 
      data_1         <= {C_NATIVE_DATA_WIDTH{1'b0}}; 
      data_2         <= {C_NATIVE_DATA_WIDTH{1'b0}}; 
      data_3         <= {C_NATIVE_DATA_WIDTH{1'b0}}; 
      v_blank_sync_2 <= 1'b0; 
      eol            <= 1'b0; 
      sof            <= 1'b0; 
      sof_1          <= 1'b0;
    end else if(VID_CE) begin 
      de_1           <= VID_ACTIVE_VIDEO;
      de_2           <= de_1;    
      de_3           <= de_2;    
      vblank_1       <= VID_VBLANK;
      hblank_1       <= VID_HBLANK;
      vsync_1        <= VID_VSYNC;
      hsync_1        <= VID_HSYNC;
      field_id_1     <= VID_FIELD_ID;
      field_id_2     <= field_id_1;
      field_id_3     <= field_id_2;
      data_1         <= VID_DATA; 
      data_2         <= data_1;
      data_3         <= data_2;
      v_blank_sync_2 <= v_blank_sync_1; 
      eol            <= de_falling;
      sof            <= de_rising && vert_blanking_intvl;
      sof_1          <= sof;
    end      
  end 
  
  // Vertical back porch SR register
  always @ (posedge VID_IN_CLK) begin
    if (VID_CE) begin
      if (vsync_rising)   // falling edge of vsync
        vert_blanking_intvl <= 1;
      else if (de_rising)        // rising edge of data enable
        vert_blanking_intvl <= 0;
    end
  end
  
endmodule

`default_nettype wire



// $Revision: $ $Date:  $
//-----------------------------------------------------------------------------
//  (c) Copyright 2015 Xilinx, Inc. All rights reserved.
//
//  This file contains confidential and proprietary information
//  of Xilinx, Inc. and is protected under U.S. and
//  international copyright and other intellectual property
//  laws.
//
//  DISCLAIMER
//  This disclaimer is not a license and does not grant any
//  rights to the materials distributed herewith. Except as
//  otherwise provided in a valid license issued to you by
//  Xilinx, and to the maximum extent permitted by applicable
//  law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
//  WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
//  AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
//  BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
//  INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
//  (2) Xilinx shall not be liable (whether in contract or tort,
//  including negligence, or under any other theory of
//  liability) for any loss or damage of any kind or nature
//  related to, arising under or in connection with these
//  materials, including for any direct, or any indirect,
//  special, incidental, or consequential loss or damage
//  (including loss of data, profits, goodwill, or any type of
//  loss or damage suffered as a result of any action brought
//  by a third party) even if such damage or loss was
//  reasonably foreseeable or Xilinx had been advised of the
//  possibility of the same.
//
//  CRITICAL APPLICATIONS
//  Xilinx products are not designed or intended to be fail-
//  safe, or for use in any application requiring fail-safe
//  performance, such as life-support or safety devices or
//  systems, Class III medical devices, nuclear facilities,
//  applications related to the deployment of airbags, or any
//  other applications that could lead to death, personal
//  injury, or severe property or environmental damage
//  (individually and collectively, "Critical
//  Applications"). Customer assumes the sole risk and
//  liability of any use of Xilinx products in Critical
//  Applications, subject only to applicable laws and
//  regulations governing limitations on product liability.
//
//  THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
//  PART OF THIS FILE AT ALL TIMES. 
//
//--------------------------------------------------------------------------
//  Module Description:
//  This is the top level module for the Video-In to AXI4-Stream bridge. 
//  The bridge is used to convert native video input to AXI4-Stream output.
//  AXI4-Stream SOF (TUSER[0]) and EOL (TLAST) are generated using native
//  vsync and active video signals. Input samples are pushed onto the ouput
//  as soon as they become available. An internal fifo is used to buffer
//  data samples when back-pressure is asserted on the AXI4-Stream channel. The 
//  fifo supports synchronous or asynchronous clocking modes with configurable
//  fifo depth. 
//
//  Verilog-standard:  Verilog 2001
//--------------------------------------------------------------------------
//  Structure:
//    TOP_INST
//      FORMATTER_INST
//      COUPLER_INST
//        FIFO_INST
//--------------------------------------------------------------------------

`timescale 1ps/1ps
`default_nettype none
(* DowngradeIPIdentifiedWarnings="yes" *)

module v_vid_in_axi4s_v4_0_5 #(
  parameter C_FAMILY = "virtex6",         

  // Video Format
  parameter C_PIXELS_PER_CLOCK = 1,       // Pixels per clock [1,2,4]
  parameter C_COMPONENTS_PER_PIXEL = 3,   // Components per pixel [1,2,3,4]
  parameter C_M_AXIS_COMPONENT_WIDTH = 8, // AXIS video component width [8,10,12,16]
  parameter C_NATIVE_COMPONENT_WIDTH = 8, // Native video component width [8,10,12,16]
  parameter C_NATIVE_DATA_WIDTH = 24,     // Native video data width
  parameter C_M_AXIS_TDATA_WIDTH = 24,    // AXIS video tdata width

  // FIFO Settings
  parameter C_HAS_ASYNC_CLK = 0,          // Enable asyncronous clock domains
  parameter C_ADDR_WIDTH = 10             // FIFO address width [5,10,11,12,13]
) (
  // Native video signals
  input  wire vid_io_in_clk,              // Native video clock
  input  wire vid_io_in_ce,               // Native video clock enable
  input  wire vid_io_in_reset,            // Native video reset, active high
  input  wire vid_active_video,           // Native video data enable
  input  wire vid_vblank,                 // Native video vertical blank
  input  wire vid_hblank,                 // Native video horizontal blank
  input  wire vid_vsync,                  // Native video vertical sync
  input  wire vid_hsync,                  // Native video horizontal sync
  input  wire vid_field_id,               // Native video field-id
  input  wire [C_NATIVE_DATA_WIDTH-1:0] vid_data, // Native video data 

  // AXI4-Stream signals
  input  wire aclk,                       // AXI4-Stream clock
  input  wire aclken,                     // AXI4-Stream clock enable
  input  wire aresetn,                    // AXI4-Stream reset, active low 
  output wire [C_M_AXIS_TDATA_WIDTH-1:0] m_axis_video_tdata, // AXI4-Stream data
  output wire m_axis_video_tvalid,        // AXI4-Stream valid 
  input  wire m_axis_video_tready,        // AXI4-Stream ready 
  output wire m_axis_video_tuser,         // AXI4-Stream tuser (SOF)
  output wire m_axis_video_tlast,         // AXI4-Stream tlast (EOL)
  output wire fid,                        // Field-id output

  // Video timing detector signals
  output wire vtd_active_video,           // VTD data enable
  output wire vtd_vblank,                 // VTD vertical blank
  output wire vtd_hblank,                 // VTD horizontal blank
  output wire vtd_vsync,                  // VTD vertical sync
  output wire vtd_hsync,                  // VTD horizontal sync
  output wire vtd_field_id,               // VTD field-id
  
  // FIFO status signals
  output wire overflow,                   // FIFO overflow status
  output wire underflow,                  // FIFO underflow status

  // Video timing detector locked
  input  wire axis_enable                 // AXI4-Stream locked
);

  // Register and Wire Declarations
  wire                              vid_clk = (C_HAS_ASYNC_CLK) ? vid_io_in_clk : aclk;
  wire                              vid_reset = (C_HAS_ASYNC_CLK) ? vid_io_in_reset : ~aresetn;
  wire   [C_NATIVE_DATA_WIDTH+2:0]  idf_data;
  wire                              idf_de;  
  wire   [C_M_AXIS_TDATA_WIDTH+2:0] rd_data;

  // Assignments
  assign  m_axis_video_tdata  = rd_data[C_M_AXIS_TDATA_WIDTH -1:0];
  assign  m_axis_video_tlast  = rd_data[C_M_AXIS_TDATA_WIDTH];   
  assign  m_axis_video_tuser  = rd_data[C_M_AXIS_TDATA_WIDTH +1];
  assign  fid                 = rd_data[C_M_AXIS_TDATA_WIDTH +2];

  // Module instances
  v_vid_in_axi4s_v4_0_5_formatter #(
    .C_NATIVE_DATA_WIDTH(C_NATIVE_DATA_WIDTH)
  ) FORMATTER_INST (
    .VID_IN_CLK       (vid_clk),
    .VID_RESET        (vid_reset),
    .VID_CE           (vid_io_in_ce),

    .VID_ACTIVE_VIDEO (vid_active_video),
    .VID_VBLANK       (vid_vblank),
    .VID_HBLANK       (vid_hblank),
    .VID_VSYNC        (vid_vsync),
    .VID_HSYNC        (vid_hsync),
    .VID_FIELD_ID     (vid_field_id),
    .VID_DATA         (vid_data),
    
    .VTD_ACTIVE_VIDEO (vtd_active_video),
    .VTD_VBLANK       (vtd_vblank),
    .VTD_HBLANK       (vtd_hblank),
    .VTD_VSYNC        (vtd_vsync),
    .VTD_HSYNC        (vtd_hsync),
    .VTD_FIELD_ID     (vtd_field_id),
    .VTD_LOCKED       (axis_enable),

    .FIFO_WR_DATA     (idf_data),
    .FIFO_WR_EN       (idf_de)
  );

  v_vid_in_axi4s_v4_0_5_coupler #(
    .C_FAMILY                 (C_FAMILY),
    .C_HAS_ASYNC_CLK          (C_HAS_ASYNC_CLK),
    .C_ADDR_WIDTH             (C_ADDR_WIDTH),
    .C_PIXELS_PER_CLOCK       (C_PIXELS_PER_CLOCK),
    .C_COMPONENTS_PER_PIXEL   (C_COMPONENTS_PER_PIXEL),
    .C_M_AXIS_COMPONENT_WIDTH (C_M_AXIS_COMPONENT_WIDTH),  
    .C_NATIVE_COMPONENT_WIDTH (C_NATIVE_COMPONENT_WIDTH),
    .C_M_AXIS_TDATA_WIDTH     (C_M_AXIS_TDATA_WIDTH), 
    .C_NATIVE_DATA_WIDTH      (C_NATIVE_DATA_WIDTH)
  ) COUPLER_INST (
    .VID_IN_CLK     (vid_clk),
    .VID_RESET      (vid_reset),
    .VID_CE         (vid_io_in_ce),

    .ACLK           (aclk),
    .ACLKEN         (aclken),
    .ARESETN        (aresetn),

    .FIFO_WR_DATA   (idf_data),
    .FIFO_WR_EN     (idf_de),

    .FIFO_RD_DATA   (rd_data),
    .FIFO_VALID     (m_axis_video_tvalid),
    .FIFO_READY     (m_axis_video_tready),

    .FIFO_OVERFLOW  (overflow),
    .FIFO_UNDERFLOW (underflow)
  );
  
endmodule

`default_nettype wire



