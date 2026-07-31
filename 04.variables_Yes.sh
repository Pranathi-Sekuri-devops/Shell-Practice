#!/bin/bash

# with variables

# variables:
#------------
# variables are used to store values that can be reused throughout the script, making it easier to 
# maintain and update the script.

# advantages of using variables:
#---------------------------------
# 1. Reusability: Variables allow you to store values that can be reused throughout the script, reducing redundancy and making the code more concise.
# 2. Maintainability: If you need to change a value, you can simply update the variable instead of searching and replacing it in multiple places in the script, making it easier to maintain and update the code.
# 3. Readability: Using descriptive variable names can make the code more readable and easier to understand, especially for complex scripts with many values and operations.
# 4. Flexibility: Variables can be assigned different values at runtime, allowing for more dynamic and flexible scripts that can adapt to different inputs and conditions.  
# 5. prevents errors: Using variables can help prevent errors that may occur when hardcoding values in the script, such as typos or inconsistencies in formatting.

# syntax: variable_name="value" 
# can be accessed using the $ symbol.
 
name1="Malar"
name2="Ram"
echo "$name1: $name2, I recently learned how to write and run shell scripts."
echo "$name2: That's great, $name1! I also learned how to use variables and echo commands."
echo "$name1: $name2, these basics make automation feel much easier to me."
echo "$name2: Yes, $name1, I am excited to learn more about shell scripting with you!"