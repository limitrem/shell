#!/bin/zsh
echo "f(x)の決定"
read s
echo "下端の決定"
read t
echo "上端の決定"
read u
n=0.0000010
#ループ構造
until [ $t = $u ]
do
t=$(( $t + $n )) 
m=`gnuplot << EOF
reset
f(x)=$s
print (f($t))*$n  
EOF` 
k=$((l + m))  
l=$k 
done 

echo $k
