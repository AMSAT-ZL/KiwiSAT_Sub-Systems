16 May 2008   Clayton Gumbrell

Version 2.0 released.
Fixed a number of errors. Added a 2nd EEPROM for backup.
Generated various DXF and PDF files of the layers etc. 
Note that copper PDFs are not accurate (SW bug in PDF printer / CAD)

PCB has been made into a panel with ADAC (see PCBPanels\CAMERA_ADAC) and gerbers generated there.

5 July 2008

Setup:

Connect SIL headers to J1 (power/serial connection) and the programming connects (J12 & J13).
Connect up USB to camera adapter. Use jumper between pins 2 & 3 to enable the power supply.

EEPROM Programming:

Use special USBProgV3 PCB which provides an IIC port.
This PCB is loaded with 'twitest.bin' (in C:\Projects\CES\SW\USB_Prog)
Connect programmer to camera. There are 2 connectors (J12 and J13).
Programmer connects to GND, SDA, SCL and WP (connects to GND) signals.
Connect camera and USB programmer to USB ports.
Open a hyperterminal port to the programmer @ 38400
On startup of the port, the programmer should display a message.
Set up hyperterminal for a 200mSec ASCII line delay.
Send the .hex text file out the com port.
Programmer should program each line, displaying a debug message as 
    each block is programmer.
To test, enter the 'r' command. Capture the output and do a text compare 
    with the original hex file.
This programs the main EEPROM (U3)
To program backup EEPROM (U7), set RX pin jumper to GND options and repeat
programming step above (i.e. send the .hex file again).

Test backup/main EEPROM operation:

Monitor to IIC bus during startup. Put a scope on piun 2 of J13. On startup 
there should be about 1 sec of activity as the EEPROM is read. Check this 
with RX pin jumpered to serial port (PC TX pin) to select the main ROM, and 
then to GND to select the backup ROM.

Testing:

Change the USB serial port to COM1:
Start the camera application (C328Ap.exe).
Software should communicate with the camera firmware. If the sensor chip 
is not fitted, a message "No Sensor or Sensor is not be supported!" is displayed.
Once fitted display should come up and show current image.

ToDo:
Change twitest to support different IIC addresses. Remove debug text. - Not required 16/9/8
Program backup EEPROM and test dual EEPROM feature.  - Done 16/9/8


Orientation:
With the lens fitted, for right way up image the camera should be operated on its side with J1 on the top edge.


