Zybo Z7 -20 Pcam 5C Demo
====================

Description
-----------
 The Zybo Z7 Pcam 5C project demonstrates the usage of the Pcam 5C as a video source by forwarding the streaming image data out to the HDMI TX port. Video data streams in through the Pcam port and out through the HDMI source (TX) port. A UART interface is available to configure the image sensor and additional post processing IP Cores.

First and foremost
------------------
* The Vivado projects are version-specific. Source files are not backward compatible and not automatically forward compatible. Release tags specify the targetted Vivado version. There is only one version targetted per year, as chosen by Digilent. Non-tagged commits on the master branch are either at the last tagged version or the next targeted version. This is not ideal and might be changed in the future adopting a better flow.
* Our projects use submodules to bring in libraries. Use --recursive when cloning or git submodule init, if cloned already non-recursively.

Requirements
------------
* **Zybo Z7-20**
* **Pcam 5C**
* **Monitor with HDMI/DVI input**
* **Vivado and Vitis 2020.1 Installations**: To set up Vivado, see the [Installing Vivado and Digilent Board Files Tutorial](https://reference.digilentinc.com/vivado/installing-vivado/start).

Demo Setup
----------

1. Download the most recent release ZIP archives from the repo's [releases page](https://github.com/Digilent/Zybo-Z7-20-pcam-5c/releases). These files are called "Zybo-Z7-20-pcam-5c-hw-2020.1-1.zip" and "Zybo-Z7-20-pcam-5c-sw-2020.1-1.zip". The -hw- archive contains an exported XPR project file and associated sources for use with Vivado. The -sw- archive contains exported project files for use with Vitis. Both of these files contain the build products of the associated tool.
2. Extract the downloaded -hw- archive. (Do not extract the -sw- archive)
3. Open Vivado 2020.1.
4. Open the XPR project file, found at \<archive extracted location\>/hw/hw.xpr, included in the extracted hardware release in Vivado 2020.1.
5. No additional steps are required within Vivado. The project can be viewed, modified, and rebuilt, and a new platform can be exported, as desired.
6. Open Vitis 2020.1. Choose an empty folder as the *Workspace* to launch into.
7. With Vitis opened, click the **Import Project** button, under **PROJECT** in the welcome screen.
8. Choose *Vitis project exported zip file* as the Import type, then click **Next**.
9. **Browse** for the downloaded -sw- archive, and **Open** it.
10. Make sure that all boxes are checked in order to import each of the projects present in the archive will be imported, then click **Finish**.
11. Open a serial terminal application (such as TeraTerm) and connect it to the Zybo Z7's serial port, using a baud rate of 115200.
12. In the *Assistant* pane at the bottom left of the Vitis window, right click on the project marked `[System]`, and select **Run** -> **Launch Hardware**. When the demo is finished launching, messages will be able to be seen through the serial terminal, and the demo can be used as described in this document's *Description* section, above.

Next Steps
----------
This demo can be used as a basis for other projects by modifying the hardware platform in the Vivado project's block design or by modifying the SDK application project.
Check out the wiki page of the demo [here](https://reference.digilentinc.com/learn/programmable-logic/tutorials/zybo-z7-pcam-5c-demo/start).

For technical support or questions, please post on the [Digilent Forum](forum.digilentinc.com).

Additional Notes
----------------
Open the tcl file, found at \</src/other/sim_sources_workaround.tcl for updating all the library fields needed for running the simulation in "Edit IP packager".
For more information on how this project is version controlled, refer to the [digilent-vivado-scripts repo](https://github.com/digilent/digilent-vivado-scripts) and [digilent-vitis-scripts](https://github.com/digilent/digilent-vitis-scripts) repositories.

