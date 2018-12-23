#!/bin/bash

#是否存在目录
if [ ! -d "data" ]; then
    echo "data目录不存在"
else
    echo "data目录存在"
fi

#是否存在文件
if [ ! -f "data/test.txt" ]; then
    echo "文件不存在"
else
    echo "文件存在"
fi