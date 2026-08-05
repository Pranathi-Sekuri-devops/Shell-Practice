#!/bin/bash

# mysql installation script with error handling
# ----------------------------------------------

# if installed successfully, echo success msg , else failure msg. 

user=$((id -u))

if [$user -ne 0]; then
    echo " user should have root previleges "
    exit 1 # stopping the script to run further
fi

dnf install mysql -y

if [ $? -ne 0]; then
    echo " mysql installation failed "
else 
    echo " mysql is successfully installed ! "

 