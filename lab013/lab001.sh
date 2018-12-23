#!/bin/bash

# command判断
# command -v yum >/dev/null 2>&1 || { echo >&2 "I require yum but it's not installed.  Aborting."; exit 1; }

# hash判断
if hash gdate 2>/dev/null; then
    gdate "$@"
else
    date "$@"
fi

if ! hash wget 2>/dev/null; then
    echo "wget没有安装"
else
    echo "wget已安装"
fi