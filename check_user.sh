#!/bin/bash
STATE_OK=0
STATE_WARNING=1
STATE_CRITICAL=2
STATE_UNKNOWN=3
USER=`who | awk -F " " '{print $1}' | wc -l`
echo $USER
if [ $USER -gt 4 ]
then
	echo "CURRENT USER is CRITICAL"
	exit $STATE_CRITICAL
elif [ $USER -gt 2 ]
then
	echo "CURRENT USER is WARINING"
	exit $STATE_WARNING
elif [ $USER -le 2 ]
then
	echo "CURRENT USER is OK"
	exit $STATE_OK
else
	echo "CURRENT USER is UNKNOWN"
	exit $STATE_UNKNOWN
fi
