#!/bin/bash

USR='devops'

for host in `cat remotehosts`
do
    echo "Setting up web server on $host"
    scp multios_websetup.sh $USR@$host:/tmp/
    echo "Executing web server setup on $host"
    echo "###########################################"
    ssh $USR@$host sudo "bash /tmp/multios_websetup.sh"
    ssh $USR@$host sudo rm -f /tmp/multios_websetup.sh
    echo "###########################################" 
    echo "Web server setup completed on $host"
done
echo "All web servers have been set up."
exit 0
# --- IGNORE ---
# This script is used to deploy a web server setup script to multiple remote hosts.
# It reads the list of hosts from the 'remotehosts' file, copies the setup script
# to each host, and executes it remotely.
# The script assumes that SSH access is configured for the user 'devops' on each host
# and that the setup script is named 'multios_websetup.sh'.
# The script will print messages indicating the progress of the setup on each host.
# --- IGNORE ---
# This script is useful for automating the deployment of web servers across multiple machines.
# It can be used in scenarios where you need to set up a consistent web environment
# on several servers, such as in a development or production environment.
# --- IGNORE ---
# Note: Ensure that the 'remotehosts' file contains the correct hostnames or IP addresses
# of the remote servers where the web server setup is to be performed.
# The script will not work if the SSH keys are not set up or if the user does
# not have the necessary permissions to execute commands on the remote hosts.
# --- IGNORE ---
