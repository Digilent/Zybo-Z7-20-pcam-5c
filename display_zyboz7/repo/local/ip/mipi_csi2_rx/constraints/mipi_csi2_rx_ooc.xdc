create_clock -period 10.000 -name video_aclk -waveform {0.000 5.000} [get_ports video_aclk]
create_clock -period 10.000 -name s_axil_aclk -waveform {0.000 5.000} [get_ports s_axil_aclk]
create_clock -period 10.000 -name RxByteClkHS -waveform {0.000 5.000} [get_ports RxByteClkHS]
