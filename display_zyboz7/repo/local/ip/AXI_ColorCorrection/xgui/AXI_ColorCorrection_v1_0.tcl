# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  ipgui::add_param $IPINST -name "kAXI_DataWidth" -widget comboBox
  ipgui::add_param $IPINST -name "kColorWidth" -widget comboBox

}

proc update_PARAM_VALUE.kAXI_DataWidth { PARAM_VALUE.kAXI_DataWidth } {
	# Procedure called to update kAXI_DataWidth when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.kAXI_DataWidth { PARAM_VALUE.kAXI_DataWidth } {
	# Procedure called to validate kAXI_DataWidth
	return true
}

proc update_PARAM_VALUE.kColorWidth { PARAM_VALUE.kColorWidth } {
	# Procedure called to update kColorWidth when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.kColorWidth { PARAM_VALUE.kColorWidth } {
	# Procedure called to validate kColorWidth
	return true
}


proc update_MODELPARAM_VALUE.kAXI_DataWidth { MODELPARAM_VALUE.kAXI_DataWidth PARAM_VALUE.kAXI_DataWidth } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.kAXI_DataWidth}] ${MODELPARAM_VALUE.kAXI_DataWidth}
}

proc update_MODELPARAM_VALUE.kColorWidth { MODELPARAM_VALUE.kColorWidth PARAM_VALUE.kColorWidth } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.kColorWidth}] ${MODELPARAM_VALUE.kColorWidth}
}

