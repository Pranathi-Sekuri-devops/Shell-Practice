#!/bin/bash

# Special characters in variables
#----------------------------------
# Special characters in variables can be used to enhance the functionality and flexibility of shell scripts.
# Some common special characters include:
# $ - Used to access the value of a variable.
# below special characters are used after the $ sign to perform specific operations or retrieve specific 
# information.

# @ - Used to access all the positional parameters passed to a script.
# * - Represents all files in the current directory.
# ! - Used to access the process ID of the last background command.
# 0 - Represents the name of the script itself.
# PWD - Represents the current working directory.
# USER - Represents the username of the current user.
# HOME - Represents the home directory of the current user.
# $ - Represents the process ID of the current shell.
# ? - Represents a single character in a filename.
# # - Used to get the length of a variable's value. 

echo "All positional parameters: $@"
echo "All files in the current directory: $*"
echo "Process ID of the last background command: $!"
echo "Name of the script: $0"
echo "Current working directory: $PWD"
echo "Username of the current user: $USER"
echo "Home directory of the current user: $HOME"
echo "Process ID of the current shell: $$"
echo "A single character in a filename: $?"
echo "Length of a variable's value: ${#USER}"

