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
else
    echo "Your number is less than or equal to 100"
fi 

echo "Script execurttion is completed."