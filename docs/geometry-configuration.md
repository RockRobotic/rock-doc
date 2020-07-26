# Geometry Configuration

## IMU to Antenna Offset

In the “IMU to Antenna Offset” option enter the correct location of the antenna relative to the internal IMU using location of IMU center inside R1a for measuring antenna offset.

<div style="text-align: center;"><img src="../img/imu-to-antenna.png" style="width: 450px;"></div>

The orientation of the IMU within the R1a is shown below:

<div style="text-align: center;"><img src="../img/imu-location.png" style="width: 450px;"></div>

"Right" refers to the "X" direction.

"Forward" refers to the "Y" direction.

"Up" refers to the "Z" direction.

The precise location of the IMU is depicted below in millimeters.

<div style="text-align: center;"><img src="../img/measurements.png" style="width: 450px;"></div>

## Vehicle to IMU Rotation

In the “Vehicle to IMU Rotation” option enter in the relative offset angles (axis misalignment; alignment angles) between the R1a and the carrier vehicle.

<div style="text-align: center;"><img src="../img/imu-rotation.png" style="width: 450px;"></div>

Yaw, Pitch and Roll should all be measured with respect to the axes on the carrier object (i.e. – the measured Yaw value is measured relative to the front-end of the carrier object).

## Static Alignment

The “Static Alignment” option should be kept at 5 seconds (recommended) unless the carrier vehicle is unable to remain in a static position for this amount of time. When data-recording is started on the R1a, gyro biases will be estimated and used in data filtering processes.

<div style="text-align: center;"><img src="../img/static-alignment.png" style="width: 450px;"></div>