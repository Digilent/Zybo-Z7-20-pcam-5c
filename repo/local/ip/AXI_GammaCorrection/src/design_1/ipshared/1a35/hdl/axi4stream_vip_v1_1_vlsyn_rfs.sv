//  (c) Copyright 2017 Xilinx, Inc. All rights reserved.
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
//-----------------------------------------------------------------------------

`timescale 1ps/1ps

(* DowngradeIPIdentifiedWarnings="yes" *) 
module axi4stream_vip_v1_1_5_top #
  (
   parameter [31:0]  C_AXI4STREAM_SIGNAL_SET         = 32'h03,
   parameter integer C_AXI4STREAM_INTERFACE_MODE     = 1,  //master, slave and bypass
   parameter integer C_AXI4STREAM_DATA_WIDTH        = 8,
   parameter integer C_AXI4STREAM_USER_BITS_PER_BYTE = 0,
   parameter integer C_AXI4STREAM_ID_WIDTH          = 0,
   parameter integer C_AXI4STREAM_DEST_WIDTH        = 0,
   parameter integer C_AXI4STREAM_USER_WIDTH        = 0,
   parameter integer C_AXI4STREAM_HAS_ARESETN       = 0
   )
  (
   // System Signals
   input wire aclk,
   input wire aresetn,
   input wire aclken,

   // Slave side
   input  wire                              s_axis_tvalid,
   output wire                              s_axis_tready,
   input  wire [C_AXI4STREAM_DATA_WIDTH==0? 0:C_AXI4STREAM_DATA_WIDTH-1:0]     s_axis_tdata,
   input  wire [C_AXI4STREAM_DATA_WIDTH/8==0? 0:C_AXI4STREAM_DATA_WIDTH/8-1:0]   s_axis_tstrb,
   input  wire [C_AXI4STREAM_DATA_WIDTH/8==0? 0:C_AXI4STREAM_DATA_WIDTH/8-1:0]   s_axis_tkeep,
   input  wire                              s_axis_tlast,
   input  wire [C_AXI4STREAM_ID_WIDTH==0? 0:C_AXI4STREAM_ID_WIDTH-1:0]         s_axis_tid,
   input  wire [C_AXI4STREAM_DEST_WIDTH==0? 0:C_AXI4STREAM_DEST_WIDTH-1:0]     s_axis_tdest,
   input  wire [C_AXI4STREAM_USER_WIDTH==0? 0:C_AXI4STREAM_USER_WIDTH-1:0]     s_axis_tuser,

   // Master side
   output wire                              m_axis_tvalid,
   input  wire                              m_axis_tready,
   output wire [C_AXI4STREAM_DATA_WIDTH==0? 0:C_AXI4STREAM_DATA_WIDTH-1:0]     m_axis_tdata,
   output wire [C_AXI4STREAM_DATA_WIDTH/8==0? 0:C_AXI4STREAM_DATA_WIDTH/8-1:0]   m_axis_tstrb,
   output wire [C_AXI4STREAM_DATA_WIDTH/8==0? 0:C_AXI4STREAM_DATA_WIDTH/8-1:0]   m_axis_tkeep,
   output wire                              m_axis_tlast,
   output wire [C_AXI4STREAM_ID_WIDTH==0? 0:C_AXI4STREAM_ID_WIDTH-1:0]         m_axis_tid,
   output wire [C_AXI4STREAM_DEST_WIDTH==0? 0:C_AXI4STREAM_DEST_WIDTH-1:0]     m_axis_tdest,
   output wire [C_AXI4STREAM_USER_WIDTH==0? 0:C_AXI4STREAM_USER_WIDTH-1:0]     m_axis_tuser
     );

    //output for slave side, 0 or interface signal(mux)
  assign s_axis_tready =  (C_AXI4STREAM_INTERFACE_MODE ==1 )? m_axis_tready : {1'b0};

  //output for master side, 0 or interface(mux)
  assign m_axis_tvalid = (C_AXI4STREAM_INTERFACE_MODE ==1 )? s_axis_tvalid : {1'b0};
  assign m_axis_tdata  = (C_AXI4STREAM_INTERFACE_MODE ==1 )? s_axis_tdata : {C_AXI4STREAM_DATA_WIDTH==0? 1:C_AXI4STREAM_DATA_WIDTH{1'b0}};
  assign m_axis_tstrb  =(C_AXI4STREAM_INTERFACE_MODE ==1 )? s_axis_tstrb : {C_AXI4STREAM_DATA_WIDTH/8==0? 1:(C_AXI4STREAM_DATA_WIDTH/8){1'b0}};
  assign m_axis_tkeep  =  (C_AXI4STREAM_INTERFACE_MODE ==1 )? s_axis_tkeep : {C_AXI4STREAM_DATA_WIDTH/8==0? 1:(C_AXI4STREAM_DATA_WIDTH/8){1'b0}};
  assign m_axis_tlast  = (C_AXI4STREAM_INTERFACE_MODE ==1 )? s_axis_tlast : {1'b0};
  assign m_axis_tid    = (C_AXI4STREAM_INTERFACE_MODE ==1 )? s_axis_tid: {C_AXI4STREAM_ID_WIDTH==0? 1: C_AXI4STREAM_ID_WIDTH{1'b0}};
  assign m_axis_tdest  = (C_AXI4STREAM_INTERFACE_MODE ==1 )? s_axis_tdest : {(C_AXI4STREAM_DEST_WIDTH==0? 1: C_AXI4STREAM_DEST_WIDTH){1'b0}};
  assign m_axis_tuser  =  (C_AXI4STREAM_INTERFACE_MODE ==1 )? s_axis_tuser: {(C_AXI4STREAM_USER_WIDTH==0? 1: C_AXI4STREAM_USER_WIDTH){1'b0}}; 

endmodule : axi4stream_vip_v1_1_5_top


