#!/bin/bash

# Prompt the user to choose the folder
echo "Which folder of scripts do you want to run?"
echo "1. linuxAdmin"
echo "2. windowsAdmin"
echo "3. sysDuck"
echo "4. miscTools"
read -p "Enter your choice (1, 2, 3 or 4): " choice

# Determine the folder based on the user's choice
folder=""
case $choice in
    1) folder="./linuxAdmin";;   # Set folder to "./linuxAdmin" if choice is 1
    2) folder="./windowsAdmin";; # Set folder to "./windowsAdmin" if choice is 2
    3) folder="./sysDuck";;      # Set folder to "./sysDuck" if choice is 3
    4) folder="./miscTools";;    # Set folder to "./miscTools" if choice is 4
    *) echo "Invalid choice. Exiting."; exit;; # Exit if choice is not 1, 2, 3, or 4
esac

# Get all shell scripts in the chosen folder
scripts=$(find $folder -name "*.sh")

# Loop through each script
for script in $scripts
do
    echo "Running $script..."
    bash $script

    # Prompt the user to continue or stop
    while true; do
        read -p "Do you wish to continue to the next script? (yes/no) " yn
        case $yn in
            [Yy]* ) break;; # Break the loop if user answers yes
            [Nn]* ) exit;;  # Exit the script if user answers no
            * ) echo "Please answer yes or no.";; # Prompt again if user gives invalid input
        esac
    done
done

echo "All scripts completed."