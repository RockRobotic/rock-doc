# Point Cloud Colorizing

## Key Features

The key features of PCPainterGL are:

- Fast data processing
- On the fly point cloud visualization
- On the fly visualization of misalignment correction
- Point coloring by digital image overlay
- XML project format for ease of automation

## Platform Requirements

PCPainterGL works on Windows 10 x64 (MacOS and Linux x64 versions are in development). The key requirement for seamless visualization of large point clouds is a fast GPU with large video memory (dedicated or shared). The software has been tested on nVidia GeForce GTX graphics cards, but it is hardware independent. The rule of thumb is 1 GB of memory for every 15 million points in the cloud. The current software limit is ~800 million points. Fast data processing also requires a fast CPU.

Recommended computer specifications:

- Intel Core i7 or better
- 32 GB RAM
- Nvidia GeForce GTX 1050 Ti or better
- Windows 10 x64

## Prerequisites

1. Trajectory File (see (Trajectory Processing)[trajectory-processing.md]))
2. Processed point cloud (see (Pointcloud Processing)[point-cloud-processing.md]))

## Workflows

Full workflow is designed for scans where the misalignment angles are to be checked or adjusted. The workflow consists of the following steps:

- Trajectory loading
- Scan files loading
- Digital Camera files loading
- Linear offset verification
- Angular offset verification
- R1A orientation offset verification
- Optional Lens Calibration configuration
- LAS export

Quick workflow is designed for scans where the misalignment angles are known. The workflow consists of the following steps:

- Trajectory loading

- Scan files loading
- Digital Camera files loading

- LAS export

When PCPainterGL is run in quick workflow mode with a pre-defined project file given as an argument, it takes all the necessary configuration values from the project file. It loads the trajectory and the scans, applies the stored calibration values and exports the LAS files without any user input. This can be referred to as &quot;Batch workflow&quot;.

## User interface

PCPainterGL has a very simple user interface with a near zero learning curve.

The main window shows:

- Workflow control panel with
- buttons to perform actions on the current project, creating a new project, opening an existing one, saving it, changing offsets and calibration parameters and producing LAS files;
- Status bar showing the local plane position of the cursor and the dimensions of the measurement box
- Main 3D view showing current trajectory, currently enabled path segments and their point clouds, the local plane axes, the cursor focused on the current position and the measurement box if measurements are currently being taken

The main 3D view can be controlled with as few as two mouse buttons, two keyboard keys and the mouse wheel.

To look at the focus from different directions press and hold **Left mouse button** and move the mouse.

To rotate the camera around its axis, press and hold **Shift** and **Left mouse button** and move the mouse.

To move the focus horizontally, press and hold **Ctrl** and **Left mouse button** and move the mouse.

To move the focus up and down, press and hold **Ctrl, Shift** and **Left mouse button** and move the mouse.

To move the camera closer to the focus, scroll the **mouse wheel** forward.

To move the camera away from the focus, scroll the **mouse wheel** back.

To make perspective smaller (telephoto view) press and hold **Shift** and scroll the **mouse wheel** forward.

To make perspective wider (wide-angle view) press and hold **Shift** and scroll the **mouse wheel** back.

These field of view changes are useful when a long plane is looked at from its side. When the camera is in the telephoto mode, all parts of the plane have the same visible thickness with no perspective. This is very useful for laser calibration and offset adjustment. In this mode trackball rotations are also slowed down for fine adjustments.

**Right mouse button** – when it is clicked, it opens the context menu with actions:

- Switch to the camera here: view the camera image overlaid on the cloud points below.

Mouse buttons and wheel work the same way on touchpads, including multi-touch ones with mouse wheel modeled by zoom-in multi-touch pattern.

## Workflow Control Panel

Workflow control buttons are:

- **New Project** – clears the current data if any and asks for the new trajectory and new scan files. New data are loaded, and the trajectory is displayed. Calibration values and offsets are taken from the R1A scan files; filters are cleared.
- **Open Project** – clears the current data and loads the trajectory and the scans from the selected project. Calibration values, offsets, and filters are loaded from the project file as well.
- **Linear Offset** – opens the panel showing the linear offset of the LiDAR reference point from the IMU reference point in the R1A reference frame. The changes immediately apply to the cloud.
- **Angular Offset** – opens the panel showing the alignment between the LiDAR and the R1A reference frame. The changes immediately apply to the cloud.
- **R1A Orientation** – opens the panel showing the R1A orientation in the vehicle reference frame. This should match the orientation entered in the R1A settings; it is recorded in the scan files and should not normally be changed unless the orientation was set incorrectly by mistake and had to be corrected in the trajectory generation software.
- **Lens Calibration** – opens the panel where camera lens calibration settings can be configured. The filters are discussed in the next section. Changes in the configuration apply immediately to the cloud.
- **Save Project** – saves the current state of the project to a project file.
- **Produce LAS** – produces the LAS file for every selected path checked for export, using points from every laser checked for export. Points are filtered through currently enabled filters. Project is automatically saved before production. The LAS files are saved in the &quot;clouds&quot; sub-folder in the folder where the project file is saved.

## Lens Calibration

Camera Lens Calibration settings allow the user to clean up the point cloud by eliminating errors caused by camera lens parameters given by the manufacturer.

The available settings are:

- **Focal Length –** is measured in millimeters and is dependent on the camera lens that is used and camera manufacturer restrictions.
- **Pixel flatness –** is measured in ppm and is the difference between vertical dimension and horizontal dimension of a pixel. Enter in the pixel flatness as given by camera manufacturer (default value is 0).
- **RatPolyNum –** restricts the area of overlay for the camera images projected onto cloud points.
- **RatPolyDen –** restricts the area of overlay for the camera images projected onto cloud points.

## Full Workflow

In full workflow, designed for laser calibration and boresighting, the steps are:

- Click &quot; **New Project**&quot; – select the trajectory file, the scan files, and the digital images when asked. All scan files should be selected at the same time.
- PCPainterGL will load the data and pre-process scan files. It will also load the R1A orientation, the offsets and laser calibration values that were stored on R1A. The trajectory will be displayed, colored from blue at the beginning, to red at the end.
- Verify &quot; **R1A orientation****&quot;** and that it matches the actual orientation of the unit (in relation to vehicle) during the scan. It should most likely match.
- Verify &quot; **Linear offset****&quot;** and that it matches the reference values provided by the manufacturer. This is the offset between the IMU in the R1A and the digital camera.
- Verify the &quot; **Angular offset&quot;** and that it matches for the hardware setup used for the project being created. This angular offset is the offset between the IMU in the R1A and the camera being used.
- To ensure that camera images are correctly overlaid onto cloud points, enter in the Camera Lens Calibration settings in the &quot; **Lens Calibration&quot;** menu item.
- Right-click on segments of the trajectory file and select &quot; **Switch to the camera here****&quot;** to view the photograph taken at that instance during the scan.
- Click &quot; **Produce LAS**&quot; and save the project when asked.

Also, the project can be saved using &quot; **Save Project**&quot; and imported into R1A for storing the offsets and the calibration values.

## Quick Workflow

Quick workflow is designed for fast LAS file production when the offsets and the calibration values are already stored in R1A.

- Click &quot; **New Project**&quot; and select the trajectory file, the scan files, and the digital camera images when asked. All scan files should be selected at the same time.
- Click &quot; **Produce LAS**&quot; and save the project when asked.

## Batch Processing

PCPainterGL can work with pre-created project files, where all the necessary values are already set. All it takes then is one button to produce a LAS file. It can even be scripted if PCPainterGL is run with the project file for argument and the &quot;batch&quot; option. In that case, 3DView is not even shown, only the LAS files are produced based on the project file contents. PCMaster Project file format (PCPP) is simple XML with self-explanatory structure shown below and can be edited or generated by a script. Path selection is measured in tenths of a second and can be set to 0 for start and an insanely large number like 2,000,000,000 for finish to select the whole trajectory.

## PCPainterCL – Command Line Interface

Versions of PCPainterGL after (and including) PCPainterGL version 1.0.0.1 by default include the ability to generate point clouds from the command line.

After a project file has been created, the same project can be used to generate future clouds with the same configured settings using the command line which is much faster than directly using the graphical user interface.

To do this, start by creating a project in PCPainterGL and configure the settings you would like to be applied for current and future clouds that will be generated.

Save this project file to a location of your choice and right-click the project file and select &quot;Process&quot; to begin cloud generation from the command line.

To run a particular project file from the command line simply use the following command:

_C:\ (location of PCPainterGL.exe)\&gt;_ _PCPainterCL.exe \&lt;path to the project file\&gt;_

** Step 4 - [Upload to the ROCK Cloud](../rock-cloud/project.md) **