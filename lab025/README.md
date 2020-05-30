# ssh操作远程的tmux

## 命令
 - `ssh root@txcent001 "tmux send-keys -t weixin_tool_server C-c  Enter"`，`C-c`表示的是ctrl+c，`weixin_tool_server`是session_name，最后加一个enter输入命令
 - `tmux send-keys -t v2ray C-z 'ls -al' Enter`，执行`ls -al`命令
 - `ssh root@txcent001 -t "tmux attach -t v2ray"`，远程连接到一个tmux session