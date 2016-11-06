#!/bin/bash
mkdir ~/cp
touch ~/cp/cp1.txt
echo "copytest" > ~/cp/cp1.txt
for n in {1..100000}
do
echo "$(( n * n )) "  >> ~/cp/cp1.txt
done
