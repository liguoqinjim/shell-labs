#!/bin/bash

a=admin@qq.com
echo $a
b=${a/@/%40}
echo $b

str="apple, tree, apple tree"  
echo ${str/apple/APPLE}   # 替换第一次出现的apple  
echo ${str//apple/APPLE}  # 替换所有apple  
