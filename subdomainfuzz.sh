#!/bin/bash

host=$1
fuzz=$2
useragent=$3


	if [ "$useragent" == "" ]
	then


		echo "your requests will be visible with the user agent curl it is suggested to pass as third parameter the web user agent"

		for line in $(cat $fuzz)
		do

		scan=$(curl -o /dev/null -s -w "%{http_code}\n" http://$line.$host)
		echo $line" - "$scan


		done

	else

		for line in $(cat $fuzz)
		do

		scan=$(curl -o /dev/null -H 'User-Agent:$useragent' -s -w "%{http_code}\n" http://$line.$host)
		echo $line" - "$scan


		done

	fi

