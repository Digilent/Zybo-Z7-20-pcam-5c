# digilent-vitis-scripts
This repository contains a set of scripts for managing Vitis workspaces with git. 

----
## Quick Checkout Guide

When cloning this repository, use the command `git clone --recursive <URL>` to pick up any submodules this repository may use to bring in additional source files. Alternatively initialize and update the repository's submodules after cloning (`git submodule update --init` within the repo directory).

Some Digilent Github repositories also require that you check out a specific demo branch. Whenever checking out a demo branch, submodules should be reupdated and reinitialized (`git submodule update --init`, as above).

When launching Vitis, whether through Vivado's *Tools* menu, or on its own, the Vitis workspace should be set to the repository's sw/ws folder.

The scripts present in this repository can be run through the use of the Xilinx Software Command-Line Tool (XSCT), which is built into Vitis. This tool can be opened within the Vitis GUI through the *Xilinx > XSCT Console* option in the menu bar at the top of the window. Upon launch, XSCT's current working directory is set to the Vitis install directory. To recreate the workspace, enter the following command into the XSCT Console:

`source [getws]/../src/checkout.tcl`

This process will populate the workspace with projects containing sources from the parent repository's src folder, configure those projects, and fully build them. This may take several minutes to fully complete. When the script is finished running, the `xsct%` prompt wil reappear in the tan XSCT Process pane. From this point, the demo can be programmed onto a board, sources can be viewed, and modified, as desired.

**Note:** *The current working directory is irrelevant to the functionality of the scripts in this submodule.*

----
## Quick Checkin Guide

**Important:** *The checkin.tcl script should generally only be used for the first time checking a project into version control. For further commits, new files should be manually copied into the repository's src directory. Application source files (and linker scripts) are soft-linked into the workspace upon checkout, so existing files do not need to be manually copied back. Modifications to project settings require that the corresponding scripts in the repository's src directory be edited.*

This section assumes that you have already created a Vitis workspace containing one or more application projects. Some additional work may be required after the checkin script is completed, and it is important that you try the checkout process afterwards to ensure that all important settings are properly included.

The checkin script has only been tested with standalone application projects at time of writing.

To add this repository to a parent repository as a submodule, first open a terminal with access to git. If your parent repository does not yet have a `sw` subdirectory (or submodule), create one and cd into it. Adding the `scripts` path argument to the command is recommended in order to keep file paths short.

`git submodule add https://github.com/Digilent/digilent-vitis-scripts scripts`

Open your workspace in Vitis. Open the XSCT Console from within the Vitis GUI by selecting the *Xilinx > XSCT Console* option in the menu bar at the top of the window. To copy all relevant (local only!) source files into the parent repository's src directory and create the scripts used by checkout.tcl, run the following command:

`source <path to digilent-vitis-scripts>/checkin.tcl`

This script will create a src directory in the same folder as the scripts submodule, and populate it as below:

* checkout.tcl script and README file
* One folder per application project, containing the following:
  * A src directory, containing the application project's local sources (from its src folder) and linker script.
  * A #_standalone_app.tcl script, containing the XSCT commands required to recreate and configure the project.
  * A #_build_app.tcl script, containing the XSCT commands required to build the project.
* One folder per (non-automatically generated) domain, containing the following:
  * A #_standalone_bsp.tcl script containing the XSCT commands to recreate and configure the domain.
* One folder per hardware platform, containing the following:
  * A #_hw_pf_xsa.tcl script, containing the XSCT commands required to recreate and configure the platform, using only the XSA as input.
  * The XSA file describing the hardware specification that the software targets, exported from Vivado.

Additionally, a gitignore file is created in the parent repository's sw directory.

Note that the name of each folder is used in checkout to determine the name of the app/platform/domain it is used to create.

The numeric prefixes for XSCT scripts are used to determine the order in which they are sourced during checkout (lowest to highest). Recommended: 0-9 for hardware platform, 20-29 for bsp, 40-49 for app creation. Build scripts are recommended to use > 100.

As mentioned above, you MUST test the checkout process and check the generated scripts to ensure that all sources, project settings, and build configuration settings are correctly applied to the projects when someone else checks them out.

The checkin script is *not* perfect, and manual intervention is likely to be required after the script is run. Edit the automatically generated scripts as needed, and double check your source files.

----

This README.md was created by the following commit hash:
ed11b88630aca2ae294feac832ff430dca5c74b4
