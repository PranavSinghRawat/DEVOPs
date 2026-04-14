# Assignment 6: Building and Managing a Linux-Based DevOps Server

## Project Overview
This assignment focuses on the "Server Management" aspect of DevOps. Most DevOps tools (like Jenkins, Docker, and Kubernetes) run on **Linux**. Understanding how to build, configure, and secure a Linux server is foundational for any DevOps engineer.

## Key Learning Areas
1.  **Automation via Scripts**: We use shell scripts to install tools (Docker, Git) instead of doing it manually.
2.  **Package Management**: Using `apt` to install software reliably.
3.  **Server Security**: Implementing basic security measures like firewalls and SSH keys.
4.  **Service Management**: Using `systemctl` to start and enable background services like Docker.

## Folder Structure
-   `scripts/setup_devops_server.sh`: A script that automates the installation of essential DevOps tools.
-   `config/server_hardening.md`: A guide explaining how to secure a production server.

## How to Explain to Teacher
-   "A DevOps server is usually 'headless' (no screen or mouse), so we manage it entirely via the Command Line (CLI)."
-   "By scriptifying the server setup, we ensure that every server we build is identical, which reduces 'Configuration Drift'."
