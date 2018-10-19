#!/bin/bash
STATE_OK=0
STATE_WARNING=1
STATE_CRITICAL=2
STATE_UNKNOWN=3
count=`ps -aux | grep httpd | grep -v grep | wc -l`
if [ $count -gt 0 ]
then 
echo "HTTP Service is Running .."
exit $STATE_OK
else
echo "HTTP Service is Not Running !..."
exit $STATE_CRITICAL
fi
