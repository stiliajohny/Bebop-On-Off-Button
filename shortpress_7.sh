#!/bin/sh
echo "Cold Resetting GPS" | logger -s -t "shortpress_7" -p user.info
# Orange LED for 3 seconds
(BLDC_Test_Bench -G 1 1 0 >/dev/null; sleep 3; BLDC_Test_Bench -G 0 1 0 >/dev/null) & echo -e "$PERDAPI,STOP*6F" > /dev/ttyPA1
echo -e "$PERDAPI,START,COLD*1F" > /dev/ttyPA1


BLDC_Test_Bench -M 2 &
