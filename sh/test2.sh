#!/bin/sh

while :
do
  read key
  case "$key" in
    "a" ) echo "aが入力されました。" ;;
    "bb" ) echo "bbが入力されました。" ;;
    "c c c" ) echo "c c cが入力されました。" ;;
    "q" ) echo "終了します。"
          break ;;
  esac
done

exit 0

