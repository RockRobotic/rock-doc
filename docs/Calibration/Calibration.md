# Calibrating the LiDAR

!!! tip ""
    Before each acquisition and at the end of each acquisition the LiDAR system needs to be calibrated.

## Overview

!!! danger "Make Sure"
    Before proceeding to the LiDAR Calibration make certain the base station is setup and logging static RINEX 3.03 measurements

Calibrating the LiDAR is an important step to collecting accurate data, and the procedure will be done twice at each acquisition session.  One time at the beginning, right after you start the R1A from the WebServer. (See [Connecting to R1A WiFi](../quickstart/first-setup) for information oh how to start the R1A from the web interface) and one time at the very end of your acquisition flights.

## Procedure

####Start the R1A LiDAR
:   Using the web interface, wait until you have 8 or more GNSS satellites. Then press the start button
    inside the data recording window.

![Web Interface](../img/web-interface.png){: style="width: 350px;margin:0 auto;display:block;"}

####Collect Static Data
:   The R1A needs to get a static alignment. After you start data recording, then let the R1A
    sit completely still and allow a clear view of the sky and wait 15 seconds.

####Take off and fly in straight line
:   Next we will get kinematic alignment.  To do this fly in a straight line pretty quickly for
    about 10 seconds.

####Fly figure 8 pattern
:   Now fly 3 figure 8 patterns in the sky.  Do your best, but its not critical to be the best 8 flyer ;)


![Figure 8](../img/figure-8.gif){: style="width: 600px;margin:0 auto;display:block;"}
<div style="text-align: center;">
  <figcaption>Figure 1</figcaption>
</div>

####Fly your mission
:   Great!  Now the LiDAR is calirated and you can begin flying your mission plan. Either upload the
    mission while still in the air or land upload and take of again!

**Calibration Complete**






## End of Mission Calibration

The end of mission is the exact same procedure.  As you fly back to the landing zone, manually fly 2 figure 8, then land.  Once landed don't move the system for 15 seconds.  This will capture a final static alignment dataset.    Then you can connect via the web interface and stop collecting data.

**You are Done!**
