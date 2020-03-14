#!/bin/bash

# 运行结果输出到temp.txt
# ls > temp.txt

# 运行结果追加到temp.txt
# ls >> temp.txt

# 标准输出到temp.txt 错误输出到temp.err
# ls 1> temp.txt 2> temp.err

# 标准输出到temp.txt 错误输出也定向到标准输出
# ls 1> temp.txt 2>& 1

# 这个和2>&1的区别是 
# stdout和stderr都直接送到file中, file会被打开两次,这样stdout和stderr会互相覆盖
# ls 1> temp.txt 2> temp.txt

# &> 表示都输出到temp.txt中
# 表示stdout和stderr都重定向到temp.txt
# 就相当于  `> temp.txt 2>&1` (这里开头的1可以省略，见NOTICE)
ls &> temp.txt
ls >& temp.txt
