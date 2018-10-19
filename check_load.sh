#!/bin/bash
STATE_OK=0
STATE_WARNING=1
STATE_CRITICAL=2
STATE_UNKNOWN=3
a=$(nproc)
b=$(cat /proc/loadavg |awk '{print $2}' | awk -F "." '{print $1}')
load=$(cat /proc/loadavg |awk '{print $2}')
if [ "$b" -gt "$a" ]
then
   echo "Load Average $load is CRITICAL"
   exit $STATE_CRITICAL
elif [ "$b" -eq "$a" ]
then
    echo "Load Average $load is WARNING"
    exit $STATE_WARNING
elif [ "$b" -lt "$a" ]
then
  echo "Load Average $load is OK"
    exit $STATE_OK
else
    echo "Load Average is UNKNOWN"
    exit $STATE_UNKNOWN
fi
