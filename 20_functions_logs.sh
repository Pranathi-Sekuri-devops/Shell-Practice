#!/bin/bash

# version - 5
# ------------
# logging results in log files.

user=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
W="\e[0m"

logs_folder="/var/log/shellscript"
script_name=$(echo $0 | cut -d "." -f1) # removing .sh part from the filename 20_functions_logs.sh 
log_file="$logs_folder/$script_name.log"

mkdir -p $logs_folder  # -p will check if dir already exists, else it creates. without -p if dir already exists, it throws an error.
echo "script execution started at : $(date)"

if [ $user -ne 0 ]; then
    echo -e " $R Error : user should have root previliges $W"
    exit 1
fi

check() 
{
    if [ $1 -ne 0 ]; then
        echo -e " $G Installing $2 ... $W"
        dnf install $2 -y &>> $log_file
        validate $? $2
    else
        echo -e " $Y $2 is already installed ! $W"
    fi
}

validate() 
{
    if [ $1 -ne 0 ]; then
        echo -e " $R Error : Failed to install $2 $W"
    else
        echo -e " $G $2 is successfully installed ! $W "
    fi
}

dnf list installed mysql &>> $log_file
check $? "mysql" 

dnf list installed nginx &>> $log_file
check $? "nginx" 

dnf list installed python3 &>> $log_file
check $? "python3" 