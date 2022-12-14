#!/bin/bash

# 系统名称
os=`uname -s`
os=`echo "$os" | awk '{ print tolower($1) }'`
echo $os

# hostname
name=`hostname`
echo $name

env=$os+$name
echo $env

