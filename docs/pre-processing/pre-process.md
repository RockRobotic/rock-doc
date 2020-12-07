# Introduction

The ROCK Robotic R1A consists of a LiDAR and an INS. The data gathered from both devices must be fused together to get LiDAR points geo-referenced – transformed from the LiDAR reference frame to geographic coordinates.

The steps for taking the raw data and converting it to a point cloud are as follows:

1. Create a highly accurate trajectory
1. Use that trajectory to create the point cloud
1. (Optional) Colorize the point cloud with imagery.

## Platform Requirements

PCMasterGL works on Windows 10 x64 (MacOS and Linux x64 versions are in development). The key requirement for seamless visualization of large point clouds is a fast GPU with large video memory (dedicated or shared). The software has been tested on nVidia GeForce GTX graphics cards, but it is hardware independent. The rule of thumb is 1 GB of memory for every 15 million points in the cloud. The current software limit is 800 million points. Fast data processing also requires a fast CPU.

**Recommended computer specifications:**

* Intel Core i7 or better
* 32 GB RAM
* Nvidia GeForce GTX 1050 Ti or better
* Windows 10 x64

** Step 1 - [Create a highly accurate trajectory](trajectory-processing.md) **