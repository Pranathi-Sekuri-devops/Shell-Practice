#!/bin/bash

# data types in shell scripting
#-----------------------------
# In shell scripting, variables are typically treated as strings by default. However, you can also
# work with numbers and perform arithmetic operations using specific syntax.

# The main data types in shell scripting are:
# 1. String: A sequence of characters enclosed in quotes (single or double).
# eg : name="Malar" or name='Malar'

# 2. Integer: Whole numbers without decimal points.
# eg : age=25

# 3. Float: Numbers with decimal points (not natively supported in all shells,
#    but can be handled using external tools like bc or awk).
# eg : pi=3.14

# 4. Boolean: Represents true or false values (not a native data type in shell scripting,
#    but can be simulated using integers or strings).
# eg : is_valid=true or is_valid=false

# 5. Array: A collection of values stored in a single variable, accessible by index.
# eg : fruits=("apple" "banana" "cherry")

# 6. Associative Array: A collection of key-value pairs, where each key is unique and maps to a value.
# eg : declare -A colors=( ["red"]="#FF0000" ["green"]="#00FF00" ["blue"]="#0000FF" )

# 7. Null: Represents the absence of a value or an empty variable.
# eg : unset variable_name or variable_name=""

num1=10
num2=20
sum=$((num1+num2))
echo " the sum is : $sum"
