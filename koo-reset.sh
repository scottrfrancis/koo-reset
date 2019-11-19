#!/bin/bash

sleep 30

VID=0bda
PID=8176

BUSDEV=$(lsusb | grep "$VID:$PID" | cut -d':'  -f1)
BUS=$(echo $BUSDEV | cut -d' ' -f2)
DEV=$(echo $BUSDEV | cut -d' ' -f4)

/usr/sbin/usb_modeswitch -R /dev/bus/usb/001/002 -v $VID -p $PID
