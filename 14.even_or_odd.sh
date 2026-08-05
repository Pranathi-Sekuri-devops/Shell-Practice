#!/bin/bash

#even or odd number check
#----------------------
# This script checks whether a given number is even or odd.

read -p "Enter a number: " num
if [ $(($num%2)) -eq 0 ]; then
    echo "$num is an even number"
else
    echo "$num is an odd number"
fi

# -p : Used with the read command to prompt the user for input.
# The modulo operator (%) is used to find the remainder when the number is divided by 2. 
# If the remainder is 0, the number is even; otherwise, it is odd.

