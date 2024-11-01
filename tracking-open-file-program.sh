#!/bin/bash

log=$2

if [ "$log" == "" ]
then
    strace -e trace=open,close,read,write $1
else
    strace -e trace=open,close,read,write $1 > $log
fi
