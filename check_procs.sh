#!/bin/bash
Process=$(top -b n1| grep running | awk -F "," '{print $2,$3,$4}')
for u in $Process
do
    echo "$u"
done

