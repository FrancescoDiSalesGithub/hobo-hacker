#!/bin/bash

port=$1
ip=$2
port2=$3

mkfifo backpipe

echo "forwarding on port: $port for $ip:$port2"

while true; do

    nc -l $port < backpipe | nc $ip $port2 > backpipe

done
 
