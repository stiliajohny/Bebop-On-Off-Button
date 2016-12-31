# Bebop On/Off button scripts

Author: John Stilia


## Synopsis

This is a list of scripts that you can activate by using the on/off button of your Bebop.



## Disclaimer

These scripts are tested with my own Parrot Bebop 1 ( FW 3.2.0).
It is not guaranty that it will work with your Parrot Bebop, therefore it might end up been bricked.
Be familiar with the **Factory Reset** process as well as the **Firmware Update** process in case of something go wrong

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
-------|------------|--------|------
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

## Firmware Downgrade to 3.2.0


1. Connect Bebop to PC/Mac/Linux via wifi
2. Download and install an FTP Client
3. Open Command Prompt
4. Turn on Bebop  by pressing power button, then **press 4 times** when that button finishes flashing. This will wnable telnet on your Bebop.
5. Type in the Command Prompt box **telnet 192.168.42.1** and press enter - it should connect to Bebop.
6. Then type **mount -o remount,rw /** and then press enter
7. Then type **vi version.text** and press enter - it will say your version number at the top **3.3.0**
8. Now type **r1:wq** then press enter
9. Then retype **vi version.txt** and press enter your Bebop  should now be version **1.3.0**
10. Open Filezilla and where it says Host type in **192.168.42.1** press enter and it will connect to Bebop
11. Now find your 3.2.0 firmware on PC/Mac/Linux and drag an drop it to the folder on the right that says internal_000
12. Once it has finished transfering to the bebop close the FTP Client and open Command Promt again and type **telnet 192.168.42.1** press enter should connect to Bebop 2 again
13. Once connected via telnet type **/bin/updater/updater_scan.sh /data/ftp/internal_000** and press enter an it will transfer firmware to updater
14. Reboot the Bebop and wait for it to update itself, after it has updated an rebooted, remove battery for 1 minute place battery back in and power on Bebop
15. Do a factory reset of Bebop by holding the power button until it resets.
16. See how she flies and happy flying
