#!/bin/bash

# reading variables
#-----------------
# Reading variables allows us to capture user input during the execution of a script, making it more 
# interactive and adaptable to different scenarios. 
# This way, we can prompt the user for input and use that input to perform specific actions or calculations 
# within the script.

# syntax: read variable_name
# can be accessed using the $ symbol.

echo "Please enter the first name: "
read name1
echo "Please enter the second name: "
read name2

echo "$name1, $name2"

# for eg : if my runtime command is : bash 06.variables_read.sh, then
# the script will prompt the user to enter the first name and second name, and then it will output the 
#  entered names in the format: "first_name, second_name".
