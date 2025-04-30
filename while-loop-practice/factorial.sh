#!/bin/bash
# Script to calculate factorial of a number

read -p "Enter a positive number: " n
fact=1

while ((n >= 1)); do
	fact=$((fact * n))
	((n--))
done

echo "Factorial of the number is: $fact"
