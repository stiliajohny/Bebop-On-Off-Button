# Bebop On/Off button scripts

Author: John Stilia


## Synopsis

This is a list of scripts that you can activate by using the on/off button of your Bebop.



## Disclaimer

**These scripts are tested with my own Parrot Bebop 1 ( FW 3.3.0).**
**It is not guaranty that it will work with your Parrot Bebop, therefore it might end up been bricked.**
**Be familiar with the** Factory Reset **process as well as the** Firmware Update **process in case of something go wrong**

## Installation

 1.  Download the master.zip file,
 2.  Press your Bebop's power button four (4) times ( to enable telnet )
 3.  Use your PC/Mac/Linux to connect to the Bebop's Wifi network
 4.  Connect with telnet to your Bebop's IP ( usually is 192.168.42.1)
 5.  Change the filesystem from R/O to R/W with this command **mount -o remount,rw /**
 6.  Extract the master.zip files
 7.  Use and FTP client and uploads the files to the **/data/ftp/internal_000/** directory
 8.  Copy the **.sh** files to the /bin/onoffbutton directory ( cp /)
 9. Change the attributes of the files to 755 (chmod 755 /bin/onoffbutton/\*.sh )
 10. Execute **sync; reboot** from terminal




## Actions List

Script | Hold button|Function| Edit
-|-|-|-|
longpress_0.sh|3s|Switch Wifi Band 2.5GHz / 5GHz |Yes
shortpress_1.sh|0s|Turn Off the Drone| Yes
shortpress_2.sh|0s|Empty Slot|Yes
shortpress_3.sh|0s|Empty Slot|Yes
shortpress_4.sh|0s| Activates telnet and usb networking ( R/W Permissions ) |Yes
shortpress_5.sh|0s |Copy folders to a USB Stick (/media, /academy and /thumb)|Yes
shortpress_6.sh|0s |Delete files from Bebop (/media, /academy and /thumb)|Yes
shortpress_7.sh|0s |Cold GPS start|Yes
shortpress_8.sh|0s |Custom camera settings ( V=140 C=1280x3072 s=1024x600 I=off )|Yes
shortpress_9.sh|0s |First Person View ( no stabilisations )|Yes
shortpress_10.sh|0s|First Person View ( with stabilisations )|Yes
shortpress_11.sh|0s|Empty Slot|Yes
shortpress_12.sh|0s|Enable Telnet ( Read Only permissions )|Yes
shortpress_13.sh|0s|Activates USB networking|Yes
verylongpress_0.sh|10s|Factory Reset / Hard Reset|No



**You can add more scripts by renaming one of the shortpress scripts with a bigger than 13 number**
