#!/bin/bash
# Sum of first N natural numbers

read -p "Enter a number: " n
sum=0
while ((n >= 1)); do
	sum=$((sum + n))
	((n--))
done

echo "The sum of first N number is: $sum"
