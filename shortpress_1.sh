#!/bin/sh
# Script called when pressing the ON/OFF button once

echo "Triggered shutdown" | ulogger -t "ShortPress" -p I

BLDC_Test_Bench -M 2 &

/bin/ardrone3_shutdown.sh
