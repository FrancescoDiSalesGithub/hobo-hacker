#!/bin/bash

ip=$1
portsfile=$2

for port in $(cat $portsfile)
do
	
	nc -z $ip $port > /dev/null 2>&1
	if [ $? -eq 0 ] 
	then
		echo "port $port is open"
	fi

done

