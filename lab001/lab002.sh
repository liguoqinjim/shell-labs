#!/bin/bash

# 昨天
yesterday=`date -d last-day +%Y-%m-%d`
echo $yesterday

# 今天
curday=`date +%Y-%m-%d`
echo $curday
 
# 20181016 17:27:43
time1=`date '+%Y%m%d %T'`
echo $time1

# 20181016 172743
time2=`date '+%Y%m%d %H%M%S'`
echo $time2

# 20181016_172743
time3=`date '+%Y%m%d_%H%M%S'`
echo $time3