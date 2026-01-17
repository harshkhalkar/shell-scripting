#!/bin/bash

a=$(date | awk '{print $1}')
if [ "$a" = Monday ] || [ "$a" = Tuesday ]
then
	echo "Today is $a."
else
	echo "Today is not Monday either Tuesday."
fi
