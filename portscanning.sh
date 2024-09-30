#!/bin/bash

ip=$1
ports=$2

for port in $(seq 1 $ports)
do
	nc -z $ip $port > /dev/null 2>&1
	if [ $? -eq 0 ] 
	then
		echo "port $port is open"
	fi

done

