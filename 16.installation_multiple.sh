#!/bin/bash

# installing multiple packages with the same script
# ---------------------------------------------------
# version -1
# -----------
user=$(id -u)

if [ $user -ne 0 ]; then
    echo " Error : user should have root previliges "
    exit 1
fi

dnf install mysql -y

if [ $? -ne 0 ]; then
    echo " Error : Failed to install mysql "
else
    echo " mysql is successfully installed ! "
fi

dnf install nginx -y

if [ $? -ne 0 ]; then
    echo " Error : Failed to install nginx "
else
    echo " nginx is successfully installed ! "
fi

dnf install mongodb-mongosh -y

if [ $? -ne 0 ]; then
    echo " Error : Failed to install mongodb-mongosh "
else
    echo " mongodb-mongosh is successfully installed ! "
fi

dnf install python-3 -y

if [ $? -ne 0 ]; then
    echo " Error : Failed to install python-3 "
else
    echo " python-3 is successfully installed ! "
fi

# there are only 4 actual commands to install 4 packages .
# but the no of lines we got are more. 

# goal of scripting or programming language :
# --------------------------------------------
# less lines - less execution time - more performance
# reuse the code
# readability

# to achieve that, we use functions

