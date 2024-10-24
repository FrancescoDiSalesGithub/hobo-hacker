#!/bin/bash

path=$1
port=$2

echo "reading log file: $path on port: $port"
nc -lnvp $port &
tail -f $path | nc localhost $port 