#!/usr/bin/env ruby

t = `cat /sys/class/thermal/thermal_zone0/temp`
p t.to_f.quo(1000)
