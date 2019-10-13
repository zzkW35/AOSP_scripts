#!/bin/bash

#Basically the script just enables tap to click and natural scrolling
#for the chosen touchpad -which is in this case "SYNA2393:00 06CB:7A13 Touchpad"-

#N.B. replace "SYNA2393:00 06CB:7A13 Touchpad" with your touchpad model name

xinput set-prop "SYNA2393:00 06CB:7A13 Touchpad" "libinput Tapping Enabled" 1
xinput set-prop "SYNA2393:00 06CB:7A13 Touchpad" "libinput Natural Scrolling Enabled" 1

#echo Eh, now it works properly, diocane.