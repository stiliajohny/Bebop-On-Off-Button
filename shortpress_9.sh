#! /bin/sh
# This script restarts dragon-prog with FPV-friendly camera settings
# Red LED for 2 seconds
(BLDC_Test_Bench -G 1 0 0 >/dev/null; sleep 3; BLDC_Test_Bench -G 0 1 0 >/dev/null) &
kill -9 `ps | grep dragon | grep '/' | awk '{print $1}'`
/usr/bin/dragon-prog -c 1280x3072 -s 1024x600 -V 120 -S 0 -I off &

BLDC_Test_Bench -M 2 &
