#!/bin/sh
# Script called when pressing the ON/OFF button once

echo "Triggered shutdown" | ulogger -t "ShortPress" -p I

/bin/ardrone3_shutdown.sh
