#!/bin/sh

echo "Switching Wifi band" | ulogger -t "LongPress" -p I

# Orange LED for 2 seconds
(BLDC_Test_Bench -G 1 1 0 >/dev/null; sleep 2; BLDC_Test_Bench -G 0 1 0 >/dev/null) &

pipe="/tmp/.dragon-pipe-in"
switch_message="switch_wifi_band"

if [ -p $pipe ]
then
    echo $switch_message > $pipe &
fi
