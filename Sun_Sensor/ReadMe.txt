
10 Dec 2008

Tested sun sensor. All okay except that Y output can not be zeroed.
An error was found in the original sensor - a 4K resistors was used in stead of 10K. This was replaced.

16 Dec 2008

Sun sensoer now works as expected, and both changes can be zeroed okay.

Sensor Bias Voltage (Vcon)
This adjustment does no seem to have any effect on the output.
In general this seems will set the sensitivity of the sensor. Data sheets are based on a Vr of 5V.
All anodes are at 5V, so Vcon should be at about 10V.
We just need to check that the opamp voltages remain within an appropriate range, and 
that overloading will not occur in orbit.

Vcon set to 10V using R21 of 390R and R22 of 1k5

X/Y offsets

The trimpots were set to 1.25V when centred.
The pots were then measured, removed, and replace with fixed resistors.
These were then checked, and tweaked as necessary.

There is some variation in the reading. This could be caused by a number of things:
- haze over the clouds had some effect.
- the heating up of the PCB may have varied its characteristics
- the heating up of the voltage meter may have effected the actual reading
- the uncertainty in the jig to align the sun sensor itself.

However the variation is reasonably small (in percentage terms), so the sensor should perform well. 
Any errors should be able to be compensated for in software if necessary.


5 Feb 09

On observation it appears there is an error in the ENABLE circuit. I'm not sure why it does still work!
Q3 is marked as BC857 (PNP), yet the circuit diagram is an NPN transistor.

Wiring has been changed to use active-high enable for the sun sensors

6 Mar 09

PCB #2
Connected and calibrated.
RV3 = 4.42K  Fitted 3k9 & 560R and got the same reading
RV2 = 4.94K  Fitted 4k7 & 330R and got the same reading


