#!/bin/bash
echo "ファイルを生成する場所の指定※ディレクトリで指定して下さい"
read a
echo "ファイルサイズの指定 単位/G/M/K"
read b
echo "ループする回数"
read c
dd if=/dev/zero of="$a"/testing bs="$b" count="$c"
rm "$a"/test
