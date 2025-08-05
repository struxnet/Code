#!/bin/bash

# This script demonstrates user input in bash
echo "Please enter your name:"
read NAME
echo "Hello, $NAME! Welcome to the world of Bash scripting."

read -p 'Username: ' USR
read -sp 'Passsword: ' PASS

echo
echo "Login successfull: Welcome USER $USR, "