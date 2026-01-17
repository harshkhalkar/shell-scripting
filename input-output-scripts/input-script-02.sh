#!/bin/bash

hostname=`hostname`
echo
echo "Hello, This is basic input script & My server name is $hostname"
echo "Current directory, $(pwd)"
echo "listing content, `ls -ltr`"
echo
echo "What is your name?"
read guestname
echo
echo "Hello $guestname"
