#!/bin/bash

# Environment variables
#-------------------
# Environment variables are variables that are set in the operating system and are available to all
# processes running on the system. They can be used to store configuration settings, paths, and
# other information that needs to be accessed by multiple programs or scripts.

# one such environment variable is the PATH variable, which contains a list of directories that the shell
# searches for executable files. When you type a command in the terminal, the shell looks for the 
# corresponding executable file in the directories listed in the PATH variable.

# and we can find the value of the PATH variable by using the echo command as follows:
echo $PATH  

# for eg : if my runtime command is : bash 08.variables_ENV.sh, then
# the output will be the value of the PATH variable, which is a colon-separated list of directories 
# that the shell searches for executable files. 
# The exact value of the PATH variable may vary depending on the operating system and the user's 
# configuration, but it typically includes directories such as /usr/local/bin, /usr/bin, and /bin.



