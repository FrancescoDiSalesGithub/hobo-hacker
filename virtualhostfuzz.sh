#!/bin/bash

host=$1
fuzz=$2
useragent=$3


if [ "$useragent" == "" ]
then

		echo "your requests will be visible with the user agent curl it is suggested to pass as third parameter the web user agent"

		for line in $(cat $fuzz)
		do

			scan=$(curl -o /dev/null -s -w "%{size_download}\n" http://$host -H 'Host: $line.$host')
			echo $line" - "$scan

		done

else

		for line in $(cat $fuzz)
		do

			scan=$(curl -o /dev/null -s -w "%{size_download}\n" http://$host -H 'Host: $line.$host' -H 'User-Agent:$useragent' )
			echo $line" - "$scan

		done


fi


