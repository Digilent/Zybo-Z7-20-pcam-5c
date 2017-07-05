create_clock -period 10.000 -name sysclk -waveform {0.000 5.000} [get_ports sysclk]
create_clock -period 10.000 -name s00_axi_aclk -waveform {0.000 5.000} [get_ports s00_axi_aclk]
create_clock -period 10.000 -name RxByteClkHS -waveform {0.000 5.000} [get_ports RxByteClkHS]
