#!/bin/bash

a=this
# 打印a变量(双引号里面也可以引用)
echo $a is a test 
echo "$a is a test"

# 单引号不能引用
echo '$a'

# -n，不换行
echo -n hello
echo world
