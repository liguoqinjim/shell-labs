#!/bin/bash

a='tom'
b='jack'
sed -e "s/$a/$b/g" "data/temp01.txt"

a="li.com/weixin/server"
b="github.com/liguoqinjim/iris_template"
sed -e 's,'"$a"','"$b"',g' "data/temp03.txt"

# sed -i '' "s/li.com\/weixin\/server/github.com\/liguoqinjim\/iris_template/g" "data/temp03.txt"
