#!/bin/bash

# This script is a simple example of a bash script that prints a message

echo "###############################################"
date
echo "Checking if Httpd process is running..."
echo "###############################################"
#ls /var/run/httpd/httpd.pid
#Using -f and passing the file path directly
if [ -f /var/run/httpd/httpd.pid ]
then
    echo "Httpd process is running."
else
    echo "Httpd process is not running."
    echo "Starting the process..."
    systemctl start httpd
    if [ $? -eq 0 ]
    then
        echo "Httpd process started successfully."
    else
        echo "Failed to start Httpd process. Contact admin"
    fi
fi
echo "##############################################"
echo