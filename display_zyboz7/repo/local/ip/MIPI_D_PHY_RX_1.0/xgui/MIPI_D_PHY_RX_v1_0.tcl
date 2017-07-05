# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0" -display_name {Control}]
  set_property tooltip {AXI-Lite interface settings} ${Page_0}
  ipgui::add_param $IPINST -name "kGenerateAXIL" -parent ${Page_0}
  set C_S_AXI_LITE_DATA_WIDTH [ipgui::add_param $IPINST -name "C_S_AXI_LITE_DATA_WIDTH" -parent ${Page_0} -widget comboBox]
  set_property tooltip {Width of S_AXI data bus} ${C_S_AXI_LITE_DATA_WIDTH}
  set C_S_AXI_LITE_ADDR_WIDTH [ipgui::add_param $IPINST -name "C_S_AXI_LITE_ADDR_WIDTH" -parent ${Page_0}]
  set_property tooltip {Width of S_AXI address bus} ${C_S_AXI_LITE_ADDR_WIDTH}
  ipgui::add_param $IPINST -name "C_S_AXI_LITE_BASEADDR" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S_AXI_LITE_HIGHADDR" -parent ${Page_0}

  #Adding Page
  set Page_1 [ipgui::add_page $IPINST -name "Page 1" -display_name {D-PHY}]
  set_property tooltip {MIPI D-PHY} ${Page_1}
  set kGenerateMMCM [ipgui::add_param $IPINST -name "kGenerateMMCM" -parent ${Page_1}]
  set_property tooltip {Add MMCM to HS MIPI clock (for debug purposes)} ${kGenerateMMCM}
  ipgui::add_param $IPINST -name "kNoOfDataLanes" -parent ${Page_1} -widget comboBox
  ipgui::add_param $IPINST -name "kAddDelayClk_ps" -parent ${Page_1}
  ipgui::add_param $IPINST -name "kAddDelayData0_ps" -parent ${Page_1}
  ipgui::add_param $IPINST -name "kAddDelayData1_ps" -parent ${Page_1}


}

proc update_PARAM_VALUE.kAddDelayClk_ps { PARAM_VALUE.kAddDelayClk_ps } {
	# Procedure called to update kAddDelayClk_ps when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.kAddDelayClk_ps { PARAM_VALUE.kAddDelayClk_ps } {
	# Procedure called to validate kAddDelayClk_ps
	return true
}

proc update_PARAM_VALUE.kAddDelayData0_ps { PARAM_VALUE.kAddDelayData0_ps } {
	# Procedure called to update kAddDelayData0_ps when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.kAddDelayData0_ps { PARAM_VALUE.kAddDelayData0_ps } {
	# Procedure called to validate kAddDelayData0_ps
	return true
}

proc update_PARAM_VALUE.kAddDelayData1_ps { PARAM_VALUE.kAddDelayData1_ps } {
	# Procedure called to update kAddDelayData1_ps when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.kAddDelayData1_ps { PARAM_VALUE.kAddDelayData1_ps } {
	# Procedure called to validate kAddDelayData1_ps
	return true
}

proc update_PARAM_VALUE.kGenerateAXIL { PARAM_VALUE.kGenerateAXIL } {
	# Procedure called to update kGenerateAXIL when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.kGenerateAXIL { PARAM_VALUE.kGenerateAXIL } {
	# Procedure called to validate kGenerateAXIL
	return true
}

proc update_PARAM_VALUE.kGenerateMMCM { PARAM_VALUE.kGenerateMMCM } {
	# Procedure called to update kGenerateMMCM when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.kGenerateMMCM { PARAM_VALUE.kGenerateMMCM } {
	# Procedure called to validate kGenerateMMCM
	return true
}

proc update_PARAM_VALUE.kNoOfDataLanes { PARAM_VALUE.kNoOfDataLanes } {
	# Procedure called to update kNoOfDataLanes when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.kNoOfDataLanes { PARAM_VALUE.kNoOfDataLanes } {
	# Procedure called to validate kNoOfDataLanes
	return true
}

proc update_PARAM_VALUE.C_S_AXI_LITE_DATA_WIDTH { PARAM_VALUE.C_S_AXI_LITE_DATA_WIDTH } {
	# Procedure called to update C_S_AXI_LITE_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S_AXI_LITE_DATA_WIDTH { PARAM_VALUE.C_S_AXI_LITE_DATA_WIDTH } {
	# Procedure called to validate C_S_AXI_LITE_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S_AXI_LITE_ADDR_WIDTH { PARAM_VALUE.C_S_AXI_LITE_ADDR_WIDTH } {
	# Procedure called to update C_S_AXI_LITE_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S_AXI_LITE_ADDR_WIDTH { PARAM_VALUE.C_S_AXI_LITE_ADDR_WIDTH } {
	# Procedure called to validate C_S_AXI_LITE_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S_AXI_LITE_BASEADDR { PARAM_VALUE.C_S_AXI_LITE_BASEADDR } {
	# Procedure called to update C_S_AXI_LITE_BASEADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S_AXI_LITE_BASEADDR { PARAM_VALUE.C_S_AXI_LITE_BASEADDR } {
	# Procedure called to validate C_S_AXI_LITE_BASEADDR
	return true
}

proc update_PARAM_VALUE.C_S_AXI_LITE_HIGHADDR { PARAM_VALUE.C_S_AXI_LITE_HIGHADDR } {
	# Procedure called to update C_S_AXI_LITE_HIGHADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S_AXI_LITE_HIGHADDR { PARAM_VALUE.C_S_AXI_LITE_HIGHADDR } {
	# Procedure called to validate C_S_AXI_LITE_HIGHADDR
	return true
}


proc update_MODELPARAM_VALUE.C_S_AXI_LITE_DATA_WIDTH { MODELPARAM_VALUE.C_S_AXI_LITE_DATA_WIDTH PARAM_VALUE.C_S_AXI_LITE_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S_AXI_LITE_DATA_WIDTH}] ${MODELPARAM_VALUE.C_S_AXI_LITE_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S_AXI_LITE_ADDR_WIDTH { MODELPARAM_VALUE.C_S_AXI_LITE_ADDR_WIDTH PARAM_VALUE.C_S_AXI_LITE_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S_AXI_LITE_ADDR_WIDTH}] ${MODELPARAM_VALUE.C_S_AXI_LITE_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.kNoOfDataLanes { MODELPARAM_VALUE.kNoOfDataLanes PARAM_VALUE.kNoOfDataLanes } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.kNoOfDataLanes}] ${MODELPARAM_VALUE.kNoOfDataLanes}
}

proc update_MODELPARAM_VALUE.kGenerateMMCM { MODELPARAM_VALUE.kGenerateMMCM PARAM_VALUE.kGenerateMMCM } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.kGenerateMMCM}] ${MODELPARAM_VALUE.kGenerateMMCM}
}

proc update_MODELPARAM_VALUE.kGenerateAXIL { MODELPARAM_VALUE.kGenerateAXIL PARAM_VALUE.kGenerateAXIL } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.kGenerateAXIL}] ${MODELPARAM_VALUE.kGenerateAXIL}
}

proc update_MODELPARAM_VALUE.kAddDelayClk_ps { MODELPARAM_VALUE.kAddDelayClk_ps PARAM_VALUE.kAddDelayClk_ps } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.kAddDelayClk_ps}] ${MODELPARAM_VALUE.kAddDelayClk_ps}
}

proc update_MODELPARAM_VALUE.kAddDelayData0_ps { MODELPARAM_VALUE.kAddDelayData0_ps PARAM_VALUE.kAddDelayData0_ps } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.kAddDelayData0_ps}] ${MODELPARAM_VALUE.kAddDelayData0_ps}
}

proc update_MODELPARAM_VALUE.kAddDelayData1_ps { MODELPARAM_VALUE.kAddDelayData1_ps PARAM_VALUE.kAddDelayData1_ps } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.kAddDelayData1_ps}] ${MODELPARAM_VALUE.kAddDelayData1_ps}
}

