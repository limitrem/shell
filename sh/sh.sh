#!/bin/bash
echo "生成するシェルスクリプトの名前を入力して下さい"
echo "~/sh/下に生成されます"
read a
touch ~/sh/"$a".sh
echo "#!/bin/bash" > ~/sh/"$a".sh
chmod u+x ~/sh/"$a".sh
ls -a ~/sh
echo "編集しますか？y/n"
read b
if [ "$b" = "y" ]; then
 nano ~/sh/"$a".sh
elif [ "$b" = "n" ]; then
echo "終了します"
else
ehco "unknown"
fi
