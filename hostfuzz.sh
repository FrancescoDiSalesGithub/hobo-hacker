#!/bin/bash

host=$1
fuzz=$2

for line in $(cat $fuzz)
do

	scan=$(curl -o /dev/null -s -w "%{http_code}\n" http://$host/$line)

echo $line" - "$scan


done