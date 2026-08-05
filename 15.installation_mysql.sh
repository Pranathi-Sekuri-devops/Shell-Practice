#!/bin/bash
# mysql installation script with error handling
# ----------------------------------------------
# version-1
# ----------
# user=$(id -u)

# if [$user -ne 0]; then
#     echo " ERROR : user should have root previleges " 
# fi

# dnf install mysql -y

# if [ $? -ne 0]; then
#     echo " ERROR : mysql installation failed "
# else 
#     echo " mysql is successfully installed ! "


# 34.203.245.78 | 172.31.23.160 | t3.micro | https://github.com/Pranathi-Sekuri-devops/Shell-Practice.git
# [ ec2-user@ip-172-31-23-160 ~/Shell-Practice ]$ sh 15.installation_mysql.sh
# 15.installation_mysql.sh: line 8: [1001: command not found
# Error: This command has to be run with superuser privileges (under the root user on most systems).
# 15.installation_mysql.sh: line 21: syntax error: unexpected end of file

# version-2
# ----------

user=$(id -u)

if [ $user -ne 0 ]; then # corrected if syntax
    echo " ERROR : user should have root previleges "
fi

dnf install mysql -y

if [ $? -ne 0 ]; then
    echo " ERROR : mysql installation is failed "
else
    echo " mysql is successfully installed ! "
fi # closed if 

# 34.203.245.78 | 172.31.23.160 | t3.micro | https://github.com/Pranathi-Sekuri-devops/Shell-Practice.git
# [ ec2-user@ip-172-31-23-160 ~/Shell-Practice ]$ sh 15.installation_mysql.sh
#  ERROR : user should have root previleges
# Error: This command has to be run with superuser privileges (under the root user on most systems).
#  ERROR : mysql installation is failed

# version-3
# ----------

user=$(id -u)

if [ $user -ne 0 ]; then 
    echo " ERROR : user should have root previleges "
    exit 1 # stopping script from proceeding further when error is encountered
fi

dnf install mysql -y

if [ $? -ne 0 ]; then
    echo " ERROR : mysql installation is failed "
else
    echo " mysql is successfully installed ! "
fi # closed if 
