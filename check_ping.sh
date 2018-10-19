#!/bin/bash
host=$1
if ping -c 1 $host
then
	echo " Host is alive"
else
	echo "Host is Down"
fi
