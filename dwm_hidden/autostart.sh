#! /bin/bash

nitrogen --restore


power=BAT1:$(cat /sys/class/power_supply/BAT1/capacity)%
currdate=$(date +"%d.%b. %H:%M")

while true; do
	xsetroot -name "$power | $currdate"
	sleep 1m
done &


