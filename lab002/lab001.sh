#!/bin/bash

value1=hello
value2=world

# 拼接
value3=$value1$value2
echo "$value3"

# 拼接，结果是(hello+world)
value4=$value1+$value2
echo "$value4"