#!/bin/bash
host=$1
port=80
nmap $host -p $port
if [ $? -ne 0 ]
then
        echo "PORT IS UNREACHABLE"
else
        echo "PORT IS LESSION"
fi

