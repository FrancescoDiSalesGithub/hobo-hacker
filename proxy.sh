#!/bin/bash

mkfifo backpipe

port=$1

echo "proxy listening on port: $port"

while true; do

    nc -l $port < backpipe | nc localhost $port > backpipe

done

