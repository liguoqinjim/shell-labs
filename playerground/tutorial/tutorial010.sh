#!/bin/bash

# if操作
a=10
b=20

if [ $a == $b ]
then
    echo "a 等于 b"
elif [ $a -gt $b ]
then
    echo "a 大于 b"
elif [ $a -lt $b ]
then
    echo "a 小于 b"
else
    echo "没有符合的条件"
fi

#for循环
for loop in 1 2 3 4 5
do
    echo "The value is: $loop"
done

#while循环
int=1
while(($int <= 5))
do
    echo $int
    let "int++" #这是bash的let命令
done

# while循环，读取键盘信息
# echo '按下 <CTRL-D> 退出'
# echo -n '输入你最喜欢的网站名: '
# while read FILM
# do
#     echo "是的！$FILM 是一个好网站"
# done

# until循环
a=0

until [ ! $a -lt 10 ]
do
   echo $a
   a=`expr $a + 1`
done

# case
echo '输入 1 到 4 之间的数字:'
echo '你输入的数字为:'
read aNum
case $aNum in
    1)  echo '你选择了 1'
    ;;
    2)  echo '你选择了 2'
    ;;
    3)  echo '你选择了 3'
    ;;
    4)  echo '你选择了 4'
    ;;
    *)  echo '你没有输入 1 到 4 之间的数字'
    ;;
esac