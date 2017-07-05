# setup, hold = 0.15*UI = 0.75ns
set_input_delay -clock [get_clocks -of_objects [get_ports dphy_clk_hs_p]] -clock_fall -min -add_delay 0.750 [get_ports {dphy_data_hs_n[*]}]
set_input_delay -clock [get_clocks -of_objects [get_ports dphy_clk_hs_p]] -clock_fall -max -add_delay 4.250 [get_ports {dphy_data_hs_n[*]}]
set_input_delay -clock [get_clocks -of_objects [get_ports dphy_clk_hs_p]] -min -add_delay 0.750 [get_ports {dphy_data_hs_n[*]}]
set_input_delay -clock [get_clocks -of_objects [get_ports dphy_clk_hs_p]] -max -add_delay 4.250 [get_ports {dphy_data_hs_n[*]}]
set_input_delay -clock [get_clocks -of_objects [get_ports dphy_clk_hs_p]] -clock_fall -min -add_delay 0.750 [get_ports {dphy_data_hs_p[*]}]
set_input_delay -clock [get_clocks -of_objects [get_ports dphy_clk_hs_p]] -clock_fall -max -add_delay 4.250 [get_ports {dphy_data_hs_p[*]}]
set_input_delay -clock [get_clocks -of_objects [get_ports dphy_clk_hs_p]] -min -add_delay 0.750 [get_ports {dphy_data_hs_p[*]}]
set_input_delay -clock [get_clocks -of_objects [get_ports dphy_clk_hs_p]] -max -add_delay 4.250 [get_ports {dphy_data_hs_p[*]}]