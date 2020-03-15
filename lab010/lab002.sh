#!/bin/bash
# 第一种方法
echo -n "Please enter your password:"
stty -echo
read password
echo -e "\nyou password is:$password"
stty echo

# 第二种方法
echo -n "Please enter your password:"
read -s password
echo -e "\nyou password is:$password"