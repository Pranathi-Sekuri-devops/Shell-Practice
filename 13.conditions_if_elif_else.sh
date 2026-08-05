#!/bin/bash

#if-elif-else
#-------------------
# We can use if-elif-else statements to execute different blocks of code depending on multiple conditions.

# syntax:
# --------
# if [ condition1 ]; then
#     # code to execute if condition1 is true
# elif [ condition2 ]; then
#     # code to execute if condition1 is false and condition2 is true
# else
#     # code to execute if none of the above conditions are true
# fi

num=$1
if [ $num -gt 10 ]; then
    echo "$num is greater than 10"
elif [ $num -eq 10 ]; then
    echo "$num is equal to 10"
else
    echo "$num is less than 10"
fi
