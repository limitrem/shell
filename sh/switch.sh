#!/bin/bash
a=test.conf
cat ~/$a |grep switching.1 > /dev/null

if [ "$?" -eq 0 ];then
cp ~/$a ~/$a.cp1 && cp -f ~/$a.cp2 ~/$a

elif [ "$?" -eq 1 ];then 
cp ~/$a ~/$a.cp2 && cp -f ~/$a.cp1 ~/$a
 
else
echo 'error!'
fi
