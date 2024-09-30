#!/bin/bash


while [ true ]
do

	
	echo "insert http request: "
	
	input=""
	while IFS= read -r line; do
    		input+="$line"$'\n'
	done

	echo "insert host to forward request:"
	host=read host
	echo "insert port"
	port=read port


	echo $input | nc $host $port
done
