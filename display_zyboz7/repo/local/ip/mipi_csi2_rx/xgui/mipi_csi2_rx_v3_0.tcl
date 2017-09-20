
# Loading additional proc with user specified bodies to compute parameter values.
source [file join [file dirname [file dirname [info script]]] gui/mipi_csi2_rx_v3_0.gtcl]

# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "C_HAS_AXI4_LITE" -parent ${Page_0}
  set kLaneCount [ipgui::add_param $IPINST -name "kLaneCount" -parent ${Page_0} -widget comboBox]
  set_property tooltip {How many lanes does the device have} ${kLaneCount}
  set kTargetDT [ipgui::add_param $IPINST -name "kTargetDT" -parent ${Page_0} -widget comboBox]
  set_property tooltip {Packets will be filtered for the data type chosen here, and the rest discarded} ${kTargetDT}
  ipgui::add_param $IPINST -name "C_AXIL_ADDR_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_AXIL_DATA_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXIS_COMPONENT_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXIS_TDATA_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_MAX_SAMPLES_PER_CLOCK" -parent ${Page_0}


}

proc update_PARAM_VALUE.C_AXIL_ADDR_WIDTH { PARAM_VALUE.C_AXIL_ADDR_WIDTH PARAM_VALUE.C_HAS_AXI4_LITE } {
	# Procedure called to update C_AXIL_ADDR_WIDTH when any of the dependent parameters in the arguments change
	
	set C_AXIL_ADDR_WIDTH ${PARAM_VALUE.C_AXIL_ADDR_WIDTH}
	set C_HAS_AXI4_LITE ${PARAM_VALUE.C_HAS_AXI4_LITE}
	set values(C_HAS_AXI4_LITE) [get_property value $C_HAS_AXI4_LITE]
	if { [gen_USERPARAMETER_C_AXIL_ADDR_WIDTH_ENABLEMENT $values(C_HAS_AXI4_LITE)] } {
		set_property enabled true $C_AXIL_ADDR_WIDTH
	} else {
		set_property enabled false $C_AXIL_ADDR_WIDTH
	}
}

proc validate_PARAM_VALUE.C_AXIL_ADDR_WIDTH { PARAM_VALUE.C_AXIL_ADDR_WIDTH } {
	# Procedure called to validate C_AXIL_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.C_AXIL_DATA_WIDTH { PARAM_VALUE.C_AXIL_DATA_WIDTH PARAM_VALUE.C_HAS_AXI4_LITE } {
	# Procedure called to update C_AXIL_DATA_WIDTH when any of the dependent parameters in the arguments change
	
	set C_AXIL_DATA_WIDTH ${PARAM_VALUE.C_AXIL_DATA_WIDTH}
	set C_HAS_AXI4_LITE ${PARAM_VALUE.C_HAS_AXI4_LITE}
	set values(C_HAS_AXI4_LITE) [get_property value $C_HAS_AXI4_LITE]
	if { [gen_USERPARAMETER_C_AXIL_DATA_WIDTH_ENABLEMENT $values(C_HAS_AXI4_LITE)] } {
		set_property enabled true $C_AXIL_DATA_WIDTH
	} else {
		set_property enabled false $C_AXIL_DATA_WIDTH
	}
}

proc validate_PARAM_VALUE.C_AXIL_DATA_WIDTH { PARAM_VALUE.C_AXIL_DATA_WIDTH } {
	# Procedure called to validate C_AXIL_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_HAS_AXI4_LITE { PARAM_VALUE.C_HAS_AXI4_LITE } {
	# Procedure called to update C_HAS_AXI4_LITE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HAS_AXI4_LITE { PARAM_VALUE.C_HAS_AXI4_LITE } {
	# Procedure called to validate C_HAS_AXI4_LITE
	return true
}

proc update_PARAM_VALUE.C_M_AXIS_COMPONENT_WIDTH { PARAM_VALUE.C_M_AXIS_COMPONENT_WIDTH } {
	# Procedure called to update C_M_AXIS_COMPONENT_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXIS_COMPONENT_WIDTH { PARAM_VALUE.C_M_AXIS_COMPONENT_WIDTH } {
	# Procedure called to validate C_M_AXIS_COMPONENT_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXIS_TDATA_WIDTH { PARAM_VALUE.C_M_AXIS_TDATA_WIDTH } {
	# Procedure called to update C_M_AXIS_TDATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXIS_TDATA_WIDTH { PARAM_VALUE.C_M_AXIS_TDATA_WIDTH } {
	# Procedure called to validate C_M_AXIS_TDATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_MAX_SAMPLES_PER_CLOCK { PARAM_VALUE.C_M_MAX_SAMPLES_PER_CLOCK } {
	# Procedure called to update C_M_MAX_SAMPLES_PER_CLOCK when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_MAX_SAMPLES_PER_CLOCK { PARAM_VALUE.C_M_MAX_SAMPLES_PER_CLOCK } {
	# Procedure called to validate C_M_MAX_SAMPLES_PER_CLOCK
	return true
}

proc update_PARAM_VALUE.kLaneCount { PARAM_VALUE.kLaneCount } {
	# Procedure called to update kLaneCount when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.kLaneCount { PARAM_VALUE.kLaneCount } {
	# Procedure called to validate kLaneCount
	return true
}

proc update_PARAM_VALUE.kTargetDT { PARAM_VALUE.kTargetDT } {
	# Procedure called to update kTargetDT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.kTargetDT { PARAM_VALUE.kTargetDT } {
	# Procedure called to validate kTargetDT
	return true
}


proc update_MODELPARAM_VALUE.kTargetDT { MODELPARAM_VALUE.kTargetDT PARAM_VALUE.kTargetDT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.kTargetDT}] ${MODELPARAM_VALUE.kTargetDT}
}

proc update_MODELPARAM_VALUE.kLaneCount { MODELPARAM_VALUE.kLaneCount PARAM_VALUE.kLaneCount } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.kLaneCount}] ${MODELPARAM_VALUE.kLaneCount}
}

proc update_MODELPARAM_VALUE.C_M_AXIS_COMPONENT_WIDTH { MODELPARAM_VALUE.C_M_AXIS_COMPONENT_WIDTH PARAM_VALUE.C_M_AXIS_COMPONENT_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXIS_COMPONENT_WIDTH}] ${MODELPARAM_VALUE.C_M_AXIS_COMPONENT_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXIS_TDATA_WIDTH { MODELPARAM_VALUE.C_M_AXIS_TDATA_WIDTH PARAM_VALUE.C_M_AXIS_TDATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXIS_TDATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXIS_TDATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_MAX_SAMPLES_PER_CLOCK { MODELPARAM_VALUE.C_M_MAX_SAMPLES_PER_CLOCK PARAM_VALUE.C_M_MAX_SAMPLES_PER_CLOCK } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_MAX_SAMPLES_PER_CLOCK}] ${MODELPARAM_VALUE.C_M_MAX_SAMPLES_PER_CLOCK}
}

proc update_MODELPARAM_VALUE.C_HAS_AXI4_LITE { MODELPARAM_VALUE.C_HAS_AXI4_LITE PARAM_VALUE.C_HAS_AXI4_LITE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HAS_AXI4_LITE}] ${MODELPARAM_VALUE.C_HAS_AXI4_LITE}
}

proc update_MODELPARAM_VALUE.C_AXIL_DATA_WIDTH { MODELPARAM_VALUE.C_AXIL_DATA_WIDTH PARAM_VALUE.C_AXIL_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_AXIL_DATA_WIDTH}] ${MODELPARAM_VALUE.C_AXIL_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_AXIL_ADDR_WIDTH { MODELPARAM_VALUE.C_AXIL_ADDR_WIDTH PARAM_VALUE.C_AXIL_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_AXIL_ADDR_WIDTH}] ${MODELPARAM_VALUE.C_AXIL_ADDR_WIDTH}
}

