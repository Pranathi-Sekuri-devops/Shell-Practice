#!/bin/bash

# mysql installation script with error handling
# ----------------------------------------------

user=$(id -u)

if [$user -ne 0]; then
    echo " ERROR : user should have root previleges "
    exit 1 # stopping the script to run further
fi

dnf install mysql -y

if [ $? -ne 0]; then
    echo " ERROR : mysql installation failed "
else 
    echo " mysql is successfully installed ! "
