#!/bin/bash

# reading variables securely
#-------------------------
# Reading variables securely allows us to capture sensitive user input, such as passwords or other 
# confidential information without displaying it on the screen, enhancing security and privacy
# during script execution.

# syntax: read -s variable_name
# can be accessed using the $ symbol.

echo "Please enter the name: "
read name
echo "Please enter the password: "
read -s password
echo "You entered: $name, $password"

# for eg : if my runtime command is : bash 07.variables_read_secured.sh, then
# the script will prompt the user to enter the name and password, and then it will output
# the entered name and password in the format: "name, password". 
# The password will not be displayed on the screen while typing.

