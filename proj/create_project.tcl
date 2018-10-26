# Run this script to create the Vivado project files NEXT TO THIS script
# If ::create_path global variable is set, the project is created under that path instead of the working dir

# Project specific settings. These must be updated for each project.
set proj_name "pcam-5c"

if {[info exists ::create_path]} {
	set dest_dir $::create_path
} else {
	set dest_dir [file normalize [file dirname [info script]]]
}
puts "INFO: Creating new project in $dest_dir"
cd $dest_dir

set part "xc7z020clg400-1"
#set brd_part ""

# Set the reference directory for source file relative paths (by default the value is script directory path)
set origin_dir ".."

# Set the directory path for the original project from where this script was exported
set orig_proj_dir "[file normalize "$origin_dir/proj"]"

set src_dir $origin_dir/src
set repo_dir $origin_dir/repo

# # Set the board repo
# # Uncomment if distributing board files with project in the "repo/board_files" folder.
# # This is currently untested. It intends to also keep any existing board repo paths, since this is a global Vivado setting (not project specific.
# # Ideally, if the project is closed, and then a new project is created (without closing Vivado), this should still be able to see a board repo specified in init.tcl.
#set_param board.repoPaths "[file normalize "$repo_dir/board_files"]"

# Create project
create_project $proj_name $dest_dir

# Set the directory path for the new project
set proj_dir [get_property directory [current_project]]

# Set project properties
set obj [get_projects $proj_name]
set_property "default_lib" "xil_defaultlib" $obj
set_property "part" $part $obj
#set_property "board_part" $brd_part $obj
set_property "simulator_language" "Mixed" $obj
set_property "target_language" "VHDL" $obj

# Uncomment the following 3 lines to greatly increase build speed while working with IP cores (and/or block diagrams)
set_property "corecontainer.enable" "0" $obj
set_property "ip_cache_permissions" "read write" $obj
set_property "ip_output_repo" "[file normalize "$origin_dir/repo/cache"]" $obj

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
set_property "ip_repo_paths" "[file normalize $repo_dir]" $obj

# Refresh IP Repositories
update_ip_catalog -rebuild

# Add conventional sources
add_files -quiet $src_dir/hdl

# Add IPs
# TODO: handle IP containers files
add_files -quiet [glob -nocomplain ../src/ip/*/*.xci]

# Add constraints
add_files -fileset constrs_1 -quiet $src_dir/constraints

# Create 'synth_1' run (if not found)
if {[string equal [get_runs -quiet synth_1] ""]} {
  create_run -name synth_1 -part $part -flow {Vivado Synthesis 2016} -strategy "Vivado Synthesis Defaults" -constrset constrs_1
} else {
  set_property strategy "Vivado Synthesis Defaults" [get_runs synth_1]
  set_property flow "Vivado Synthesis 2016" [get_runs synth_1]
}
set obj [get_runs synth_1]
set_property "part" $part $obj
set_property "steps.synth_design.args.flatten_hierarchy" "none" $obj
set_property "steps.synth_design.args.directive" "RuntimeOptimized" $obj
set_property "steps.synth_design.args.fsm_extraction" "off" $obj

# set the current synth run
current_run -synthesis [get_runs synth_1]

# Create 'impl_1' run (if not found)
if {[string equal [get_runs -quiet impl_1] ""]} {
  create_run -name impl_1 -part $part -flow {Vivado Implementation 2016} -strategy "Performance_Explore" -constrset constrs_1 -parent_run synth_1
} else {
  set_property strategy "Performance_Explore" [get_runs impl_1]
  set_property flow "Vivado Implementation 2016" [get_runs impl_1]
}
set obj [get_runs impl_1]
set_property "part" $part $obj
set_property "steps.opt_design.args.directive" "RuntimeOptimized" $obj
set_property "steps.place_design.args.directive" "RuntimeOptimized" $obj
set_property "steps.route_design.args.directive" "RuntimeOptimized" $obj

# set the current impl run
current_run -implementation [get_runs impl_1]

puts "INFO: Project created:$proj_name"

# Comment the rest of this script if there is no block design
# Note that this script currently only supports a single block diagram

# Uncomment this if building the block diagram from a tcl
# Create block design
# source $origin_dir/src/bd/system.tcl

# Uncomment this block if importing an existing block diagram project
# Import block design if it exists
set bd_list [glob -nocomplain $src_dir/bd/*/*.bd]
if {[llength $bd_list] != 0} {
  add_files -norecurse -quiet -fileset sources_1 [glob -nocomplain $src_dir/bd/*/*.bd]
  open_bd_design [glob -nocomplain $src_dir/bd/*/*.bd]
  set design_name [glob -nocomplain -tails -types d -dir $src_dir/bd/ *]
  set file "$origin_dir/src/bd/$design_name/$design_name.bd"
  set file [file normalize $file]
  set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
  if { ![get_property "is_locked" $file_obj] } {
    set_property "synth_checkpoint_mode" "Hierarchical" $file_obj
  }
 
  # Upgrade all IPs to their latest version
  upgrade_ip [get_ips]
 
  # Generate the wrapper 
  set design_name [glob -nocomplain -tails -types d -dir $src_dir/bd/ *]
  add_files -norecurse [make_wrapper -files [get_files $design_name.bd] -top -force]

  set obj [get_filesets sources_1]
  set_property "top" "${design_name}_wrapper" $obj
}

set sdk_dir $origin_dir/sdk

set hw_list [glob -nocomplain $sdk_dir/*hw_platform*]
if {[llength $hw_list] != 0} {
  foreach hw_plat $hw_list {
	file delete -force $hw_plat
  }
}

set sdk_list [glob -nocomplain $sdk_dir/*]
set sdk_list [lsearch -inline -all -not -exact $sdk_list "../sdk/.keep"]
if {[llength $sdk_list] != 0} {
	exec xsct -eval "setws -switch ../sdk; importproject ../sdk"
}
# 
# 
# puts "INFO: Block design ready: $design_name.bd"