#!/bin/bash

# 这是注释

# 多行注释
:<<EOF
这是多行注释
echo hello
EOF

# 多行注释
:<<'
多行注释
'

:<<!
多行注释
!