#!/bin/bash

# Save the above code into a file, for example, update_kernel.sh.

# Make the script executable

# Function to check the current kernel version
check_kernel_version() {
  echo "Current Kernel Version:"
  uname -r
}

# Function to update kernel for Ubuntu/Debian
update_kernel_ubuntu() {
  echo "Updating Kernel for Ubuntu/Debian..."
  sudo apt update
  sudo apt upgrade -y
  echo "Please reboot your system to use the new kernel."
}

# Function to update kernel for CentOS/RHEL
update_kernel_centos() {
  echo "Updating Kernel for CentOS/RHEL..."
  sudo yum update -y
  sudo yum upgrade kernel -y
  echo "Please reboot your system to use the new kernel."
}

# Main script starts here
echo "Kernel Update Script"

# Check current kernel version
check_kernel_version

# Ask user for the type of system
read -p "Is your system Ubuntu/Debian or CentOS/RHEL? (Enter 'ubuntu' or 'centos'): " SYSTEM_TYPE

# Update kernel based on user input
case $SYSTEM_TYPE in
  "ubuntu")
    update_kernel_ubuntu
    ;;
  "centos")
    update_kernel_centos
    ;;
  *)
    echo "Invalid input. Exiting."
    exit 1
    ;;
esac

# Suggest reboot
echo "To apply the changes, please reboot your system."
