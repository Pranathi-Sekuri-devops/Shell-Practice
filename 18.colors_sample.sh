#!/bin/bash

# color code in shell
#--------------------
# version -1
# ------------
# r="\e[31m"
# g="\e[32m"
# y="\e[33m"

# echo -e "$r hello world" 
# echo " this is red color" # the color passes on to the next echos as well

# version -2
# ------------
r="\e[31m"
g="\e[32m"
y="\e[33m"
n="\e[0m"
echo -e "$r hello world $n" # hello world in red color and color changes to normal color
echo " this is red color"  # in white color.


