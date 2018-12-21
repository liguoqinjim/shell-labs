#!/bin/bash

# 定义数组，赋值
array1=(1 2 3 4 5)

array2=(
    1
    2
    3
    4
    5
)

array2[9]=10

# 读取元素
echo ${array1[3]}
# 读取所有元素
echo ${array2[@]}

# 获取数组的长度
echo ${#array1[@]}
echo ${#array2[*]}
# 获取单个元素的长度
echo ${#array2[0]}