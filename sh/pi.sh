#!/bin/zsh

k=0.0
n=0.0
l=100000

for m in {1..$l}
do
  n=`echo $(($k + $n))`
  k=`echo $(( 400*( -1.0)**($m -1.0) /((2.0*$m) -1.0) ))`
done

echo $(($n/100))
