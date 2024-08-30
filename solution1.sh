#!/bin/bash

current_date=$(date +"%d-%m-%Y")
current_time=$(date +"%H:%M:%S")
current_username=$(whoami)
home_directory=$HOME
current_working_directory=$(pwd)

echo "Current Date: $current_date"
echo "Current Time: $current_time"
echo "Username: $current_username"
echo "Home Directory: $home_directory"
echo "Current Working Directory: $current_working_directory"
