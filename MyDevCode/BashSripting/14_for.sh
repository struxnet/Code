#!/bin/bash

MYUSERS="ammar ali shah"

for usr in $MYUSERS
do
    echo "Creating user $usr"
    sleep 1
    echo "###########################################"
    echo "Value of usr is $usr."
    echo "###########################################"
    useradd $usr
    id $usr
done