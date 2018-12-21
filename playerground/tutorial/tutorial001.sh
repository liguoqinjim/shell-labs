#!/bin/bash

# 变量
your_name="qinjx"
echo $your_name
echo ${your_name}

for skill in Ada Coffe Action Java; do
    echo "I am good at ${skill}Script"
done

#变量赋值的时候不要加$
your_name="xiaoming"
echo ${your_name}

#只读变量
myUrl="www.baidu.com"
readonly myUrl 
#会报错
myUrl="www.google.com"

#删除变量
unset your_name
echo ${your_name}
