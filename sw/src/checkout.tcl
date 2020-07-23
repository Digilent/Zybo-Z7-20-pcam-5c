# Run this script to create the Vitis workspace in the <repo>/ws/ sub-directory
# If ::create_path global variable is set, the project is created under that path instead of ws/

set script [info script] 
set script_dir [file normalize [file dirname $script]]

puts "INFO: Running $script."

if {[info exists ::create_path]} {
	set dest_dir $::create_path
} else {
	set dest_dir [file normalize $script_dir/../ws]
}

set src_dir [file normalize $script_dir/../src]

puts "INFO: Targeting $dest_dir for workspace creation."

# Check workspace for existing sub-dirs
if { [llength [glob -nocomplain -types d $dest_dir/*]] != 0 } {
	# If the workspace is already set to the destination directory
	if { [file normalize [getws]] == [file normalize $dest_dir] } {
		# Check if the workspace is empty, which it will be if Vitis is launched in an empty directory
		if { [catch {app list} ] == 0 || [catch {platform list} ] == 0 || [catch {domain list} ] == 0 || [catch {library list} ] == 0 } {
			puts "WARNING: workspace is not empty. Close Vitis or XSCT to relinquish control and run the cleanup scripts. Re-run create_workspace.tcl afterwards."
			flush stdout;
			return -code error "Workspace already exists and needs to be closed first"
		}
	} else {
		puts -nonewline "WARNING: workspace is not empty. Continuing might cause naming conflicts and workspace creation to fail. Recommend running the cleanup scripts before continuing. Continue? (y/n):"
		while 1 {
			flush stdout;
			if {[gets stdin input] < 0 && [eof stdin]} {
				return -code error "end of file detected"
			}
			if { [regexp -nocase -line -- {^(y|n|yes|no)$} $input] } {
				break
			}
			puts -nonewline "Continue? (y/n):"
		}
		if { [string equal -nocase -length 1 $input "n"] } {
			return -code ok
		}
	}		
}

# Change directory
set popd [pwd]
cd $dest_dir

catch {
	setws -switch $dest_dir

	# Get all *.tcl files in src_dir recursively and sort them by integer prefix
	proc deep_traverse {base glob} {
		set files [list]

		foreach d [glob -nocomplain -types d -directory $base *] {
			lappend files {*}[deep_traverse $d $glob]
		}
		foreach f [glob -nocomplain -types f -directory $base -- $glob] {
			lappend files [file normalize $f]
		}
		return $files
	}

	proc sort_by_fileprefix {file1 file2} {
		set i1 [scan [file tail $file1] "%d"]
		set i2 [scan [file tail $file2] "%d"]

		return [expr $i1 > $i2]
	}

	set scripts [deep_traverse $src_dir "*.tcl"]
	# Self should be there
	set selfs [lsearch -all $scripts [file normalize $script]]
	if { [llength $selfs] eq 0 } {
		return -code error "ERROR: Self not found while deep searching $src_dir"
	}
	# Remove all instances of self to avoid recursive call below
	foreach idx $selfs {
		set scripts [lreplace $scripts $idx $idx]
	}
	# Order by integer prefix
	set ordered_scripts [lsort -command sort_by_fileprefix $scripts]

	puts "INFO: Found the following subscripts:"
	foreach s $ordered_scripts {
		puts $s
	}

	# Source each subscript in order
	foreach s $ordered_scripts {
		source $s
	}

} result options

puts "Changing back working dir to: $popd"
cd $popd

return -options $options $result
