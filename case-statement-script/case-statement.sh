#!/bin/bash

echo
echo "Please chose one of the option below:"
echo "a = Display date and time"
echo "b = List file and directory"
echo "c = List user logged in"
echo "d = Check system uptime"
echo
read choices
case $choices in
	a) date;;
	b) ls -l;;
	c) who;;
	d) uptime;;
	*) Invalid Choice - Bye!! ;;
esac
