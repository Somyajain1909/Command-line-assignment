#!/bin/bash

# Step 1
mkdir -p Assignment

# Step 2
touch Assignment/File1.txt

# Step 3
script_file="Table.sh"
target_file="Assignment/File1.txt"
# Check if the script file exists
if [[ -f "$script_file" ]]; then
    # Use redirection to copy content without 'cp' or 'mv'
    cat "$script_file" > "$target_file"
else
    echo "Error: The file '$script_file' does not exist."
    exit 1
fi

# Step 4
echo "Welcome to Sigmoid" >> "$target_file"

# Step 5
desktop_folder="$HOME/Desktop"
if [[ -d "$desktop_folder" ]]; then
    echo "Listing all directories and files inside the Desktop folder:"
    ls -l "$desktop_folder"
else
    echo "Error: The Desktop folder does not exist."
    exit 1
fi
