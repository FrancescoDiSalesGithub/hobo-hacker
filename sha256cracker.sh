#!/bin/bash


for  item in $(cat $2)
do

    hash=$(echo $item | sha256sum | awk '{print $1}')

    if [ "$hash" == "$1" ] 
    then

        echo "hash cracked => plaintext value: $item"
        break

    fi

done