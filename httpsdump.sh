#!/bin/bash

export SSLKEYLOGFILE=~/sslkeys.log
user=$(whoami)
interface=$1


if [ "$user" == "root" ]
then
    echo "listening on every interface"
    sudo tcpdump -i $interface -w https_traffic.pcap port 443
else
    echo "please run this script as root"
fi