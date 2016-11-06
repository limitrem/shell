#!/bin/bash
a=$HOME/temp/`date +%Y%m%d`.dat
gnuplot<<EOF
 set xlabel "minute"
 set ylabel "K" 
 set xrange ["0":"1440"] 
 set yrange ["30":"65" ]
 unset key 
 set terminal png 
 set out "$HOME/Pictures/`date +%Y%m%d`.png" 
 plot "$a"with lines  
EOF

