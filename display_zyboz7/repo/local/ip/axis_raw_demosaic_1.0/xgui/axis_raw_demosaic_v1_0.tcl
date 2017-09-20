# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  set C_S_AXIS_TDATA_WIDTH [ipgui::add_param $IPINST -name "C_S_AXIS_TDATA_WIDTH" -parent ${Page_0} -widget comboBox]
  set_property tooltip {AXI4Stream sink: Data Width} ${C_S_AXIS_TDATA_WIDTH}
  ipgui::add_param $IPINST -name "C_RAW_WIDTH" -parent ${Page_0} -widget comboBox
  ipgui::add_param $IPINST -name "C_S_MAX_SAMPLES_PER_CLOCK" -parent ${Page_0} -widget comboBox


}

proc update_PARAM_VALUE.C_RAW_WIDTH { PARAM_VALUE.C_RAW_WIDTH } {
	# Procedure called to update C_RAW_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_RAW_WIDTH { PARAM_VALUE.C_RAW_WIDTH } {
	# Procedure called to validate C_RAW_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S_MAX_SAMPLES_PER_CLOCK { PARAM_VALUE.C_S_MAX_SAMPLES_PER_CLOCK } {
	# Procedure called to update C_S_MAX_SAMPLES_PER_CLOCK when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S_MAX_SAMPLES_PER_CLOCK { PARAM_VALUE.C_S_MAX_SAMPLES_PER_CLOCK } {
	# Procedure called to validate C_S_MAX_SAMPLES_PER_CLOCK
	return true
}

proc update_PARAM_VALUE.C_S_AXIS_TDATA_WIDTH { PARAM_VALUE.C_S_AXIS_TDATA_WIDTH } {
	# Procedure called to update C_S_AXIS_TDATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S_AXIS_TDATA_WIDTH { PARAM_VALUE.C_S_AXIS_TDATA_WIDTH } {
	# Procedure called to validate C_S_AXIS_TDATA_WIDTH
	return true
}


proc update_MODELPARAM_VALUE.C_S_AXIS_TDATA_WIDTH { MODELPARAM_VALUE.C_S_AXIS_TDATA_WIDTH PARAM_VALUE.C_S_AXIS_TDATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S_AXIS_TDATA_WIDTH}] ${MODELPARAM_VALUE.C_S_AXIS_TDATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_RAW_WIDTH { MODELPARAM_VALUE.C_RAW_WIDTH PARAM_VALUE.C_RAW_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_RAW_WIDTH}] ${MODELPARAM_VALUE.C_RAW_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S_MAX_SAMPLES_PER_CLOCK { MODELPARAM_VALUE.C_S_MAX_SAMPLES_PER_CLOCK PARAM_VALUE.C_S_MAX_SAMPLES_PER_CLOCK } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S_MAX_SAMPLES_PER_CLOCK}] ${MODELPARAM_VALUE.C_S_MAX_SAMPLES_PER_CLOCK}
}

