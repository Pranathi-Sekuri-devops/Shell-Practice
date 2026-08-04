#!/bin/bash

# data types in shell scripting
#-----------------------------
# In shell scripting, variables are typically treated as strings by default. However, you can also
# work with numbers and perform arithmetic operations using specific syntax.

# The main data types in shell scripting are:
# --------------------------------------------
# 1. String: A sequence of characters enclosed in quotes (single or double).
# eg : name="Malar" or name='Malar'

name1="Malar"
name2='Ram'
echo "$name1 and $name2 are learning shell scripting together."


# 2. Integer: Whole numbers without decimal points.
# eg : age=25

num1=10
num2=20
num3=30
sum=$((num1+num2))
echo " the sum is : $sum"
echo " the sum is : $sum + $name1"

# $((...)) - Used for arithmetic operations in shell scripting. It allows you to perform calculations with
# integers and store the result in a variable.


# 3. Float: Numbers with decimal points (not natively supported in all shells,
#    but can be handled using external tools like bc or awk).
# eg : pi=3.14

pi=3.14

echo "Value of pi: $pi"
# it will take 3.14 as it is a string value, not a float value.
radius=5
area=$(echo "$pi * $radius * $radius" | bc)
echo "area of a circle is : $area"

# To perform calculations with floating-point numbers, you can use the `bc` command or `awk`.
# bc command is a command-line calculator that supports floating-point arithmetic.
# how to install bc command in my system?
# For Red Hat/CentOS-based systems, you can install it using:
# sudo dnf install bc 
# echo "$pi * $radius * $radius" - This part generates the expression to calculate
# the area of a circle using the formula π * r^2, where $pi is the value of pi and $radius is the radius 
# of the circle.
# | bc - This part pipes the expression to the `bc` command, which evaluates the
# expression and returns the result. The result is then stored in the variable `area`.

   
# 4. Boolean: Represents true or false values (not a native data type in shell scripting,
#    but can be simulated using integers or strings).
# eg : is_valid=true or is_valid=false

if [ $num1 -lt $num2 ]; then
    is_valid=true
else
    is_valid=false
fi
echo "Is num1 less than num2? $is_valid"

# -lt is a comparison operator that stands for "less than". 
# fi represents the end of an if statement in shell scripting.


# 5. Array: A collection of values stored in a single variable, accessible by index.
# eg : fruits=("apple" "banana" "cherry")

fam=("amma" "nana" "appa" "athamma")
echo " family members : ${fam[@]}"
echo " ladies of the family : ${fam[0]}, ${fam[3]}"
echo " gents of the family : ${fam[1]}, ${fam[2]}"
echo " total family members : ${#fam[@]}"

# @ - Used to access all the elements of an array.
# # - Used to get the length of an array (number of elements). also called as size of the array.
# ${array_name[index]} - Used to access a specific element of an array by its index.
# index starts from 0, so the first element is at index 0, the second element is at index 1, and so on.
# max index of an array is (length of the array - 1).


# 6. Associative Array: A collection of key-value pairs, where each key is unique and maps to a value.
# eg : declare -A colors=( ["red"]="#FF0000" ["green"]="#00FF00" ["blue"]="#0000FF" )

declare -A emp=([name]="Malar" [age]=26 [dept]="IT")
echo "Employee Name: ${emp[name]}"
echo "Employee Age: ${emp[age]}"
echo "Employee Department: ${emp[dept]}"


# 7. Null: Represents the absence of a value or an empty variable.
# eg : unset variable_name or variable_name=""

unset null
if [ -z $null ]; then
    echo "The variable is null or empty."
else
    echo "The variable has a value."
fi

# unset - Used to remove a variable or function from the shell environment.
# -z is a conditional expression that checks if a variable is null or empty.



