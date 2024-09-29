#!/bin/bash

host=$1
fuzz=$2

for line in $(cat $fuzz)
do

	scan=$(curl -o /dev/null -s -w "%{size_download}\n" http://$host -H 'Host: $line.$host')

echo $line" - "$scan


done
