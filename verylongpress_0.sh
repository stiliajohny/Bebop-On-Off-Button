#!/bin/sh

echo "Factory settings" | ulogger -t "VeryLongPress" -p I

source /bin/ardrone3_shell.sh
source /sbin/emmc_lib.sh

eMMC_is_mounted ${ARDRONE3_MOUNT_PATH}
mmcOK=$?
pipe="/tmp/.dragon-pipe-in"
pipe_msg="dragon_shutdown"

# Red LED
BLDC_Test_Bench -G 1 0 0 >/dev/null 2>&1

# Shutdown Dragon Prog
echo "Shutdown Dragon" | ulogger -t "shutdown" -p I
pid=$(pidof dragon-prog)
if [ $? -eq 0 ]
then
  # Send a message to Dragon for a clean stop
  echo "Asking Dragon to stop..." | ulogger -t "shutdown" -p I
  if [ -p $pipe ]
  then
    echo $pipe_msg > $pipe &
  fi
  i=0
  # Wait for Dragon to stop
  while kill -0 $pid 2> /dev/null; do
    if [ $i -gt 3 ]
    then
      echo "Timeout" | ulogger -t "shutdown" -p I
      break
    fi
    sleep 1
    i=$(($i+1))
  done  
fi
# We timed out the clean stop. Kill Dragon.
pid=$(pidof dragon-prog)
if [ $? -eq 0 ]
then
  killall -KILL dragon-prog
fi

if [ ${mmcOK} -eq 0 ]
then
  # stopping all processes using eMMC
  echo "Stopping users of eMMC" | ulogger -t "VeryLongPress" -p I
  eMMC_release ${ARDRONE3_MOUNT_PATH}

  # delete contents of eMMC
  echo "Deleting contents of eMMC" | ulogger -t "VeryLongPress" -p I
  rm -rf ${ARDRONE3_MOUNT_PATH}/*
fi

# Synchronise filesystems
echo "Synchronise filesystems" | ulogger -t "VeryLongPress" -p I
sync
echo "3" > /proc/sys/vm/drop_caches

[ ${mmcOK} -eq 0 ] && eMMC_umount

# format eMMC
eMMC_LED_show_formatting
eMMC_mkfs
eMMC_LED_show_formatting_done

# Red LED
BLDC_Test_Bench -G 1 0 0 >/dev/null 2>&1

# delete contents of /data
echo "Deleting contents of NAND Data" | ulogger -t "VeryLongPress" -p I
rm -rf /data/*

# Synchronise filesystems
echo "Synchronise filesystems" | ulogger -t "VeryLongPress" -p I
sync
echo "3" > /proc/sys/vm/drop_caches

# remount / as read-only
mount -o remount,ro /

/bin/reboot.sh
