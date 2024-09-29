#!/bin/bash

host=$1
body=$2

curl -X POST -H 'Content-type: application/json' http://$host -d '$body'
