#!/bin/bash

VALUE=$(ifconfig | grep -v LOOPBACK |grep -ic "inet")
echo

if [ $VALUE -eq 1]
then
    echo "1 active interface found on network."
elif [ $VALUE -gt 1 ]
then
    echo "$VALUE active interfaces found on network."
else
    echo "No active interfaces found on network."
fi
  
echo "Script execurttion is completed."