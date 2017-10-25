# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "kAXI_DataWidth" -parent ${Page_0} -widget comboBox
  ipgui::add_param $IPINST -name "kBayerWidth" -parent ${Page_0} -widget comboBox
  ipgui::add_param $IPINST -name "kMaxSamplesPerClock" -parent ${Page_0} -widget comboBox
  ipgui::add_param $IPINST -name "kGammaFactor" -parent ${Page_0} -widget comboBox


}

proc update_PARAM_VALUE.kAXI_DataWidth { PARAM_VALUE.kAXI_DataWidth } {
	# Procedure called to update kAXI_DataWidth when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.kAXI_DataWidth { PARAM_VALUE.kAXI_DataWidth } {
	# Procedure called to validate kAXI_DataWidth
	return true
}

proc update_PARAM_VALUE.kBayerWidth { PARAM_VALUE.kBayerWidth } {
	# Procedure called to update kBayerWidth when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.kBayerWidth { PARAM_VALUE.kBayerWidth } {
	# Procedure called to validate kBayerWidth
	return true
}

proc update_PARAM_VALUE.kGammaFactor { PARAM_VALUE.kGammaFactor } {
	# Procedure called to update kGammaFactor when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.kGammaFactor { PARAM_VALUE.kGammaFactor } {
	# Procedure called to validate kGammaFactor
	return true
}

proc update_PARAM_VALUE.kMaxSamplesPerClock { PARAM_VALUE.kMaxSamplesPerClock } {
	# Procedure called to update kMaxSamplesPerClock when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.kMaxSamplesPerClock { PARAM_VALUE.kMaxSamplesPerClock } {
	# Procedure called to validate kMaxSamplesPerClock
	return true
}


proc update_MODELPARAM_VALUE.kAXI_DataWidth { MODELPARAM_VALUE.kAXI_DataWidth PARAM_VALUE.kAXI_DataWidth } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.kAXI_DataWidth}] ${MODELPARAM_VALUE.kAXI_DataWidth}
}

proc update_MODELPARAM_VALUE.kBayerWidth { MODELPARAM_VALUE.kBayerWidth PARAM_VALUE.kBayerWidth } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.kBayerWidth}] ${MODELPARAM_VALUE.kBayerWidth}
}

proc update_MODELPARAM_VALUE.kMaxSamplesPerClock { MODELPARAM_VALUE.kMaxSamplesPerClock PARAM_VALUE.kMaxSamplesPerClock } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.kMaxSamplesPerClock}] ${MODELPARAM_VALUE.kMaxSamplesPerClock}
}

proc update_MODELPARAM_VALUE.kGammaFactor { MODELPARAM_VALUE.kGammaFactor PARAM_VALUE.kGammaFactor } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.kGammaFactor}] ${MODELPARAM_VALUE.kGammaFactor}
}

