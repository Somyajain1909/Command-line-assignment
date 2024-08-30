#!/bin/bash

arr=(2 3 4 1 6 7)

array_length=${#arr[@]}
echo "Length of the array: $array_length"

max=${arr[0]}
min=${arr[0]}

for num in "${arr[@]}"; do
    if (( num > max )); then
        max=$num
    fi
    if (( num < min )); then
        min=$num
    fi
done

echo "Maximum element: $max"
echo "Minimum element: $min"
