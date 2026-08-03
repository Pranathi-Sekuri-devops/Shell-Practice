#!/bin/bash

# command substitution
#--------------------
# Command substitution allows us to capture the output of a command and use it as a variable or
# within another command.
# This way, we can dynamically generate values based on the results of commands, making our scripts
# more flexible and powerful.

# syntax: variable_name=$(command)
# can be accessed using the $ symbol.

Date=$(date)
echo "The current date and time is: $Date"

# here date command executes in linux server and the output of the command is stored in the variable Date,
# which is then printed to the console using the echo command.

start_time=$(date +%s)
sleep 5
end_time=$(date +%s)
execution_time=$((end_time-start_time))
echo "Execution time: $execution_time seconds"
# the above code calculates the execution time of a script by capturing the start and end times in seconds
# The difference between the end time and start time 
# is then calculated and stored in the execution_time variable, which can be used for performance analysis
# or optimization purposes.