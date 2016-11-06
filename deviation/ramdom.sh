#!/bin/zsh
for i in `seq 1 1000`
 do
   echo $(($(od -vAn -tu2 -N2 /dev/urandom)  % 100)) >> 
done
