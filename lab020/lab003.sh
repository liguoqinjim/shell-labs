#!/bin/bash

# example
# sed -e "s/li.com\/weixin\/server/1/g" data/temp03.txt

# -e
# sed -e "s/li.com\/weixin\/server/github.com\/liguoqinjim\/iris_template/g" data/temp03.txt

sed -i '' "s/li.com\/weixin\/server/github.com\/liguoqinjim\/iris_template/g" "data/temp03.txt"