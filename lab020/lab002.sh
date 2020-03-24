#!/bin/bash

# 当前目录下，所有t开头的文件
# sed -i '' 's/tom/jack/g' `grep foo -rl --include="t*" ./`

# mac下用的
find . -name '*.txt' -print0 | xargs -0 sed -i "" "s/tom/jack/g"