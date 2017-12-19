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
//  This is the top level module for the AXI4-Stream to Video-Out bridge.
//  The bridge is used to convert AXI4-Stream input to native video by 
//  synchronizing to the video timing generator input signals. An internal
//  fifo is used to absorb stalls in the AXI4-Stream input. The fifo supports
//  synchronous or asynchronous clocking modes with configurable fifo detph. 
//  The write enable logic of the fifo is based on the AXI4-Stream input signals. 
//  When the fifo is full the ready signal is de-asserted forcing backpressure 
//  on the stream. The fifo read enable logic is controlled by the synchronizer
//  module. The synchronizer can be configured in master or slave mode and
//  an intial fill level can be assigned to aid synchronization. 
//
//  Verilog-standard:  Verilog 2001
//--------------------------------------------------------------------------
//  Structure:
//    TOP_INST
//      COUPLER_INST
//        FIFO_INST
//      SYNC_INST
//      FORMATTER_INST
//--------------------------------------------------------------------------

`timescale 1ps/1ps
`default_nettype none
(* DowngradeIPIdentifiedWarnings="yes" *)

module v_axi4s_vid_out_v4_0_5 #(
  parameter C_FAMILY = "virtex6",         

  // Video Format
  parameter C_PIXELS_PER_CLOCK = 1,         // Pixels per clock [1,2,4]
  parameter C_COMPONENTS_PER_PIXEL = 3,     // Components per pixel [1,2,3,4]
  parameter C_S_AXIS_COMPONENT_WIDTH = 8,   // AXIS video component width [8,10,12,16]
  parameter C_NATIVE_COMPONENT_WIDTH = 8,   // Native video component width [8,10,12,16]
  parameter C_NATIVE_DATA_WIDTH = 24,       // Native video data width
  parameter C_S_AXIS_TDATA_WIDTH = 24,      // AXIS video tdata width

  // FIFO Settings
  parameter C_HAS_ASYNC_CLK = 0,            // Enable asyncronous clock domains
  parameter C_ADDR_WIDTH = 10,              // FIFO address width [5,10,11,12,13]

  // Timing Mode 
  parameter C_VTG_MASTER_SLAVE = 0,         // VTC timing mode, 1:Master Mode, 0:Slave Mode
  parameter C_HYSTERESIS_LEVEL = 12,        // Hysteresis level or intial fill level
  parameter C_SYNC_LOCK_THRESHOLD = 4       // Minimum of one frame required to acheive lock
) (
  // AXI4-Stream signals
  input   wire aclk,                        // AXI4-Stream clock
  input   wire aclken,                      // AXI4-Stream clock enable
  input   wire aresetn,                     // AXI4-Stream reset active low
  input   wire [C_S_AXIS_TDATA_WIDTH-1:0] s_axis_video_tdata , // AXI4-Stream data
  input   wire s_axis_video_tvalid,         // AXI4-Stream valid 
  output  wire s_axis_video_tready,         // AXI4-Stream ready 
  input   wire s_axis_video_tuser,          // AXI4-Stream tuser (SOF)
  input   wire s_axis_video_tlast,          // AXI4-Stream tlast (EOL)
  input   wire fid,                         // Field-id input, sampled on SOF
  
  // Native video signals
  input   wire vid_io_out_clk,              // Native video clock
  input   wire vid_io_out_ce,               // Native video clock enable
  input   wire vid_io_out_reset,            // Native video reset, active high
  output  wire vid_active_video,            // Native video data enable
  output  wire vid_vsync,                   // Native video vertical sync
  output  wire vid_hsync,                   // Native video horizontal sync
  output  wire vid_vblank,                  // Native video vertical blank
  output  wire vid_hblank,                  // Native video horizontal blank
  output  wire vid_field_id,                // Native video field-id 
  output  wire [C_NATIVE_DATA_WIDTH-1:0] vid_data, // Native video data 
  
  // VTG signals
  input   wire vtg_vsync,                   // VTG vertical sync
  input   wire vtg_hsync,                   // VTG horizontal sync
  input   wire vtg_vblank,                  // VTG vertical blank
  input   wire vtg_hblank,                  // VTG horizontal blank
  input   wire vtg_active_video,            // VTG data enable
  input   wire vtg_field_id,                // VTG field-id 
  output  wire vtg_ce,                      // VTG clock enable

  // Status signals
  output  wire locked,                      // Syncronizer locked status 
  output  wire overflow,                    // FIFO overflow status
  output  wire underflow,                   // FIFO underflow status
  output  wire [32-1:0] status              // General status 
);


  // Signal declarations 
  wire                            vid_clk = (C_HAS_ASYNC_CLK) ? vid_io_out_clk : aclk;
  wire                            vid_reset = (C_HAS_ASYNC_CLK) ? vid_io_out_reset : ~aresetn;
  wire                            vid_clken = vid_io_out_ce;
  wire [C_NATIVE_DATA_WIDTH -1:0] fifo_data;
  wire                            fifo_eol;
  wire                            fifo_sof;
  wire                            fifo_fid;
  wire [C_ADDR_WIDTH:0]           fifo_level_rd;
  wire                            fifo_rd_en;
  wire                            fifo_empty;

  // Module instances
  v_axi4s_vid_out_v4_0_5_coupler #(
    .C_FAMILY                 (C_FAMILY),
    .C_HAS_ASYNC_CLK          (C_HAS_ASYNC_CLK),
    .C_ADDR_WIDTH             (C_ADDR_WIDTH),
    .C_PIXELS_PER_CLOCK       (C_PIXELS_PER_CLOCK),
    .C_COMPONENTS_PER_PIXEL   (C_COMPONENTS_PER_PIXEL),
    .C_S_AXIS_COMPONENT_WIDTH (C_S_AXIS_COMPONENT_WIDTH),  
    .C_NATIVE_COMPONENT_WIDTH (C_NATIVE_COMPONENT_WIDTH),
    .C_S_AXIS_TDATA_WIDTH     (C_S_AXIS_TDATA_WIDTH), 
    .C_NATIVE_DATA_WIDTH      (C_NATIVE_DATA_WIDTH)
  ) COUPLER_INST (
    .VIDEO_OUT_CLK            (vid_clk),
    .VID_CE                   (vid_clken),
    .VID_RESET                (vid_reset),

    .ACLK                     (aclk),
    .ACLKEN                   (aclken),
    .ARESETN                  (aresetn),

    .FIFO_WR_DATA             ({fid,s_axis_video_tuser,s_axis_video_tlast,s_axis_video_tdata}),
    .FIFO_VALID               (s_axis_video_tvalid),
    .FIFO_READY               (s_axis_video_tready),
                 
    .FIFO_RD_DATA             (fifo_data),
    .FIFO_EOL                 (fifo_eol),
    .FIFO_SOF                 (fifo_sof),
    .FIFO_FIELD_ID            (fifo_fid),
    .FIFO_RD_EN               (fifo_rd_en),
    .FIFO_LEVEL_WR            (),
    .FIFO_LEVEL_RD            (fifo_level_rd),
    .FIFO_EMPTY               (fifo_empty),

    .FIFO_OVERFLOW            (overflow),
    .FIFO_UNDERFLOW           (underflow)
  );

  v_axi4s_vid_out_v4_0_5_sync #(
    .C_ADDR_WIDTH          (C_ADDR_WIDTH),  
    .C_HYSTERESIS_LEVEL    (C_HYSTERESIS_LEVEL),
    .C_VTG_MASTER_SLAVE    (C_VTG_MASTER_SLAVE),
    .C_SYNC_LOCK_THRESHOLD (C_SYNC_LOCK_THRESHOLD)
  ) SYNC_INST (
    .VID_OUT_CLK           (vid_clk),   
    .VID_CE                (vid_clken), 
    .VID_RESET             (vid_reset), 

    .FIFO_SOF              (fifo_sof), 
    .FIFO_EOL              (fifo_eol),
    .FIFO_FIELD_ID         (fifo_fid), 
    .FIFO_RD_LEVEL         (fifo_level_rd),
    .FIFO_EMPTY            (fifo_empty),
    .FIFO_RD_EN            (fifo_rd_en),   
    
    .VTG_VSYNC             (vtg_vsync),
    .VTG_HSYNC             (vtg_hsync),
    .VTG_FIELD_ID          (vtg_field_id),
    .VTG_ACTIVE_VIDEO      (vtg_active_video),
    .VTG_EN                (vtg_ce),

    .LOCKED                (locked),
    .STATUS                (status)
  );

  v_axi4s_vid_out_v4_0_5_formatter #(
    .C_NATIVE_DATA_WIDTH(C_NATIVE_DATA_WIDTH)
  )
  FORMATTER_INST
  (
    .VID_OUT_CLK      (vid_clk),
    .VID_CE           (vid_clken),
    .VID_RESET        (vid_reset),

    .FIFO_DATA        (fifo_data),
    .FIFO_RD_EN       (fifo_rd_en),

    .VTG_VSYNC        (vtg_vsync),
    .VTG_HSYNC        (vtg_hsync),
    .VTG_VBLANK       (vtg_vblank),
    .VTG_HBLANK       (vtg_hblank),
    .VTG_ACTIVE_VIDEO (vtg_active_video),
    .VTG_FIELD_ID     (vtg_field_id),

    .LOCKED           (locked),
  
    .VID_ACTIVE_VIDEO (vid_active_video),
    .VID_VSYNC        (vid_vsync),
    .VID_HSYNC        (vid_hsync),
    .VID_VBLANK       (vid_vblank),
    .VID_HBLANK       (vid_hblank),	
    .VID_FIELD_ID     (vid_field_id),
    .VID_DATA         (vid_data)
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
//  This module is the stream coupler for the AXI4-Stream to video-out bridge.
//  It instantiates a fifo used to absorb stalls in the AXI4-Stream input
//  and provides synchronous or asynchronous clock domains. Component width
//  conversion is provided by either trimming or padding the input. The 
//  AXI4-Stream input signals are used to control the fifo write enable. 
//  The synchronizer module is used to control the fifo read enable.
//
//  Verilog-standard:  Verilog 2001
//--------------------------------------------------------------------------

`timescale 1ps/1ps
`default_nettype none
(* DowngradeIPIdentifiedWarnings="yes" *)

module v_axi4s_vid_out_v4_0_5_coupler #(
  parameter C_FAMILY = "virtex6",
  parameter C_HAS_ASYNC_CLK = 0,                         // Enable asyncronous clock domains
  parameter C_ADDR_WIDTH = 10,                           // FIFO address width [5,10,11,12,13]
  parameter C_PIXELS_PER_CLOCK = 1,                      // Pixels per clock [1,2,4]
  parameter C_COMPONENTS_PER_PIXEL = 3,                  // Components per pixel [1,2,3,4]
  parameter C_S_AXIS_COMPONENT_WIDTH = 8,                // AXIS video component width [8,10,12,16]
  parameter C_NATIVE_COMPONENT_WIDTH = 8,                // Native video component width [8,10,12,16]
  parameter C_S_AXIS_TDATA_WIDTH = 24,                   // AXIS video tdata width
  parameter C_NATIVE_DATA_WIDTH = 24                     // Native video data width
) (
  // System Signals
  input  wire VIDEO_OUT_CLK,                             // Native video clock
  input  wire VID_CE,                                    // Native video clock enable
  input  wire VID_RESET,                                 // Native video reset

  input  wire ACLK,                                      // AXI4-Stream clock
  input  wire ACLKEN,                                    // AXI4-Stream clock enable
  input  wire ARESETN,                                   // AXI4-Stream resetn, active low

  // FIFO write signals
  input  wire [C_S_AXIS_TDATA_WIDTH+3-1:0] FIFO_WR_DATA, // FIFO write data
  input  wire FIFO_VALID,                                // FIFO valid
  output wire FIFO_READY,                                // FIFO ready

  // FIFO read signals
  output wire [C_NATIVE_DATA_WIDTH-1:0] FIFO_RD_DATA,    // FIFO read data
  output wire FIFO_EOL,                                  // FIFO end of line
  output wire FIFO_SOF,                                  // FIFO start of frame
  output wire FIFO_FIELD_ID,                             // FIFO field-id
  input  wire FIFO_RD_EN,                                // FIFO read enable
  output wire [C_ADDR_WIDTH:0] FIFO_LEVEL_WR,            // FIFO fill level write domain
  output wire [C_ADDR_WIDTH:0] FIFO_LEVEL_RD,            // FIFO fill level read domain

  // FIFO status signals
  output wire FIFO_EMPTY,                                // FIFO empty
  output wire FIFO_OVERFLOW,                             // FIFO overflow
  output wire FIFO_UNDERFLOW                             // FIFO underflow
);

  // Parameters
  localparam C_NUM_COMPONENTS       = C_PIXELS_PER_CLOCK * C_COMPONENTS_PER_PIXEL;
  localparam C_DO_TRIM              = C_S_AXIS_COMPONENT_WIDTH > C_NATIVE_COMPONENT_WIDTH;
  localparam C_DO_PAD               = C_S_AXIS_COMPONENT_WIDTH < C_NATIVE_COMPONENT_WIDTH;
  localparam C_DATA_WIDTH           = C_DO_TRIM ? ((C_NUM_COMPONENTS * C_NATIVE_COMPONENT_WIDTH) + 3) : ((C_NUM_COMPONENTS * C_S_AXIS_COMPONENT_WIDTH) + 3);
  localparam C_DIFF_COMPONENT_WIDTH = C_DO_TRIM ? C_S_AXIS_COMPONENT_WIDTH-C_NATIVE_COMPONENT_WIDTH : C_NATIVE_COMPONENT_WIDTH-C_S_AXIS_COMPONENT_WIDTH;
  localparam C_IMPLEMENTATION_TYPE  = C_HAS_ASYNC_CLK ? 2 : 0;
  localparam C_EN_SAFETY_CKT        = C_HAS_ASYNC_CLK ? 0 : 0;

  // Wire and register declarations
  genvar                   i;
  wire [C_DATA_WIDTH-1:0]  din_i;      
  wire [C_DATA_WIDTH-1:0]  dout_i;      
  wire [C_NATIVE_DATA_WIDTH-1:0] dout_from_pad;      
  wire                     full_i;     
  wire                     wr_en_i;   
  wire                     rd_en_i;   
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
  wire                     valid_i;
  wire                     empty_i;
  wire                     wr_rst_busy_i;
  wire                     rd_rst_busy_i;
 
  // Assignments
  assign FIFO_RD_DATA   = dout_from_pad;
  assign FIFO_EOL       = dout_i[C_DATA_WIDTH-3];
  assign FIFO_SOF       = dout_i[C_DATA_WIDTH-2];
  assign FIFO_FIELD_ID  = dout_i[C_DATA_WIDTH-1];
  assign FIFO_READY     = ~full_i & ARESETN & ~wr_rst_busy_i;
  assign wr_en_i        = FIFO_VALID & FIFO_READY & ACLKEN & ARESETN; 
  assign rd_en_i        = FIFO_RD_EN & VID_CE;
  assign FIFO_EMPTY     = empty_i;
  assign FIFO_OVERFLOW  = overflow_i;
  assign FIFO_UNDERFLOW = underflow_i;

  generate
    if(C_HAS_ASYNC_CLK) begin : gen_async_fifo_signals
      assign wr_clk_i = ACLK;
      assign rd_clk_i = VIDEO_OUT_CLK;
      assign clk_i = 1'b0;
      assign FIFO_LEVEL_RD = rd_data_count_i;
      assign FIFO_LEVEL_WR = wr_data_count_i;
    end else begin : gen_sync_fifo_signals
      assign wr_clk_i = 1'b0;
      assign rd_clk_i = 1'b0;
      assign clk_i = ACLK;
      assign FIFO_LEVEL_RD = data_count_i;
      assign FIFO_LEVEL_WR = data_count_i;
    end
  endgenerate

  // Trim data input to FIFO
  generate
    if(C_DO_TRIM) begin : gen_trim_to_fifo
      for(i=0; i<C_NUM_COMPONENTS; i=i+1) begin : gen_trim_to_fifo_loop
        assign din_i[i*C_NATIVE_COMPONENT_WIDTH +: C_NATIVE_COMPONENT_WIDTH] = FIFO_WR_DATA[(i*C_S_AXIS_COMPONENT_WIDTH+C_DIFF_COMPONENT_WIDTH) +: C_NATIVE_COMPONENT_WIDTH];
      end
      assign din_i[C_DATA_WIDTH-1:C_DATA_WIDTH-3] = FIFO_WR_DATA[C_S_AXIS_TDATA_WIDTH+3-1:C_S_AXIS_TDATA_WIDTH+3-3];
    end else begin : gen_no_trim_to_fifo
      assign din_i = {FIFO_WR_DATA[C_S_AXIS_TDATA_WIDTH+3-1:C_S_AXIS_TDATA_WIDTH+3-3], FIFO_WR_DATA[C_DATA_WIDTH-4:0]};
    end
  endgenerate

  // Pad data output from FIFO
  generate
    if(C_DO_PAD) begin : gen_pad_from_fifo
      for(i=0; i<C_NUM_COMPONENTS; i=i+1) begin : gen_pad_from_fifo_loop
        assign dout_from_pad[i*C_NATIVE_COMPONENT_WIDTH +: C_NATIVE_COMPONENT_WIDTH] = {dout_i[i*C_S_AXIS_COMPONENT_WIDTH +: C_S_AXIS_COMPONENT_WIDTH],{C_DIFF_COMPONENT_WIDTH{1'b0}}};
      end
    end else begin : gen_no_pad_from_fifo
        assign dout_from_pad = dout_i;
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
//----------------------------------------------------------
//--------------------------------------------------------------------------
//  Module Description:
//  This module is the synchronizer for the AXI4-Stream to video-out bridge.
//
//  Verilog-standard:  Verilog 2001
//--------------------------------------------------------------------------

`timescale 1ps/1ps
`default_nettype wire
(* DowngradeIPIdentifiedWarnings="yes" *)

module v_axi4s_vid_out_v4_0_5_sync #( 
  parameter C_ADDR_WIDTH = 10,                       // FIFO address width [5,10,11,12,13]
  parameter C_VTG_MASTER_SLAVE = 0,                  // VTC timing mode, 1:Master Mode, 0:Slave Mode
  parameter C_HYSTERESIS_LEVEL = 12,                 // Hysteresis level or intial fill level
  parameter C_SYNC_LOCK_THRESHOLD = 4                // Minimum of one frame required to acheive lock
) (
  input  wire                      VID_OUT_CLK,      // Native video clock
  input  wire                      VID_CE,           // Native video clock enable
  input  wire                      VID_RESET,        // Native video resetn

  // FIFO signals
  input  wire                      FIFO_SOF,         // FIFO start of frame
  input  wire                      FIFO_EOL,         // FIFO end of line
  input  wire                      FIFO_FIELD_ID,    // FIFO field-id
  input  wire [C_ADDR_WIDTH:0]     FIFO_RD_LEVEL,    // FIFO read Level
  input  wire                      FIFO_EMPTY,       // FIFO emtpy
  output wire                      FIFO_RD_EN,       // FIFO read enable 
  
  // VTG signals
  input  wire                      VTG_VSYNC,        // VTG vertical sync
  input  wire                      VTG_HSYNC,        // VTG horizontal sync
  input  wire                      VTG_FIELD_ID,     // VTG field-id
  input  wire                      VTG_ACTIVE_VIDEO, // VTG data enable
  output wire                      VTG_EN,           // VTG enable
 
  // Status signals
  output wire                      LOCKED,
  output wire [32-1:0]             STATUS
);

  // Local Parameters
  localparam [32-1:0] C_SYNC_VTG_LAG_MAX       = 2**C_ADDR_WIDTH;

  localparam [4-1:0]  C_SYNC_IDLE              = 0,  // Idle State

                      C_SYNC_CALN_SOF_VTG      = 1,  // Coarse Align, VTG SOF
                      C_SYNC_CALN_SOF_FIFO     = 2,  // Coarse Align, FIFO SOF

                      C_SYNC_FALN_EOL_LEADING  = 3,  // Fine Align, VTG Leading FIFO EOL
                      C_SYNC_FALN_EOL_LAGGING  = 4,  // Fine Align, VTG Lagging FIFO EOL
                      C_SYNC_FALN_SOF_LEADING  = 5,  // Fine Align, VTG Leading FIFO SOF
                      C_SYNC_FALN_SOF_LAGGING  = 6,  // Fine Align, VTG Lagging FIFO SOF
                      C_SYNC_FALN_ACTIVE       = 7,  // Fine Align, Running
                      C_SYNC_FALN_LOCK         = 8,  // Fine Align, Locked

                      C_SYNC_LALN_EOL_LEADING  = 9,  // Lost Align, VTG Leading FIFO EOL 
                      C_SYNC_LALN_EOL_LAGGING  = 10, // Lost Align, VTG Lagging FIFO EOL 
                      C_SYNC_LALN_SOF_LEADING  = 11, // Lost Align, VTG Leading FIFO SOF
                      C_SYNC_LALN_SOF_LAGGING  = 12; // Lost Align, VTG Lagging FIFO SOF
             
  // State Signals
  reg  [4-1:0]   state = C_SYNC_IDLE;
  reg  [4-1:0]   state_dly = C_SYNC_IDLE;
  reg  [4-1:0]   next_state;

  // Status Signals
  reg  [32-1:0]  status_reg = 32'h00000000;

  // FIFO SOF/EOL Signals
  reg  sof_ignore = 1'b1;
  reg  fifo_sof_dly = 1'b0; 
  reg  fifo_eol_dly = 1'b0;
  reg  fifo_fid_dly = 1'b0;
  reg  fifo_eol_re_dly = 1'b0;
  wire fifo_eol_fe = fifo_eol_dly & ~FIFO_EOL;
  wire fifo_eol_re = ~fifo_eol_dly & FIFO_EOL;
  wire fifo_sof_fe = fifo_sof_dly & ~FIFO_SOF;
  wire fifo_sof_re = ~fifo_sof_dly & FIFO_SOF;

  // FIFO Flush Signals
  wire fifo_flush_eol;
  wire fifo_force_rd = fifo_flush_eol;

  // VTG SOF/EOL Signals
  reg  vtg_de_dly = 1'b0;          
  reg  vtg_vsync_dly = 1'b0;          
  reg  vtg_vsync_bp = 1'b0;

  wire vtg_vsync_re = ~vtg_vsync_dly & VTG_VSYNC;
  wire vtg_vsync_fe = vtg_vsync_dly & ~VTG_VSYNC;
  wire vtg_de_re = ~vtg_de_dly & VTG_ACTIVE_VIDEO;
  wire vtg_de_fe = vtg_de_dly & ~VTG_ACTIVE_VIDEO;
  
  wire vtg_sof = vtg_de_re & vtg_vsync_bp;
  wire vtg_eol_dly = vtg_de_fe;
  reg  vtg_sof_dly = 1'b0;
  reg  vtg_fid_dly = 1'b0;

  // VTG Lag Signals
  reg  [32-1:0]  vtg_lag_threshold = C_HYSTERESIS_LEVEL; 
  reg  [32-1:0]  vtg_lag = 0; 

  // SOF Count Signals
  reg [8-1:0] vtg_sof_cnt = 8'h00;
  reg [8-1:0] fifo_sof_cnt = 8'h00;

  // EOL Count Signals
  reg [13-1:0] fifo_eol_cnt = 13'h0000;
  reg [13-1:0] fifo_eol_cnt_dly = 13'h0000;
  reg fifo_eol_error = 1'b0;
  
  // Pix Count Signals
  reg [13-1:0] fifo_pix_cnt = 13'h0000;
  reg [13-1:0] fifo_pix_cnt_dly = 13'h0000;
  reg fifo_pix_error = 1'b0;

  // Assignments
  assign fifo_flush_eol = (state == C_SYNC_FALN_EOL_LEADING); 
  assign LOCKED = (state == C_SYNC_FALN_LOCK);
  assign STATUS = status_reg;

  generate if(C_VTG_MASTER_SLAVE == 0) begin : gen_fifo_vtg_en_slave_mode
    assign VTG_EN = VID_CE &  
                    ((state == C_SYNC_IDLE) ||
                    (state == C_SYNC_FALN_ACTIVE) ||
                    (state == C_SYNC_FALN_EOL_LAGGING) ||
                    (state == C_SYNC_FALN_SOF_LAGGING) ||
                    (state == C_SYNC_FALN_LOCK));
  end else if(C_VTG_MASTER_SLAVE == 1) begin : gen_fifo_vtg_en_master_mode
    assign VTG_EN = VID_CE;
  end endgenerate

  generate if(C_VTG_MASTER_SLAVE == 0) begin : gen_fifo_rd_en_slave_mode
    assign FIFO_RD_EN = VID_CE & 
                        ((fifo_force_rd) ||
                        (state == C_SYNC_IDLE) ||
                        (state == C_SYNC_CALN_SOF_VTG) ||
                        ((state > C_SYNC_CALN_SOF_FIFO) & VTG_ACTIVE_VIDEO));
  end else if(C_VTG_MASTER_SLAVE == 1) begin : gen_fifo_rd_en_master_mode
    assign FIFO_RD_EN = VID_CE &
                        ((state == C_SYNC_IDLE) ||
                        ((state >= C_SYNC_FALN_EOL_LEADING) & VTG_ACTIVE_VIDEO));
  end endgenerate

  // Status Process
  always @(posedge VID_OUT_CLK) begin
    if(VID_RESET) begin
      status_reg <= 32'h00000000;
    end else if(VID_CE) begin
      state_dly <= state;
      if(state_dly != state) begin
        case(state)
        C_SYNC_IDLE:             status_reg[0]  <= 1'b1;
        C_SYNC_CALN_SOF_VTG:     status_reg[1]  <= 1'b1;
        C_SYNC_CALN_SOF_FIFO:    status_reg[2]  <= 1'b1;
        C_SYNC_FALN_EOL_LEADING: status_reg[3]  <= 1'b1;
        C_SYNC_FALN_EOL_LAGGING: status_reg[4]  <= 1'b1;
        C_SYNC_FALN_SOF_LEADING: status_reg[5]  <= 1'b1;
        C_SYNC_FALN_SOF_LAGGING: status_reg[6]  <= 1'b1;
        C_SYNC_FALN_ACTIVE:      status_reg[7]  <= 1'b1;
        C_SYNC_FALN_LOCK:        status_reg[8]  <= 1'b1;
        C_SYNC_LALN_EOL_LEADING: status_reg[9]  <= 1'b1;
        C_SYNC_LALN_EOL_LAGGING: status_reg[10] <= 1'b1;
        C_SYNC_LALN_SOF_LEADING: status_reg[11] <= 1'b1;
        C_SYNC_LALN_SOF_LAGGING: status_reg[12] <= 1'b1;
        endcase
      end
      status_reg[13] <= fifo_pix_error;
      status_reg[14] <= fifo_eol_error;
      status_reg[C_ADDR_WIDTH+16-1:16] <= vtg_lag;
    end
  end

  // FIFO Signal Delay Process
  always @(posedge VID_OUT_CLK) begin
    if(VID_RESET) begin
      fifo_sof_dly <= 1'b0; 
      fifo_eol_dly <= 1'b0;
      fifo_fid_dly <= 1'b0;
      fifo_eol_re_dly <= 1'b0;
    end else if(VID_CE) begin
      fifo_sof_dly <= FIFO_SOF; 
      fifo_eol_dly <= FIFO_EOL;
      fifo_fid_dly <= FIFO_FIELD_ID;
      fifo_eol_re_dly <= fifo_eol_re;
    end
  end

  // SOF Ignore
  // - Ignore the first SOF
  always @(posedge VID_OUT_CLK) begin
    if(VID_RESET || state==C_SYNC_IDLE) begin
      sof_ignore <= 1'b1;
    end else if(VID_CE) begin
      if(fifo_eol_cnt > 13'h0000 && ~FIFO_FIELD_ID)
        sof_ignore <= 1'b0;
    end
  end
  
  // VTG Signal Delay Process
  always @(posedge VID_OUT_CLK) begin
    if(VID_RESET) begin
      vtg_de_dly <= 1'b0;
      vtg_vsync_dly <= 1'b0;
      vtg_sof_dly <= 1'b0;
      vtg_fid_dly <= 1'b0;
    end else if(VID_CE) begin
      vtg_de_dly <= VTG_ACTIVE_VIDEO;
      vtg_vsync_dly <= VTG_VSYNC;
      vtg_sof_dly <= vtg_sof;
      vtg_fid_dly <= VTG_FIELD_ID;
    end
  end

  // VTG Backporch Process
  always @(posedge VID_OUT_CLK) begin
    if(VID_RESET || vtg_de_dly) begin
      vtg_vsync_bp <= 1'b0;
    end else if(VID_CE) begin
      if(vtg_vsync_fe)
        vtg_vsync_bp <= 1'b1;
    end
  end

  // VTG Lag Process
  // - During fine alignment track the VTG lag
  always @(posedge VID_OUT_CLK) begin
    if(VID_RESET || state == C_SYNC_IDLE) begin
      vtg_lag <= vtg_lag_threshold;
    end else if(VID_CE) begin
      if((state == C_SYNC_FALN_EOL_LEADING) || (state == C_SYNC_FALN_SOF_LEADING)) begin
        vtg_lag <= vtg_lag + 1'b1;
      end
    end
  end

  // SOF Count Process
  always @(posedge VID_OUT_CLK) begin
    if(VID_RESET || state < C_SYNC_FALN_ACTIVE) begin
      vtg_sof_cnt <= 8'h0;
      fifo_sof_cnt <= 8'h0;
    end else if(VID_CE) begin
      if(vtg_sof_dly)
        vtg_sof_cnt <= vtg_sof_cnt + 1'b1;
      if(fifo_sof_fe)
        fifo_sof_cnt <= fifo_sof_cnt + 1'b1;
    end
  end

  // EOL Count Process
  always @(posedge VID_OUT_CLK) begin
    if(VID_RESET || state < C_SYNC_CALN_SOF_FIFO) begin
      fifo_eol_cnt <= 13'h0000;
      fifo_eol_cnt_dly <= 13'h0000;
    end else if(VID_CE) begin
      if(fifo_sof_fe) begin
        fifo_eol_cnt <= 13'h0000;
        fifo_eol_cnt_dly <= fifo_eol_cnt;
      end else if(fifo_eol_re_dly) begin
        fifo_eol_cnt <= fifo_eol_cnt + 1'b1;
      end
    end
  end

  // EOL Error Process
  // - Asserted when there is a mismatch in the number of lines 
  // between consecutive frames
  always @(posedge VID_OUT_CLK) begin
    if(VID_RESET) begin
      fifo_eol_error <= 1'b0;
    end else if(VID_CE) begin
      if(fifo_sof_fe && (fifo_eol_cnt_dly > 0) && (fifo_eol_cnt != fifo_eol_cnt_dly)) 
        fifo_eol_error <= 1'b1;
    end
  end

  // Pixel Count Process
  always @(posedge VID_OUT_CLK) begin
    if(VID_RESET || state < C_SYNC_CALN_SOF_FIFO) begin
      fifo_pix_cnt <= 13'h0000;
      fifo_pix_cnt_dly <= 13'h0000;
    end else if(VID_CE) begin
      if(fifo_eol_re_dly) begin
        fifo_pix_cnt <= 13'h0000;
        if(fifo_eol_cnt > 0 || fifo_pix_cnt_dly > 0)
          fifo_pix_cnt_dly <= fifo_pix_cnt;
      end else if(FIFO_RD_EN && ~FIFO_EMPTY) begin
        fifo_pix_cnt <= fifo_pix_cnt + 1'b1;
      end
    end
  end

  // Pixel Error Process
  // - Asserted when there is a mismatch in the number of active pixels
  // between consecutive lines
  // - Cleared every SOF
  always @(posedge VID_OUT_CLK) begin
    if(VID_RESET) begin
      fifo_pix_error <= 1'b0;
    end else if(VID_CE) begin
      if(fifo_eol_re_dly && (fifo_pix_cnt_dly > 0) && (fifo_pix_cnt != fifo_pix_cnt_dly))
        fifo_pix_error <= 1'b1;
      else if(fifo_sof_fe)
        fifo_pix_error <= 1'b0;
    end
  end 

  // Current State Process
  always @(posedge VID_OUT_CLK) begin
    if(VID_RESET)
      state <= C_SYNC_IDLE;
    else if(VID_CE) 
      state <= next_state;
  end

  // Next State Process
  generate if(C_VTG_MASTER_SLAVE == 0) begin : gen_sync_slave_mode
    always @(*) begin
      next_state = C_SYNC_IDLE;
  
      if(VID_RESET) begin
        next_state = C_SYNC_IDLE;
      end else begin
        case(state) 
  
          // Wait for VTG SOF
          C_SYNC_IDLE: begin
            if(vtg_sof && ~VTG_FIELD_ID)
              next_state = C_SYNC_CALN_SOF_VTG;
            else
              next_state = C_SYNC_IDLE;
          end  
  
          // Wait for FIFO SOF
          // - If the intial fill level is set to zero skip directly to fine alignment
          C_SYNC_CALN_SOF_VTG: begin
            if(FIFO_SOF && ~FIFO_FIELD_ID && (vtg_lag_threshold > 0))
              next_state = C_SYNC_CALN_SOF_FIFO;
            else if(FIFO_SOF && ~FIFO_FIELD_ID)
              next_state = C_SYNC_FALN_ACTIVE;
            else
              next_state = C_SYNC_CALN_SOF_VTG;
          end
  
          // Wait for FIFO Fill 
          C_SYNC_CALN_SOF_FIFO: begin
            if(FIFO_RD_LEVEL >= vtg_lag_threshold)
              next_state = C_SYNC_FALN_ACTIVE;
            else
              next_state = C_SYNC_CALN_SOF_FIFO;
          end
          
          // Fine Align Active
          C_SYNC_FALN_ACTIVE: begin
            if(vtg_eol_dly && ~fifo_eol_re_dly)
              next_state = C_SYNC_FALN_EOL_LEADING;
            else if(~vtg_eol_dly && fifo_eol_re_dly && ~fifo_force_rd)
              next_state = C_SYNC_FALN_EOL_LAGGING;
            else if(vtg_sof_dly && ~fifo_sof_fe && ~sof_ignore)
              next_state = C_SYNC_FALN_SOF_LEADING;
            else if(~vtg_sof_dly && fifo_sof_fe && ~sof_ignore && ~fifo_force_rd)
              next_state = C_SYNC_FALN_SOF_LAGGING;
            else if((vtg_sof_dly && fifo_sof_fe) && (vtg_sof_cnt >= C_SYNC_LOCK_THRESHOLD-1) && (fifo_sof_cnt >= C_SYNC_LOCK_THRESHOLD-1))
              next_state = C_SYNC_FALN_LOCK;
            else
              next_state = C_SYNC_FALN_ACTIVE;
          end
  
          // VTG Leading EOL
          // - Flush out EOL from FIFO
          C_SYNC_FALN_EOL_LEADING: begin
            if(vtg_lag >= C_SYNC_VTG_LAG_MAX-1'b1)
              next_state = C_SYNC_IDLE;
            else if(fifo_eol_re_dly)
              next_state = C_SYNC_FALN_ACTIVE;
            else
              next_state = C_SYNC_FALN_EOL_LEADING;
          end
  
          // VTG Lagging EOL
          // - Indicates Early EOL caused by incorrect VTG settings or an extra
          // read during EOL flushing. An extra read can occur during EOL flushing
          // if the last pixel arrives immediately before the next active line.
          // - Since the source of the error is unknown continue as normal
          C_SYNC_FALN_EOL_LAGGING: begin
            next_state = C_SYNC_FALN_ACTIVE;
          end
  
          // VTG Leading SOF
          // - Lag VTG until FIFO SOF
          C_SYNC_FALN_SOF_LEADING: begin
            if(vtg_lag >= C_SYNC_VTG_LAG_MAX-1'b1)
              next_state = C_SYNC_IDLE;
            else if(fifo_sof_fe)
              next_state = C_SYNC_FALN_ACTIVE;
            else 
              next_state = C_SYNC_FALN_SOF_LEADING;
          end
  
          // VTG Lagging SOF
          // - Indicates Early SOF caused by incorrect VTG settings
          C_SYNC_FALN_SOF_LAGGING: begin
            next_state = C_SYNC_FALN_ACTIVE;
          end
  
          // VTG Locked 
          C_SYNC_FALN_LOCK: begin
            if(vtg_eol_dly & ~fifo_eol_re_dly)
              next_state = C_SYNC_LALN_EOL_LEADING;
            else if(~vtg_eol_dly & fifo_eol_re_dly)
              next_state = C_SYNC_LALN_EOL_LAGGING;
            else if(vtg_sof_dly && ~fifo_sof_fe)
              next_state = C_SYNC_LALN_SOF_LEADING;
            else if(~vtg_sof_dly && fifo_sof_fe)
              next_state = C_SYNC_LALN_SOF_LAGGING;
            else
              next_state = C_SYNC_FALN_LOCK;
          end
  
          // Lost Lock, VTG Leading EOL
          C_SYNC_LALN_EOL_LEADING: begin
            next_state = C_SYNC_IDLE;
          end
  
          // Lost Lock, VTG Lagging EOL
          // - Indicates Early EOL caused by incorrect VTG settings
          // - Should never occur since it would be caught during fine alignment
          C_SYNC_LALN_EOL_LAGGING: begin
            next_state = C_SYNC_IDLE;
          end

          // Lost Lock, VTG Leading SOF
          C_SYNC_LALN_SOF_LEADING: begin
            next_state = C_SYNC_IDLE;
          end

          // Lost Lock, VTG Lagging SOF
          // - Indicates Early SOF caused by incorrect VTG settings
          // - Should never occur since it would be caught during fine alignment
          C_SYNC_LALN_SOF_LAGGING: begin
            next_state = C_SYNC_IDLE;
          end
  
        endcase
      end
    end
  end else if(C_VTG_MASTER_SLAVE == 1) begin : gen_sync_master_mode
    always @(*) begin
      next_state = C_SYNC_IDLE;
  
      if(VID_RESET) begin
        next_state = C_SYNC_IDLE;
      end else begin
        case(state) 

          // Wait for FIFO SOF
          C_SYNC_IDLE: begin
            if(FIFO_SOF && ~FIFO_FIELD_ID)
              next_state = C_SYNC_CALN_SOF_FIFO;
            else
              next_state = C_SYNC_IDLE;
          end

          // Wait for FIFO Fill 
          C_SYNC_CALN_SOF_FIFO: begin
            if(FIFO_RD_LEVEL >= vtg_lag_threshold)
              next_state = C_SYNC_CALN_SOF_VTG;
            else
              next_state = C_SYNC_CALN_SOF_FIFO;
          end

          // Wait for VTG vsync
          C_SYNC_CALN_SOF_VTG: begin
            if(vtg_sof && ~VTG_FIELD_ID)
              next_state = C_SYNC_FALN_ACTIVE;
            else
              next_state = C_SYNC_CALN_SOF_VTG;
          end 

          // Fine Align Active
          C_SYNC_FALN_ACTIVE: begin
            if(vtg_eol_dly && ~fifo_eol_re_dly)
              next_state = C_SYNC_FALN_EOL_LEADING;
            else if(~vtg_eol_dly && fifo_eol_re_dly && ~fifo_force_rd)
              next_state = C_SYNC_FALN_EOL_LAGGING;
            else if(vtg_sof_dly && ~fifo_sof_fe && ~sof_ignore)
              next_state = C_SYNC_FALN_SOF_LEADING;
            else if(~vtg_sof_dly && fifo_sof_fe && ~sof_ignore && ~fifo_force_rd)
              next_state = C_SYNC_FALN_SOF_LAGGING;
            else if((vtg_sof_dly && fifo_sof_fe) && (vtg_sof_cnt >= C_SYNC_LOCK_THRESHOLD-1) && (fifo_sof_cnt >= C_SYNC_LOCK_THRESHOLD-1))
              next_state = C_SYNC_FALN_LOCK;
            else
              next_state = C_SYNC_FALN_ACTIVE;
          end

          // VTG Leading EOL
          // - Flush out EOL from FIFO
          C_SYNC_FALN_EOL_LEADING: begin
            if(vtg_lag >= C_SYNC_VTG_LAG_MAX-1'b1)
              next_state = C_SYNC_IDLE;
            else if(fifo_eol_re_dly)
              next_state = C_SYNC_FALN_ACTIVE;
            else
              next_state = C_SYNC_FALN_EOL_LEADING;
          end

          // VTG Lagging EOL
          // - Indicates Early EOL caused by incorrect VTG settings or an extra
          // read during EOL flushing. An extra read can occur during EOL flushing
          // if the last pixel arrives immediately before the next active line.
          // - Since the source of the error is unknown continue as normal
          C_SYNC_FALN_EOL_LAGGING: begin
            next_state = C_SYNC_FALN_ACTIVE;
          end
  
          // VTG Leading SOF
          // - Lag VTG until FIFO SOF
          C_SYNC_FALN_SOF_LEADING: begin
            if(vtg_lag >= C_SYNC_VTG_LAG_MAX-1'b1)
              next_state = C_SYNC_IDLE;
            else if(fifo_sof_fe)
              next_state = C_SYNC_FALN_ACTIVE;
            else 
              next_state = C_SYNC_FALN_SOF_LEADING;
          end
  
          // VTG Lagging SOF
          // - Indicates Early SOF caused by incorrect VTG settings
          C_SYNC_FALN_SOF_LAGGING: begin
            next_state = C_SYNC_FALN_ACTIVE;
          end
  
          // VTG Locked 
          C_SYNC_FALN_LOCK: begin
            if(vtg_eol_dly & ~fifo_eol_re_dly)
              next_state = C_SYNC_LALN_EOL_LEADING;
            else if(~vtg_eol_dly & fifo_eol_re_dly)
              next_state = C_SYNC_LALN_EOL_LAGGING;
            else if(vtg_sof_dly && ~fifo_sof_fe)
              next_state = C_SYNC_LALN_SOF_LEADING;
            else if(~vtg_sof_dly && fifo_sof_fe)
              next_state = C_SYNC_LALN_SOF_LAGGING;
            else
              next_state = C_SYNC_FALN_LOCK;
          end
  
          // Lost Lock, VTG Leading EOL
          C_SYNC_LALN_EOL_LEADING: begin
            next_state = C_SYNC_IDLE;
          end
  
          // Lost Lock, VTG Lagging EOL
          // - Indicates Early EOL caused by incorrect VTG settings
          // - Should never occur since it would be caught during fine alignment
          C_SYNC_LALN_EOL_LAGGING: begin
            next_state = C_SYNC_IDLE;
          end

          // Lost Lock, VTG Leading SOF
          C_SYNC_LALN_SOF_LEADING: begin
            next_state = C_SYNC_IDLE;
          end

          // Lost Lock, VTG Lagging SOF
          // - Indicates Early SOF caused by incorrect VTG settings
          // - Should never occur since it would be caught during fine alignment
          C_SYNC_LALN_SOF_LAGGING: begin
            next_state = C_SYNC_IDLE;
          end

        endcase 
      end
    end
  end endgenerate
  
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
//  This module is the data formatter for the AXI4-Stream to video-out bridge.
//  The delayed video timing generator input signals are passed to the output 
//  when the synchronizer is LOCKED.
//
//  Verilog-standard:  Verilog 2001
//--------------------------------------------------------------------------

`timescale 1ps/1ps
`default_nettype none
(* DowngradeIPIdentifiedWarnings="yes" *)

module v_axi4s_vid_out_v4_0_5_formatter #(
  parameter  C_NATIVE_DATA_WIDTH = 24
) (
  input  wire VID_OUT_CLK,        // Native video clock
  input  wire VID_CE,             // Native video clock enable
  input  wire VID_RESET,          // Native video reset

  // FIFO signals
  input  wire [C_NATIVE_DATA_WIDTH-1:0] FIFO_DATA, // FIFO read data
  input  wire FIFO_RD_EN,         // FIFO read enable

  // VTG timing signals
  input  wire VTG_VSYNC,          // VTG vertical sync
  input  wire VTG_HSYNC,          // VTG horizontal sync
  input  wire VTG_VBLANK,         // VTG vertical blank
  input  wire VTG_HBLANK,         // VTG horizontal blank
  input  wire VTG_ACTIVE_VIDEO,   // VTG active video
  input  wire VTG_FIELD_ID,       // VTG field-id

  // Synchronizer signals
  input  wire LOCKED,             // Synchronizer locked

  // Native video signals
  output  wire VID_ACTIVE_VIDEO,  // Native video data enable
  output  wire VID_VSYNC,         // Native video vertical sync
  output  wire VID_HSYNC,         // Native video horizontal sync
  output  wire VID_VBLANK,        // Native video vertical blank
  output  wire VID_HBLANK,        // Native video horizontal blank
  output  wire VID_FIELD_ID,      // Native video field-id
  output  wire [C_NATIVE_DATA_WIDTH-1:0] VID_DATA // Native video data
);

  // Signal Declarations
  reg [C_NATIVE_DATA_WIDTH -1:0] in_data_mux = {C_NATIVE_DATA_WIDTH{1'b0}}; // Output disabling mux
  reg in_de_mux              = 1'b0;  
  reg in_vsync_mux           = 1'b0;  
  reg in_hsync_mux           = 1'b0;  
  reg in_vblank_mux          = 1'b0;  
  reg in_hblank_mux          = 1'b0; 
  reg in_field_id_mux        = 1'b0; 
  reg fivid_reset_full_frame = 1'b0;  // activates at start of full frame after reset.
  reg vtg_vblank_1           = 1'b0;  // delayed vblank 
  reg vblank_rising          = 1'b0;  //detects rising edge of vblank 
  
  
  // Assignments
  assign VID_DATA           = in_data_mux;
  assign VID_VSYNC          = in_vsync_mux;
  assign VID_HSYNC          = in_hsync_mux;
  assign VID_VBLANK         = in_vblank_mux;
  assign VID_HBLANK         = in_hblank_mux;
  assign VID_ACTIVE_VIDEO   = in_de_mux;
  assign VID_FIELD_ID       = in_field_id_mux;

  // Detect rising edge of vblank
  always @ (posedge VID_OUT_CLK) begin
    if (VID_CE) begin
      vtg_vblank_1 <= VTG_VBLANK;
      vblank_rising <= VTG_VBLANK && !vtg_vblank_1;
    end
  end

  // Detect start of full frame after reset and LOCKED
  always @ (posedge VID_OUT_CLK)begin
    if (VID_RESET || !LOCKED) begin
     fivid_reset_full_frame <= 0;
    end else if (vblank_rising & VID_CE) begin
     fivid_reset_full_frame <= 1;
    end 
  end	 
  
  //  Input Mux.  Zero outputs when not LOCKED and not full frame
  always @ (posedge VID_OUT_CLK)begin
    if (!LOCKED || VID_RESET || !fivid_reset_full_frame) begin
      in_de_mux     <= 0;
      in_vsync_mux  <= 0;
      in_hsync_mux  <= 0;    
      in_vblank_mux <= 0;
      in_hblank_mux <= 0;
      in_field_id_mux <= 0;    
      in_data_mux   <= 0;
    end else if (VID_CE) begin
      in_de_mux     <= VTG_ACTIVE_VIDEO;
      in_vsync_mux  <= VTG_VSYNC;
      in_hsync_mux  <= VTG_HSYNC;
      in_vblank_mux <= VTG_VBLANK;
      in_hblank_mux <= VTG_HBLANK;
      in_field_id_mux <= VTG_FIELD_ID;
      if (FIFO_RD_EN)
        in_data_mux  <= FIFO_DATA;
    end
  end

endmodule

`default_nettype wire


