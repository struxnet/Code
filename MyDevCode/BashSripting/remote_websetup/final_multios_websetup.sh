#!/bin/bash

#Variable Declaration

#PACKAGE="httpd wget unzip"
#SVC="httpd"
URL="https://www.example.com/sample.zip"
ART_NAME="2098_health"
TEMPDIR="/tmp/webfiles"


yum --help &> /dev/null

if [$? -eq 0 ]
then
    #Set Variable for Ubuntu
    PACKAGE="httpd wget unzip"
    SVC="httpd"
    echo "Running Setup on CentOS/RHEL"

    # Installing Dependencies
    sudo yum install $PACKAGE -y > /dev/null
    echo "############################################"
    echo "Installing Apache Web Server"
    echo "############################################"

    # Start & Enable Service
    sudo systemctl start $SVC
    sudo systemctl enable $SVC

    # Create Temporary Directory
    mkdir -p $TEMPDIR
    cd $TEMPDIR
    wget $URL > /dev/null
    unzip $ART_NAME.zip
    echo "############################################"
    echo "Copying files to web server directory"
    echo "############################################"
    sudo cp -r $ART_NAME/* /var/www/html/
    echo "############################################"
    echo "Starting Apache Web Server"
    sudo systemctl restart $SVC
    echo "############################################"
    echo "Web server setup completed. You can access it at http://localhost"
    echo "############################################"
    echo "This is my web sample script"
    echo
    echo "############################################"
    rm -rf $TEMPDIR
else
     #Set Variable for CentOS/RHEL
    PACKAGE="apache2 wget unzip"
    SVC="apache2"
    echo "Running Setup on Ubuntu"

    # Installing Dependencies
    sudo apt update > /dev/null
    sudo apt install $PACKAGE -y > /dev/null
    echo "############################################"
    echo "Installing Apache Web Server"
    echo "############################################"
    # Create Temporary Directory
    mkdir -p $TEMPDIR
    cd $TEMPDIR
    wget $URL > /dev/null
    unzip $ART_NAME.zip
    echo "############################################"
    echo "Copying files to web server directory"
    echo "############################################"
    sudo cp -r $ART_NAME/* /var/www/html/
    echo "############################################"
    echo "Starting Apache Web Server"
    sudo systemctl restart $SVC
    echo "############################################"
    echo "Web server setup completed. You can access it at http://localhost"
    echo "############################################"
    echo "This is my web sample script"
    echo
    echo "############################################"
fi