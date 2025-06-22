#!/bin/bash

echo "Multiplication Calculator"

read -p "Enter the first number: " num1
read -p "Enter the second number: " num2

result=$(echo "$num1 * $num2" | bc -l)
echo "Result: $num1 * $num2 = $result"

