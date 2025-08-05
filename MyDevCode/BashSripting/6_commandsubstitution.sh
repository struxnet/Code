#!/bin/bash

#Variables for the script with command subsitution
FREERAM=$(free -g | grep Mem | awk '{print $4}')
LOAD=`uptime | awk '{print $9}'`
ROOTFREE=$(df -h | grep '/dev/sda1' | awk '{print $4}')

#This script displays system information

echo "This is my first script"
echo
echo "############################################"
echo "Available free RAM is $FREERAM MB"
echo "############################################"
echo "############################################"
echo "Current Load Average is: $LOAD"
echo "############################################"
echo "Free Root partition size is $ROOTFREE"