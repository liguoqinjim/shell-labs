#!/bin/bash

hello() { 
    echo "hello"
    # exit 0
    exit 1
}

trap 'echo bye' exit

# 这个只有到exit code不为0的时候才会echo bye
trap '[ "$?" -eq 0 ] || echo bye' EXIT
hello

