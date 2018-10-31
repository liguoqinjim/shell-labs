#!/bin/bash

echo "传入"$#"个参数"

if [ $# != 2 ]
then
    echo "参数输入不正确"
    exit
fi

echo "参数正确"