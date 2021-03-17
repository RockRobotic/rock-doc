# Full Flight without using GUI

While the web-based GUI is a great tool for performing flights, flights can be performed without the GUI like shown below.

1. Turn on drone or other power source and then turn on the payload.
1. Look at the GNSS light to determine the GNSS solution status.

    1. If the light is blinking once incrementally, then the GNSS solution status is “Computed, Single”, this means that the unit is connected to satellites but is not receiving RTCM traffic.
    1. If the light is blinking three times incrementally, then the GNSS solution status is “Computed, Narrow Integer”, this means that the unit is receiving RTCM traffic.
    1. If the light is not blinking, then receiver is not receiving signals from satellites.

1. Tap the power button to begin recording data. The payload will indicate that data is recording when the Boot light begins flashing between green and red.
1. Perform flight.
1. To stop recording, tap the power button and the boot light will stop flashing between green and red.
1. Turn off the payload first, and then turn off the drone or power source.


!!! danger "Note"
    It is good practice to leave the drone stationary for 30 seconds after recording has begun and for 30 seconds after the drone has landed before stopping recording to ensure accurate results.

