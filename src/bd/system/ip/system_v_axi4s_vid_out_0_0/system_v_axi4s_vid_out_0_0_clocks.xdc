
#------------------------------------------------------------------------------#
#                         Native FIFO Constraints                              #
#------------------------------------------------------------------------------#
set fg_root   {COUPLER_INST/FIFO_INST}
set wr_clock  [get_clocks -of_objects [get_ports aclk]]
set rd_clock  [get_clocks -of_objects [get_ports vid_io_out_clk]]

# Set max delay on cross clock domain path for Block RAM based FIFO
set_max_delay -from [get_cells ${fg_root}/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/*rd_pntr_gc_reg[*]] -to [get_cells ${fg_root}/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/*gsync_stage[*].wr_stg_inst/Q_reg_reg[*]] -datapath_only [get_property -min PERIOD $rd_clock]
set_max_delay -from [get_cells ${fg_root}/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/*wr_pntr_gc_reg[*]] -to [get_cells ${fg_root}/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/*gsync_stage[*].rd_stg_inst/Q_reg_reg[*]] -datapath_only [get_property -min PERIOD $wr_clock]

# Set false path on the reset synchronizers
set_false_path -through [get_ports aresetn] -to [get_pins -hierarchical -filter {NAME =~ */COUPLER_INST/FIFO_INST/inst_fifo_gen/gconvfifo.rf/grf.rf/*rstblk*/*PRE*}]
set_false_path -through [get_ports vid_io_out_reset] -to [get_pins -hierarchical -filter {NAME =~ */COUPLER_INST/FIFO_INST/inst_fifo_gen/gconvfifo.rf/grf.rf/*rstblk*/*PRE*}]
set_false_path -from [get_cells -hierarchical -filter {NAME =~ */COUPLER_INST/FIFO_INST/inst_fifo_gen/gconvfifo.rf/grf.rf/rstblk/*rst_reg_reg[*]}]

