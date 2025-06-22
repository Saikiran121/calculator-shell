#!/bin/bash

echo "Division Calculator"

read -p "Enter the numerator: " numerator
read -p "Enter the denominator: " denominator

if [ "$denominator" == "0" ]; then
    echo "Error: Division by zero is not allowed."
else
    result=$(echo "scale=4; $numerator / $denominator" | bc -l)
    echo "Result: $numerator / $denominator = $result"
fi

