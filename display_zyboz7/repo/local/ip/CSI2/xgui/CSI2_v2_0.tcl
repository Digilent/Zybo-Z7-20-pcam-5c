# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  ipgui::add_page $IPINST -name "Page 0"

  ipgui::add_param $IPINST -name "Lane_width" -widget comboBox
  ipgui::add_param $IPINST -name "C_AXI_DATA_WIDTH"
  ipgui::add_param $IPINST -name "C_AXI_ADDR_WIDTH"
  ipgui::add_param $IPINST -name "AXI_interface"

}

proc update_PARAM_VALUE.AXI_interface { PARAM_VALUE.AXI_interface } {
	# Procedure called to update AXI_interface when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.AXI_interface { PARAM_VALUE.AXI_interface } {
	# Procedure called to validate AXI_interface
	return true
}

proc update_PARAM_VALUE.C_AXI_ADDR_WIDTH { PARAM_VALUE.C_AXI_ADDR_WIDTH } {
	# Procedure called to update C_AXI_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_AXI_ADDR_WIDTH { PARAM_VALUE.C_AXI_ADDR_WIDTH } {
	# Procedure called to validate C_AXI_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.C_AXI_DATA_WIDTH { PARAM_VALUE.C_AXI_DATA_WIDTH } {
	# Procedure called to update C_AXI_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_AXI_DATA_WIDTH { PARAM_VALUE.C_AXI_DATA_WIDTH } {
	# Procedure called to validate C_AXI_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.Lane_width { PARAM_VALUE.Lane_width } {
	# Procedure called to update Lane_width when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Lane_width { PARAM_VALUE.Lane_width } {
	# Procedure called to validate Lane_width
	return true
}


proc update_MODELPARAM_VALUE.Lane_width { MODELPARAM_VALUE.Lane_width PARAM_VALUE.Lane_width } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.Lane_width}] ${MODELPARAM_VALUE.Lane_width}
}

proc update_MODELPARAM_VALUE.C_AXI_DATA_WIDTH { MODELPARAM_VALUE.C_AXI_DATA_WIDTH PARAM_VALUE.C_AXI_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_AXI_DATA_WIDTH}] ${MODELPARAM_VALUE.C_AXI_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_AXI_ADDR_WIDTH { MODELPARAM_VALUE.C_AXI_ADDR_WIDTH PARAM_VALUE.C_AXI_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_AXI_ADDR_WIDTH}] ${MODELPARAM_VALUE.C_AXI_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.AXI_interface { MODELPARAM_VALUE.AXI_interface PARAM_VALUE.AXI_interface } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.AXI_interface}] ${MODELPARAM_VALUE.AXI_interface}
}

