#!/bin/bash

echo "Complex Number Subtraction Calculator"
echo "Format: a+bi (e.g., 3+4i or -2.5-7.1i)"

# Read first complex number
read -p "Enter the first complex number (a+bi): " num1
# Read second complex number
read -p "Enter the second complex number (c+di): " num2

# Extract real and imaginary parts using regex
if [[ $num1 =~ ^([+-]?[0-9.]+)([+-][0-9.]+)i$ ]]; then
    a="${BASH_REMATCH[1]}"
    b="${BASH_REMATCH[2]}"
else
    echo "Invalid format for the first number!"
    exit 1
fi

if [[ $num2 =~ ^([+-]?[0-9.]+)([+-][0-9.]+)i$ ]]; then
    c="${BASH_REMATCH[1]}"
    d="${BASH_REMATCH[2]}"
else
    echo "Invalid format for the second number!"
    exit 1
fi

# Subtract real and imaginary parts
real_result=$(echo "$a - $c" | bc -l)
imag_result=$(echo "$b - $d" | bc -l)

# Format the result
if [[ $imag_result == -* ]]; then
    echo "Result: $real_result${imag_result}i"
else
    echo "Result: $real_result+${imag_result}i"
fi

