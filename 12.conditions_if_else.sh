#!/bin/bash

# conditions
#-------------
# In shell scripting, conditions allow us to make decisions based on certain criteria. 

# if-else
#----------
# We can use if-else statements to execute different blocks of code depending on whether a condition is 
# true or false.

# syntax:
# if [ condition ]; then
#     # code to execute if condition is true
# else
#     # code to execute if condition is false
# fi

if [ "$1" -gt 10 ]; then
    echo "The no is greater than 10"
else
    echo "the no is less than or equal to 10"
fi

