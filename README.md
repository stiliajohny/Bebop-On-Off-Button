# Bebop On/Off button scripts

## Synopsis

This is a list of scripts that you can activate by using the on/off button of your Bebop.



## Disclaimer

**These scripts are tested with my own Parrot Bebop 1 ( FW 3.3.0).**
**It is not guaranty that it will work with your Parrot Bebop, therefore it might end up been bricked.**
**Be familiar with the Factory Reset process as well as the Firmware Update process in case of something go wrong**

## Installation

 1. Download the master.zip file,
 2.  Press your Bebop's power button four (4) times
 3.  Use your PC/Mac/Linux to connect to the Bebop's Wifi network
 4.  Connect with telnet to your Bebop's IP ( usually is 192.168.42.1)
 5.  Change the current working directory to /bin/onoffbutton
 6.  Change the Filesystem from R/O to R/W with this command **mount -o remount,rw /**
 7.  Extract the master.zip files
 8.  Use and FTP client and uploads the files to the **/data/ftp/internal_000/** directory
 9.  Copy the **.sh** files to the /bin/onoffbutton directory
 10. Change the attributes of the files to 755 (chmod 755 /bin/onoffbutton/*.sh )
 11.  Execute sync; reboot from terminal




## Actions List


**longpress_0.sh (3s)**
Switch Wifi Band 2.5GHz / 5GHz

**shortpress_1.sh**
Shuts down the Bebop.

**shortpress_2.sh**

**shortpress_3.sh**

**shortpress_4.sh**
Activates telnet and usb networking ( R/W Permissions )

**shortpress_5.sh**
Copy folders to a USB Stick (/media, /academy and /thumb)

**shortpress_6.sh**
Delete files from Bebop (/media, /academy and /thumb)

**shortpress_7.sh**
Cold GPS start

**shortpress_8.sh**
Custom camera settings ( V=140 C=1280x3072 s=1024x600 I=off )

**shortpress_9.sh**
First Person View ( no stabilisations )

**shortpress_10.sh**
First Person View ( with stabilisations )

**shortpress_11.sh**

**shortpress_12.sh**
Enable Telnet ( Read Only permissions )

**shortpress_13.sh**
Activates USB networking

**verylongpress_0.sh** (10s)
Factory Reset / Hard Reset                               
