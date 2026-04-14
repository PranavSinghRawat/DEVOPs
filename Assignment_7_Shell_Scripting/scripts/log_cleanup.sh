#!/bin/bash

# Log Cleanup Script
# This script simulates cleaning up log files older than 7 days.

LOG_DIR="./logs"
DAYS=7

echo "Starting log cleanup in $LOG_DIR..."

# Create mock logs for demonstration
mkdir -p "$LOG_DIR"
touch -d "10 days ago" "$LOG_DIR/old_app.log"
touch -d "1 day ago" "$LOG_DIR/new_app.log"

echo "Current logs before cleanup:"
ls -lh "$LOG_DIR"

# Find and "delete" (mock delete by listing) files older than X days
echo -e "\nFinding logs older than $DAYS days..."
find "$LOG_DIR" -name "*.log" -type f -mtime +$DAYS -exec echo "Deleting: {}" \;
find "$LOG_DIR" -name "*.log" -type f -mtime +$DAYS -delete

echo -e "\nCleanup complete."
echo "Current logs after cleanup:"
ls -lh "$LOG_DIR"
