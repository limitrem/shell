#!/bin/zsh
last1=0.0
last2=0.0
FILENAME=""
n=`wc -l $FILENAME | grep -o '[0-9]*' `
cat $FILENAME | while read LINE1;do
  last1=`echo $(($LINE1+$last1))`
done
average=`echo $(($last1/$n))`
cat $FILENAME | while read LINE2;do
  last2=`echo $(($last2+($LINE2-$average)**2))`
done
S=`echo $((($last2/$n)**(0.50)))`
echo "`echo $n`人"
echo "平均点`echo $average`"
echo "標準偏差`echo $S`"
echo "続けますか? y/n"
read answer
while [ "$answer" = "y" ]
do
  echo "点数を入力して下さい"
  read score
  deviation=`echo $(( (10*($score-$average)/$S)+50 ))`
  echo "偏差値は`echo $deviation`です"
  deviation=0
  score=0
  echo "続けますか? y/n"
  read answer
done
