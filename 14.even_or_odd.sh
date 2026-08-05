#!/bin/bash

#even or odd number check
#----------------------
# This script checks whether a given number is even or odd.

num=$1
if [ $((num%2)) -eq 0 ]; then
    echo "$num is an even no"
else
    echo "$num is an odd no"
fi

# The modulo operator (%) is used to find the remainder when the number is divided by 2. 
# If the remainder is 0, the number is even; otherwise, it is odd.
# For example, if the input number is 4, the output will be "4 is an even no".
# If the input number is 7, the output will be "7 is an odd no".
