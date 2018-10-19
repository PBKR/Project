#!/bin/bash
STATE_OK=0
STATE_WARNING=1
STATE_CRITICAL=2
STATE_UNKNOWN=3
count=`ps aux |grep mysqld |grep -v grep | wc -l `
if [ $count -eq 0 ]
then
    echo "Mysql service is not Running.."
    exit $STATE_CRITICAL
elif [ $count -eq 1 ]
then
     echo "Mysql service is Running..."
     exit $STATE_OK
elif [ $count -eq 2 ]
then
     echo "Mysql service is UNKNOWN .."
     exit $STATE_UNKNOWN
fi
