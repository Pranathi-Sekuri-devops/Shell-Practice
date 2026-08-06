#!/bin/bash

# installing multiple packages with the same script using functions
# ------------------------------------------------------------------

# version -2
# -----------

user=$(id -u)

if [ $user -ne 0 ]; then
    echo " Error : user should have root previliges "
    exit 1
fi

# functions wont execute on its own. only when it is called, it will run.
validate() 
{
    if [ $1 -ne 0 ]; then
        echo " Error : Failed to install $2 "
    else
        echo " $2 is successfully installed ! "
    fi
}

dnf install mysql -y
validate $? "MySQL" # functions receive inputs like args, store in $1, $2 etc just like shell script args

dnf install nginx -y
validate $? "Nginx"

dnf install mongodb-mongosh -y
validate $? "mongodb-mongosh"

dnf install python-3 -y
validate $? "python-3"

# almost 10 lines of code got reduced now. readability and reusability is achieved. performance is same.

