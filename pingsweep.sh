#!/bin/bash

ip=$1

for host in {1..255} 
do

	result=$(ping -c 1 $ip.$host | grep time)
	echo $result
	

done
