#!/bin/bash

# reading variables
#-----------------
# Reading variables allows us to capture user input during the execution of a script, making it more 
# interactive and adaptable to different scenarios. 
# This way, we can prompt the user for input and use that input to perform specific actions or calculations 
# within the script.

# syntax: read variable_name
# can be accessed using the $ symbol.

read "Please enter the first name: " name1
read "Please enter the second name: " name2

echo "$name1, $name2"
