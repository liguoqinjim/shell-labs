# ssh远程echo

## 命令
 - `echo "$(cat limits.conf)" | ssh root@$1 -T "cat >> /etc/security/limits.conf"`，追加limits.conf的内容到远程主机$(cat limits.conf)的引号一定要加。