#!/bin/bash

#单引号(单引号里面的变量还是会原样输出)
str='this is a string'
echo ${str}
str2='this is a string$str'
echo ${str2}

#双引号(双引号里面的变量会被替换掉)
your_name="xiaoming"
str="Hello,I know you are ${your_name}"
echo ${str}

# 拼接字符串(注意单引号里面的值都是会原样输出的)
your_name="runoob"
# 使用双引号拼接
greeting="hello, "$your_name" !"
greeting_1="hello, ${your_name} !"
echo $greeting  $greeting_1
# 使用单引号拼接
greeting_2='hello, '$your_name' !'
greeting_3='hello, ${your_name} !'
echo $greeting_2  $greeting_3

#字符串长度
string="abcd"
echo ${#string}

#提取子字符串
string="runoob is a great site"
echo ${string:1:4}#从index=1开始截取4个字符
