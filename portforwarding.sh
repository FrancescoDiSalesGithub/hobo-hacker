#!/bin/bash

port=$1
ip=$2
port2=$3

mkfifo backpipe

while true; do

    nc -l $port < backpipe | nc $ip $port2 > backpipe

done
 
