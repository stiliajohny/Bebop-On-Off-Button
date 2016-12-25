# Bebop On/Off button scripts

## Synopsis

This is a list of scripts that you can activate by using the on/off button of your Bebop.



## Disclamer

**These scripts are tested with my own Parrot Bebop 1 ( FW 3.3.0).**
**It is not guaranty that it will work with your Parrot Bebop, therefore it might end up been bricked.**
**Be familiar with the Factory Reset process as well as the Firmware Update process in case of something go wrong**

## Installation

 - [ ] Download the master.zip file,
 - [ ] Press your Bebop's power button four (4) times
 - [ ] Use your PC/Mac/Linux to connect to the Bebop's Wifi network
 - [ ] Connect with telnet to your Bebop's IP ( usualy is 192.168.42.1)
 - [ ] Change the current working directory to /bin/onoffbutton
 - [ ] Change the Filesystem from R/O to R/W with this command **mount -o remount,rw /**
 - [ ] Extract the master.zip files
 - [ ] Use and FTP client and uploads the files to the **/data/ftp/internal_000/** directory
 - [ ] Copy the **.sh** files to the /bin/onoffbutton directory
 - [ ] Change the attributes of the files to 755 (chmod 755 /bin/onoffbutton/*.sh )
