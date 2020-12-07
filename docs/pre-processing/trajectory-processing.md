# Trajectory Processing

In order to have a highly accurate point cloud the exact position of the LiDAR unit must be calculated. Inertial Explorer is used to create this highly accurate position file.

## Prerequisits

1. Inertial Explorer installed on your computer
1. Data from an R1A LiDAR scan
1. A base station RINEX file
1. The precise position of the base station

## Install Inertial Explorer User Settings

After Inertial Explorer is installed for the first time you will need to apply some user settings.

<a id="raw-url" href="https://raw.githubusercontent.com/RockRobotic/rock-doc/master/docs/pre-processing/files/R1A_IE_Profiles.zip">Download configuration files</a>

Unzip and place these configuration files inside `C:\NovAtel\InertialExplorer[version]\resources\User`

## Process Trajectory

1. Start Inertial Explorer
