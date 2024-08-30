#!/bin/bash

is_prime() {
    local num=$1

    if (( num <= 1 )); then
        echo "No"
        return
    fi
    if (( num == 2 )); then
        echo "Yes"
        return
    fi
    if (( num % 2 == 0 )); then
        echo "No"
        return
    fi

    local sqrt_num
    sqrt_num=$(echo "sqrt($num)" | bc)

    for (( i=3; i<=sqrt_num; i+=2 )); do
        if (( num % i == 0 )); then
            echo "No"
            return
        fi
    done
    echo "Yes"
}

echo "Please enter a number to check if it is prime:"
read number

if [[ "$number" =~ ^-?[0-9]+$ ]]; then
    if (( number < 0 )); then
        echo "Negative numbers cannot be prime."
    else
        result=$(is_prime "$number")
        echo "$number is prime: $result"
    fi
else
    echo "Error: The input is not a valid number."
fi
