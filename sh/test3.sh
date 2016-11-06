#!/bin/bash
a=(`cat /sys/class/thermal/thermal_zone0/temp`)
b=$(($a/1000))
echo $b
