----------------------------
-- Hardware
----------------------------
To re-create a Vivado project:
0. Make sure the directory does not already contain a project with the same name. 
   You may run cleanup.cmd to delete everything except the utility files.
1. Open either the Vivado Tcl shell or the Tcl Window in Vivado GUI 
2. cd to the directory where you want the project created. 
   For example: <repo>/proj
3. run: source ./create_project.tcl

To make sure changes to the project are checked into git:
	Export hardware with bitstream to ./hw_handoff/.
	Export block design to ./src/bd/, if there is one.
	If there are changes to the Vivado project settings, go to File -> 
    Write Project TCL. Copy relevant TCL commands to proj/create_project.tcl. 
    This is the only project-relevant file checked into Git.
	Store all the project sources in src/. Design files go into src/hdl/, 
    constraints into src/constraints.
	Any IPs instantiated OUTSIDE BLOCK DESIGNS need to be created in /src/ip. 
    Use the IP Location button in the IP customization wizard to specify a 
    target directory. Only *.xci and *.prj files are checked in from here.
	If using MIG outside block designs, manually move the MIG IP to the 
    src/ip folder.

----------------------------
-- Software
----------------------------
Workspace folder: ./sdk
The workspace folder is versioned on Git without workspace information. This means
that when first cloning the repository and opening the ./sdk folder as workspace, it
will be empty in SDK. The workspace needs to be re-built locally by manually importing projects, BSPs and
hardware platforms. Once this is done locally the first time, subsequent git pulls will not
touch the workspace. New imports will only be necessary when new projects appear.
Use File -> Import -> Existing projects into Workspace and select ./sdk as root directory. Check the
projects you want imported and make sure "Copy projects into workspace" is unchecked.
"Internal Error" during BSP import can be ignored. Just re-generate BSPs.

Projects:
   bootloader:    To be added to the bitstream from the hw_platform. Runs from BRAM. Loads SREC image
                  from QSPI Flash address 0x01000000, and jumps to it.
   bist:          To be loaded by BT over JTAG.
   ce_test:       To be loaded by BT over JTAG.
   demo:          To be converted to SREC and burned to QSPI Flash at address 0x01000000. Project includes custom
                  build step to generate SREC image automatically.
   
./bin/create_download_bit.cmd:   system.bit + bootloader.elf = download.bit
./bin/create_flash_mcs.tcl:      download.bit + demo.elf.srec = atlys2_demo.mcs


 