# trap

|实验|简介|说明|
|---|---|---|
|lab001|example| |

## NOTICE
 - trap后面跟一个命令，接着再跟着信号量，那么当捕捉到该信号的时候，会出发trap后的命令
 - `trap '[ "$?" -eq 0 ] || echo hi' EXIT`

## 参考资料
 - https://unix.stackexchange.com/questions/79648/how-to-trigger-error-using-trap-command
 - https://www.cnblogs.com/maxgongzuo/p/6372898.html