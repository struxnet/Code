#!/bin/bash

#This script displays system information

echo "This is my first script"
echo
echo "############################################"
echo "The uptime of system is:"
uptime
echo "############################################"
echo "Memoty utilization is:"
free -g
echo "############################################"
echo "Disk Utilization is:"
df -h