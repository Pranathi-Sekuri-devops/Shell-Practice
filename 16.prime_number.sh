#!/bin/bash



#prime number check
#-------------------
# This script checks whether a given number is prime or not.
read -p "Enter the number:" num

if [ $num -le 1 ]; then
    echo "$num is not a prime number"
else
    is_prime=1
    for (( i=2; i<=$((num/2)); i++ )); do
        if [ $((num%i)) -eq 0 ]; then
            is_prime=0
            break
        fi
    done

    if [ $is_prime -eq 1 ]; then
        echo "$num is a prime number"
    else
        echo "$num is not a prime number"
    fi
fi

# -le : stands for "less than or equal to" 
# explanation: A prime number is a natural number greater than 1 that has no positive divisors other than 
#              1 and itself.

# code explanation:
# -----------------

# The script prompts the user to enter a number and checks if it is prime or not.
# It first checks if the number is less than or equal to 1, in which case it is not prime.
# If the number is greater than 1, it initializes a variable is_prime to 1 (assuming the number is prime).
# It then uses a for loop to check for divisors from 2 to half of the number. If any divisor is found, 
# it sets is_prime to 0. If no divisor is found, it remains 1, indicating the number is prime.

# test cases:
# ------------
# when num=1, 
# first it checks the if condition [ $num -le 1 ] .
# 1<=1, so it prints "1 is not a prime number" and exits the script.

# when num=2,
# first it checks the if condition [ $num -le 1 ] .
# 2>1, so it goes to the else block and initializes is_prime=1
# then it enters the for loop with i=2 and checks the condition i<=$((num/2)) .
# 2<=1, so the loop does not execute and it goes to the final if condition [ $is_prime -eq 1 ] .
# is_prime=1, so it prints "2 is a prime number" and exits the script.

# when num=3,
# first it checks the if condition [ $num -le 1 ] .
# 3>1, so it goes to the else block and initializes is_prime=1
# then it enters the for loop with i=2 and checks the condition i<=$((num/2)) .
# 2<=1, so the loop does not execute and it goes to the final if condition [ $is_prime -eq 1 ] .
# is_prime=1, so it prints "3 is a prime number" and exits the script.

# when num=4,
# first it checks the if condition [ $num -le 1 ] .
# 4>1, so it goes to the else block and initializes is_prime=1
# then it enters the for loop with i=2 and checks the condition i<=$((num/2)) .
# 2<=2, so the loop executes and checks the condition [ $((num%i)) -eq 0 ] .
# 4%2=0, so it sets is_prime=0 and breaks the loop.
# finally it checks the if condition [ $is_prime -eq 1 ] .
# is_prime=0, so it prints "4 is not a prime number" and exits the script.

# when num=5,
# first it checks the if condition [ $num -le 1 ] .
# 5>1, so it goes to the else block and initializes is_prime=1
# then it enters the for loop with i=2 and checks the condition i<=$((num/2)) .
# 2<=2, so the loop executes and checks the condition [ $((num%i)) -eq 0 ] .
# 5%2!=0, so it continues to the next iteration with i=3.
# 3<=2, so the loop does not execute and it goes to the final if condition [ $is_prime -eq 1 ]
# is_prime=1, so it prints "5 is a prime number" and exits the script.

# when num=7,
# first it checks the if condition [ $num -le 1 ] .
# 7>1, so it goes to the else block and initializes is_prime=1
# then it enters the for loop with i=2 and checks the condition i<=$((num/2)) .
# 2<=3, so the loop executes and checks the condition [ $((num%i)) -eq 0 ] .
# 7%2!=0, so it continues to the next iteration with i=3.
# 3<=3, so the loop executes and checks the condition [ $((num%i)) -eq 0 ] .
# 7%3!=0, so it continues to the next iteration with i=4.
# 4<=3, so the loop does not execute and it goes to the final if condition [ $is_prime -eq 1 ]
# is_prime=1, so it prints "7 is a prime number" and exits the script.