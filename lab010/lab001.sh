#!/bin/bash
# echo -n不换行
echo -n "please enter an integer ->"
# 读取输入
read num

if [[ $num =~ ^-?[0-9]+$ ]]; then
echo "$num is number"
else
    echo "num is not number"
fi

# 多个输入
# 输入的时候要一次输入，例：`1 2 3`
echo -n "Enter one or more values ->"
read v1 v2 v3
echo "var1 = $v1"
echo "var2 = $v2"
echo "var3 = $v3"