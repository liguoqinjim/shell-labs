#!/bin/bash

# 有一个参数，传入的时候遍历的根目录
function getdir(){
    for element in `ls $1`
    do  
        dir_or_file=$1"/"$element
        if [ -d $dir_or_file ]
        then 
            getdir $dir_or_file
        else
            echo $dir_or_file
        fi  
    done
}

root_dir="/Users/li/Workspace/shell-labs/lab014"
getdir $root_dir