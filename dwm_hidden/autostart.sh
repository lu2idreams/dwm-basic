#! /bin/bash

nitrogen --restore

while true; do
	power=BAT1:$(cat /sys/class/power_supply/BAT1/capacity)%
	currdate=$(date +"%d.%b. %H:%M")
	xsetroot -name "$power | $currdate"
	sleep 10s
done &


