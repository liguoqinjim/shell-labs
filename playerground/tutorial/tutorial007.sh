#!/bin/bash

echo "It is a test"

#转义字符
echo "\"It is a test\""

#显示换行
echo -e "OK! \n"
echo "It is a test"

#不显示换行
echo -e "OK! \c"
echo "It is a test"

#定向到文件
# echo "It is a test" > myfile

#显示运行结果
echo `date`