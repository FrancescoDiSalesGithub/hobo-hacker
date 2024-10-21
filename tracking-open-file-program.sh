#!/bin/bash

strace -e trace=open,close,read,write $1