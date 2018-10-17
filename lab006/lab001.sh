#!/bin/bash

str="aaa,bbb,ccc,ddd"

# 第一种方式(会用到管道，数据大的情况下会比较慢)
echo $str |awk -F, '{print $1}' 
echo $str |cut -d"," -f1 

# 第二种方式(空格会直接切开，所以把逗号换成空格)
arr=(${str//,/ })
echo ${arr[@]}
echo ${!arr[@]}