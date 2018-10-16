#!/bin/bash

current=`date "+%Y-%m-%d %H:%M:%S"`
#时间戳，秒  
timeStamp=`date -d "$current" +%s`
echo $timeStamp

#时间戳，精确到毫秒  
currentTimeStamp=$((timeStamp*1000+`date "+%N"`/1000000)) 
echo $currentTimeStamp