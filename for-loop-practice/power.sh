#!/bin/bash
# Script to calculate the power of a number

read -p "Enter base: " base
read -p "Enter exponent: " exp

power=1

for ((i=1; i<=exp; i++)); do
    power=$((power * base))
done

echo "$base to the power $exp equals: $power"
