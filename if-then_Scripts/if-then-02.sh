#!/bin/bash

clear
if [ -e /home/user1/error.txt ]
then
	echo "File exist"
else
	echo "File does not exist"
fi
