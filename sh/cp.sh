#!/bin/bash
mkdir ~/cp
touch ~/cp/cp1.txt
echo "copytest" > ~/cp/cp1.txt
for n in {1..10000}
do
cp -r ~/cp/cp"$n".txt ~/cp/cp"$(( n + 1 ))".txt
done
