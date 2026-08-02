#!/bin/bash

# arguments
#----------
# Arguments allow us to make our scripts more flexible and reusable by enabling them to accept input values
# at runtime. 
# This way, we can use the same script for different scenarios without having to modify the script itself.

name1=$1
name2=$2

# syntax: $1, $2, $3, etc. are used to access the arguments passed to the script in runtime.

echo "$name1: $name2, I recently learned how to write and run shell scripts."
echo "$name2: That's great, $name1! I also learned how to use variables and echo commands."
echo "$name1: $name2, these basics make automation feel much easier to me."
echo "$name2: Yes, $name1, I am excited to learn more about shell scripting with you!"

# for eg : if my runtime command is : bash 05.variables_Arg.sh Malar Ram, then 
# $1 will be "Malar" and $2 will be "Ram"
# so the output will be:

# Malar: Ram, I recently learned how to write and run shell scripts.
# Ram: That's great, Malar! I also learned how to use variables and echo commands.
# Malar: Ram, these basics make automation feel much easier to me.
# Ram: Yes, Malar, I am excited to learn more about shell scripting with you!

# if i dont pass any arguments bash 05.variables_Arg.sh, then the output will be:

# : , I recently learned how to write and run shell scripts.
# : That's great, ! I also learned how to use variables and echo commands.  
# : , these basics make automation feel much easier to me.
# : , I am excited to learn more about shell scripting with you!

