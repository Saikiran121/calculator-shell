#!/bin/bash

echo "Simple Calculator"

while true
do
    echo "Enter first number:"
    read n1
    echo "Enter second number:"
    read n6

    echo "Choose operation:"
    echo "1. Addition"
    echo "2. Subtraction"
    echo "3. Multiplication"
    echo "4. Division"
    echo "5. Exit"
    read choice

    case $choice in
        1)
            result=$(echo "$n1 + $n2" | bc -l)
            echo "Result: $result"
            ;;
        2)
            result=$(echo "$n1 - $n2" | bc -l)
            echo "Result: $result"
            ;;
        3)
            result=$(echo "$n1 * $n2" | bc -l)
            echo "Result: $result"
            ;;
        4)
            if [ "$n2" == "0" ]; then
                echo "Error: Division by zero"
            else
                result=$(echo "scale=2; $n1 / $n2" | bc -l)
                echo "Result: $result"
            fi
            ;;
        5)
            echo "Exiting Calculator."
            break
            ;;
        *)
            echo "Invalid choice. Please select 1-5."
            ;;
    esac
    echo "-------------------------"
done

