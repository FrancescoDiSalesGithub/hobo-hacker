#!/bin/bash

counter=$1
host=$2

for item in $(seq 1 $counter)
do

	curl -L -o document_$counter $host/$item

done
