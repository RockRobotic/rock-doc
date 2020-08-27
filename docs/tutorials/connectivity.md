# Connectivity

External WiFi networks can be useful for supplying differential GNSS corrections to the R1a for RTK trajectory generation.

In the options for “RTCM Corrections” the user can choose the delivery method for corrections to the R1a. The options are:
* USB RF Modem like Holybro 915MHz
* NTRIP Client
* TCP Server the R1a connects to
* TCP Client connecting to the R1a’s pre-defined port

Click “Save” to save the changes. The R1a will immediately start trying to connect to the selected channel.
* If “TCP Listen” is selected, the R1a will always listen on the port, and once a client connects to the port, the R1a will accept the connection.
* If “USB RF Modem” is selected, the R1a will automatically detect connection of a compatible USB RF Modem and open the serial link.
* If “NTRIP Client” or “TCP Connect” is selected, the R1a will keep trying to connect to the specified address until it succeeds.

Once a connection is established, the R1a will start sending its position in a NMEA0183 $GPGGA message, so a virtual reference station can be generated. Real base stations ignore those messages. Once the R1a receives RTCMv3 corrections, it will use them to compute RTK position. It will also record the RTCMv3 messages it has received while recording data, so they can be used for post-processing as well.

Click “Restore” to discard any unsaved changes.