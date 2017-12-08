# Maximum targeted pixel clock frequency for dynamic video clock generator is 148.5 MHz.
# The MMCM outputs 5x this frequency for DVI serial clock, and is divided back by a BUFR.
# Period = 1/(5*148.5MHz) = 1.347 ns
create_clock -period 1.347 -name video_dynclk [get_pins -regexp .*video_dynclk/U0/Inst_mmcme2_drp/mmcm_adv_inst/CLKOUT0 -hierarchical]

# Workaround for FIFO XDC not getting applied
#set_false_path -through [get_pins system_i/MIPI_CSI_2_RX_0/U0/MIPI_CSI2_Rx_inst/LLP_inst/DataFIFO/s_aresetn] -to [get_pins -hierarchical -filter {NAME =~ system_i/MIPI_CSI_2_RX_0/U0/MIPI_CSI2_Rx_inst/LLP_inst/DataFIFO/*rstblk*/*PRE}]
#set_false_path -from [get_cells -hierarchical -filter {NAME =~ system_i/MIPI_CSI_2_RX_0/U0/MIPI_CSI2_Rx_inst/LLP_inst/DataFIFO/*rstblk*/*rst_reg_reg[*]}]

set_false_path -from [get_pins {system_i/MIPI_CSI_2_RX_0/U0/MIPI_CSI2_Rx_inst/LLP_inst/SyncSReset/SyncAsyncx/oSyncStages_reg[1]/C}] -to [get_pins system_i/MIPI_CSI_2_RX_0/U0/MIPI_CSI2_Rx_inst/LLP_inst/DataFIFO/U0/inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/ngwrdrst.grst.g7serrst.rst_rd_reg1_reg/PRE]
set_false_path -from [get_pins {system_i/MIPI_CSI_2_RX_0/U0/MIPI_CSI2_Rx_inst/LLP_inst/SyncSReset/SyncAsyncx/oSyncStages_reg[1]/C}] -to [get_pins system_i/MIPI_CSI_2_RX_0/U0/MIPI_CSI2_Rx_inst/LLP_inst/DataFIFO/U0/inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/ngwrdrst.grst.g7serrst.rst_rd_reg2_reg/PRE]

