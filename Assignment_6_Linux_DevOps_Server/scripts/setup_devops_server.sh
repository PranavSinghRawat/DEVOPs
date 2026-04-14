#!/bin/bash

# Automation script to prepare a fresh Linux server for DevOps work
echo "DevOps Server Setup starting..."

# Update system
sudo apt-get update && sudo apt-get upgrade -y

# 1. Install Git
echo "Installing Git..."
sudo apt-get install -y git

# 2. Install Docker
echo "Installing Docker..."
sudo apt-get install -y docker.io
sudo systemctl start docker
sudo systemctl enable docker

# 3. Install Jenkins (simplified steps)
echo "Installing Jenkins prerequisites (Java)..."
sudo apt-get install -y openjdk-11-jdk

# 4. Networking: Show IP and Open Ports
echo "Server Prep complete."
echo "Current IP Address: $(hostname -I | awk '{print $1}')"
echo "Remember to allow traffic on ports: 22 (SSH), 80 (HTTP), 8080 (Jenkins)"
