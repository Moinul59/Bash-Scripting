#!/bin/bash
# Script to reverse a number

read -p "Enter a number: " n
orig=$n
rev_n=0

while ((n > 0)); do
      last_digit=$((n % 10))
      rev_n=$((rev_n * 10 + last_digit))
      n=$((n / 10))
done

echo "The reverse of number $orig is: $rev_n"
