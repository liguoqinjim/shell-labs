#!/bin/bash

exist(){
    GO=$(which go1)
    # 注意这里要是没找到是返回1的
    echo "$?"
    if [ "$?" = "1" ]; then
        echo "not exist"
    fi
}

exist