#!/bin/zsh
[ -e $HOME/temp/`date +%Y%m%d`.dat ]
if [ "$?" -eq 1 ];then
touch  $HOME/temp/`date +%Y%m%d`.dat 
elif [ "$?" -ne 1 ] &&  [ "$?" -ne 0 ];then
echo "error! please check your directory."
fi
echo "$(( `date +%H`*60+`date +%M`))  $((`cat /sys/class/thermal/thermal_zone0/temp`.0 / 1000.0 ))" >> $HOME/temp/`date +%Y%m%d`.dat
