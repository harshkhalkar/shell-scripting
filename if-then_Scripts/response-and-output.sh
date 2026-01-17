#!/bin/bash

clear
echo
echo "What is your name?"
echo
read guest1
echo

echo "Hello $guest1 sir"
echo

echo "Do you like Coffee? (y/n)"
read Like

if [ "$Like" == y ]
then
	echo "You should try Blue Bottle Coffee."
else
	echo "You should give it a try"
fi
