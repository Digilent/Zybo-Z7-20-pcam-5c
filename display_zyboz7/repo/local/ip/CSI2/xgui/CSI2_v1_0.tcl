# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "CSI2_Lane_width" -parent ${Page_0} -widget comboBox


}

proc update_PARAM_VALUE.CSI2_Lane_width { PARAM_VALUE.CSI2_Lane_width } {
	# Procedure called to update CSI2_Lane_width when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.CSI2_Lane_width { PARAM_VALUE.CSI2_Lane_width } {
	# Procedure called to validate CSI2_Lane_width
	return true
}


proc update_MODELPARAM_VALUE.CSI2_Lane_width { MODELPARAM_VALUE.CSI2_Lane_width PARAM_VALUE.CSI2_Lane_width } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.CSI2_Lane_width}] ${MODELPARAM_VALUE.CSI2_Lane_width}
}

