#!/bin/bash

# System Health Check Script
echo "--- DevOps System Health Report ---"
date
echo ""

# Check CPU Usage
echo "CPU Load Average:"
uptime | awk -F'load average:' '{ print $2 }'

# Check Memory Usage
echo -e "\nMemory Usage:"
if command -v free &> /dev/null; then
    free -m | awk 'NR==2{printf "Used: %sMB, Free: %sMB, Total: %sMB\n", $3, $4, $2}'
else
    echo "The 'free' command is not available (common on macOS). On a Linux DevOps server, this would show RAM usage."
fi

# Check Disk Usage
echo -e "\nDisk Usage (Root Partition):"
df -h / | awk 'NR==2{print $5 " used on " $1}'

# Check if a critical service is running (e.g., Docker)
echo -e "\nService Status (Docker):"
if command -v systemctl &> /dev/null; then
    if systemctl is-active --quiet docker; then
        echo "Docker is running."
    else
        echo "Docker is NOT running!"
    fi
else
    echo "The 'systemctl' command is not available. On a Linux DevOps server, this would check if Docker is running."
fi

echo -e "\n--- End of Report ---"
