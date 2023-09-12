#!/bin/bash

# Save the above code into a file, for example, setup_ssh.sh.
# Make the script executable with chmod +x setup_ssh.sh.
# Run the script using ./setup_ssh.sh.

# Function to install and configure SSH on the server
setup_server() {
  echo "Setting up SSH Server..."
  
  # Update package list and install OpenSSH Server
  sudo apt update
  sudo apt install -y openssh-server
  
  # Start SSH service
  sudo systemctl start ssh
  
  # Enable SSH to start on boot
  sudo systemctl enable ssh
  
  # Check SSH status
  sudo systemctl status ssh
}

# Function to install and configure SSH on the client
setup_client() {
  echo "Setting up SSH Client..."
  
  # Update package list and install OpenSSH Client
  sudo apt update
  sudo apt install -y openssh-client
  
  # Generate SSH key pair
  ssh-keygen -t rsa -b 4096
  
  # Copy public key to server
  read -p "Enter your username: " username
  read -p "Enter the server IP address: " server_ip
  ssh-copy-id $username@$server_ip
  
  # Connect to server
  ssh $username@$server_ip
}

# Main function to choose between server and client setup
main() {
  read -p "Are you setting up the server or client? (server/client): " choice
  
  if [ "$choice" == "server" ]; then
    setup_server
  elif [ "$choice" == "client" ]; then
    setup_client
  else
    echo "Invalid choice. Please run the script again."
  fi
}

# Execute the main function
main
