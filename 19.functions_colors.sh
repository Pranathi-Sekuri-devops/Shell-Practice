#!/bin/bash

user=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
W="\e[0m"

if [ $user -ne 0 ]; then
    echo " $R Error : user should have root previliges $W"
    exit 1
fi

check() 
{
    if [ $1 -ne 0 ]; then
        echo " $G Installing $2 ... $W"
        dnf install $2 -y
        validate $? $2
    else
        echo " $Y $2 is already installed ! $W"
        exit 1
    fi
}

validate() 
{
    if [ $1 -ne 0 ]; then
        echo " $R Error : Failed to install $2 $W"
    else
        echo " $G $2 is successfully installed ! $W "
    fi
}

dnf list installed mysql
check $? "mysql" 

dnf list installed nginx
check $? "nginx" 

dnf list installed python3
check $? "python3" 


# as already 3 packaged got installed