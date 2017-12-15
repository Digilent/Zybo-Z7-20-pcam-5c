# Run this script to create the Vivado project files NEXT TO THIS script
# If ::create_path global variable is set, the project is created under that path instead of the working dir

if {[info exists ::create_path]} {
	set dest_dir $::create_path
} else {
	set dest_dir [file normalize [file dirname [info script]]]
}
puts "INFO: Creating new project in $dest_dir"
cd $dest_dir

# Set the reference directory for source file relative paths (by default the value is script directory path)
set proj_name "display_zyboz7"
set part "xc7z020clg400-1"

# Set the reference directory for source file relative paths (by default the value is script directory path)
set origin_dir ".."

# Set the directory path for the original project from where this script was exported
set orig_proj_dir "[file normalize "$origin_dir/proj"]"

set src_dir $origin_dir/src
set repo_local_dir $origin_dir/repo
set repo_global_dir $origin_dir/../common-repo

# Create project
create_project $proj_name $dest_dir

# Set the directory path for the new project
set proj_dir [get_property directory [current_project]]

# Set project properties
set obj [get_projects $proj_name]
set_property "default_lib" "xil_defaultlib" $obj
set_property "part" $part $obj
set_property "simulator_language" "Mixed" $obj
set_property "target_language" "VHDL" $obj

# Create 'sources_1' fileset (if not found)
if {[string equal [get_filesets -quiet sources_1] ""]} {
  create_fileset -srcset sources_1
}

# Create 'constrs_1' fileset (if not found)
if {[string equal [get_filesets -quiet constrs_1] ""]} {
  create_fileset -constrset constrs_1
}

# Set IP repository paths
set obj [get_filesets sources_1]
set_property "ip_repo_paths" "[file normalize $repo_local_dir] [file normalize $repo_global_dir]" $obj

# Add conventional sources
add_files -quiet $src_dir/hdl

# Add IPs
add_files -quiet [glob -nocomplain ../src/ip/*.xci]

# Add constraints
add_files -fileset constrs_1 -quiet $src_dir/constraints

# Refresh IP Repositories
update_ip_catalog

# Create 'synth_1' run (if not found)
if {[string equal [get_runs -quiet synth_1] ""]} {
  create_run -name synth_1 -part $part -flow {Vivado Synthesis 2016} -strategy "Vivado Synthesis Defaults" -constrset constrs_1
} else {
  set_property strategy "Vivado Synthesis Defaults" [get_runs synth_1]
  set_property flow "Vivado Synthesis 2016" [get_runs synth_1]
}
set obj [get_runs synth_1]
set_property "part" $part $obj

# set the current synth run
current_run -synthesis [get_runs synth_1]

# Create 'impl_1' run (if not found)
if {[string equal [get_runs -quiet impl_1] ""]} {
  create_run -name impl_1 -part $part -flow {Vivado Implementation 2016} -strategy "Vivado Implementation Defaults" -constrset constrs_1 -parent_run synth_1
} else {
  set_property strategy "Vivado Implementation Defaults" [get_runs impl_1]
  set_property flow "Vivado Implementation 2016" [get_runs impl_1]
}
set obj [get_runs impl_1]
set_property "part" $part $obj
# Workaround for missing ILA timing constraints
#set_property STEPS.OPT_DESIGN.TCL.POST "[file normalize $src_dir/others/ila_timing_workaround.tcl]" [get_runs impl_1]

# set the current impl run
current_run -implementation [get_runs impl_1]

puts "INFO: Project created:$proj_name"

# Comment the following section, if there is no block design
# Create block design
source $origin_dir/src/bd/system.tcl

# Generate the wrapper
set design_name [get_bd_designs]
add_files -norecurse [make_wrapper -files [get_files $design_name.bd] -top -force]

set obj [get_filesets sources_1]
set_property "top" "${design_name}_wrapper" $obj

puts "INFO: Block design created: $design_name.bd"