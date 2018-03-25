#!/bin/bash

icon_enabled=""
icon_disabled=""
status=`systemctl is-active bluetooth.service`

if [ $status == "active" ]
then
	echo "BlueTooth On"
else
	echo "BlueTooth Off"
fi
