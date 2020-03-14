#!/bin/bash

# 将test.sh任务放到后台运行，但是关闭shell了之后，对应的任务也跟着停止
# ./test.sh &

# 两个区别是结尾带了&，终端能够接收任何输入，不然终端不再能够接收任何输入（标准输入）
# nohup sh test.sh
# nohup sh test.sh &