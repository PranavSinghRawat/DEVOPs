# Assignment 7: Automating DevOps Tasks with Shell Scripting

## Project Overview
This assignment demonstrates the power of **Shell Scripting** (Bash) in automating repetitive DevOps tasks. While tools like Ansible and Terraform are powerful, small "glue" scripts are still the backbone of many DevOps workflows.

## Scripts Included
1.  **`backup.sh`**: Automates the compression and archiving of application data with timestamps. 
2.  **`system_health.sh`**: A monitoring script that creates a quick report on CPU, Memory, Disk usage, and Service status.
3.  **`log_cleanup.sh`**: An automation script that finds and deletes old log files to prevent the disk from filling up.

## Key Concepts
-   **Variables and Logic**: Using `$TIMESTAMP` and `if/else` statements to make scripts smart.
-   **CRON Jobs**: In a real world, these scripts would be scheduled using "Cron" to run every hour or every night without human intervention.
-   **Standard Commands**: Using `tar`, `find`, `uptime`, and `df` to interact with the Linux system.

## Folder Structure
-   `scripts/`: Contains the three automation scripts.
-   `data_to_backup/`: (Created by `backup.sh`) Mock data for testing.
-   `backups/`: (Created by `backup.sh`) Where backup files are stored.

## How to Explain to Teacher
-   "Shell scripting is the 'Swiss Army Knife' of DevOps. It allows us to automate almost anything we can do manually in a terminal."
-   "Automation reduces the risk of human error. For example, a script never forgets to check the disk space before starting a backup."
