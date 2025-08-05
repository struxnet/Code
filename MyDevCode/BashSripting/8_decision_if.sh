#!/bin/bash

read -p "Enter a number: " NUM
echo

if [ $NUM -gt 100 ]
then
    echo "we have entered in IF Block."
    sleep 3
    echo "Your number is greater then 100"
    echo
    date
fi 

echo "Script execurttion is completed."