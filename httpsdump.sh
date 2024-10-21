#!/bin/bash

export SSLKEYLOGFILE=$2

if [ "$SSLKEYLOGFILE" == "" ]
then
    echo "please insert path for ssl log file"
else

user=$(whoami)
interface=$1


    if [ "$user" == "root" ]
    then
        echo "listening on every interface"
        sudo tcpdump -i $interface -w https_traffic.pcap port 443
    else
        echo "please run this script as root"
    fi

fi