#!/bin/bash

echo "Please enter a number:"
read number

if [[ "$number" =~ ^-?[0-9]+$ ]]; then
    echo "The table for the number $number is:"
    i=1
    while [ $i -le 10 ];do
        echo "$i * $number = $((i * number))"
        ((i++))
    done
else
    echo "Error: The input is not a valid number."
fi
