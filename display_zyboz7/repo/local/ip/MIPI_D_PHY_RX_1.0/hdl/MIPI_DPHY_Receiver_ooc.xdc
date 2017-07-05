# Example 200Mbps data rate per lane UI = 5ns
create_clock -period 10.000 -name dphy_clk_hs_p -waveform {0.000 5.000} [get_ports dphy_clk_hs_p]