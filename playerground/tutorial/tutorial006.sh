#!/bin/bash

# 注意是`不是'
# 注意写成2+2，就无效了
val=`expr 2 + 2`
echo "val=$val"

a=10
b=20

# 相乘必须要用\
val=`expr $a \* $b`
echo "a * b : $val"

# 判断是否相等
if [ $a == $b ]
then
    echo "a 等于 b"
fi
if [ $a != $b ]
then
    echo "a 不等于 b"
fi

# 关系运算符
# -eq是否相等，-ne是否不相等。-gt,-lt,-ge,-le
if [ $a -eq $b ]
then
   echo "$a -eq $b : a 等于 b"
else
   echo "$a -eq $b: a 不等于 b"
fi
if [ $a -ne $b ]
then
   echo "$a -ne $b: a 不等于 b"
else
   echo "$a -ne $b : a 等于 b"
fi

# 布尔运算符
# !非，   -o或， -a与
if [ $a -lt 5 -o $b -gt 100 ]
then
   echo "$a 小于 5 或 $b 大于 100 : 返回 true"
else
   echo "$a 小于 5 或 $b 大于 100 : 返回 false"
fi

# 逻辑运算符
# &&与， ||或
if [[ $a -lt 100 && $b -gt 100 ]]
then
   echo "返回 true"
else
   echo "返回 false"
fi

# 字符串运算符
# =	检测两个字符串是否相等，相等返回 true。	[ $a = $b ] 返回 false。
# !=	检测两个字符串是否相等，不相等返回 true。	[ $a != $b ] 返回 true。
# -z	检测字符串长度是否为0，为0返回 true。	[ -z $a ] 返回 false。
# -n	检测字符串长度是否为0，不为0返回 true。	[ -n "$a" ] 返回 true。
# str	检测字符串是否为空，不为空返回 true。

a="abc"
b="efg"
if [ $a = $b ]
then
   echo "$a = $b : a 等于 b"
else
   echo "$a = $b: a 不等于 b"
fi

# 文件测试运算符
# 文件测试运算符用于检测 Unix 文件的各种属性。比如检测是否可读，可写