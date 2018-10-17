#!/bin/bash

file1=(`md5sum $1`) # 一定要加括号，表示字符串分割
file2=(`md5sum $2`)

if [ "$file1" = "$file2" ]
then
    echo "Files have the same content"
else
    echo "Files have NOT the same content"
fi
