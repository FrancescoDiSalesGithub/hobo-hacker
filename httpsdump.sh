#!/bin/bash

export SSLKEYLOGFILE="$2/sslkeys.log"

if [ "$SSLKEYLOGFILE" == "" ]
then
    echo "please insert path for ssl log file"
else

    interface=$1
    program_exists=$(ls /bin | grep chromium)

    
    if [ "$program_exists" != "" ] 
    then
        echo "listening on interface: $interface"

        chromium --no-sandbox &
        sleep 5
        sudo tcpdump -i $interface -w https_traffic.pcap port 443 
        
    else
        program_exists=$(ls /snap/bin | grep chromium)
        
        if [ "$program_exists" != "" ] 
        then
            echo "listening on interface: $interface"

            chromium --no-sandbox &
            sleep 5
            sudo tcpdump -i $interface -w $2/https_traffic.pcap port 443 
        else
            echo "chromium not found please install it"
        fi

        
    fi

      
    
    
fi