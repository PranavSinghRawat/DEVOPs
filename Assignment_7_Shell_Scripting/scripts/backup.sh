#!/bin/bash

# Simple Automated Backup Script
BACKUP_DIR="./backups"
SOURCE_DIR="./data_to_backup"
TIMESTAMP=$(date +%Y%m%d_%H%M%S)
BACKUP_FILE="backup_$TIMESTAMP.tar.gz"

echo "Starting backup of $SOURCE_DIR..."

# Create backup directory if it doesn't exist
mkdir -p "$BACKUP_DIR"

# Create a mock data file if none exists
mkdir -p "$SOURCE_DIR"
echo "Important DevOps Data" > "$SOURCE_DIR/important.txt"

# Compress the source directory
tar -czf "$BACKUP_DIR/$BACKUP_FILE" "$SOURCE_DIR"

if [ $? -eq 0 ]; then
    echo "Backup successful! File saved as $BACKUP_DIR/$BACKUP_FILE"
else
    echo "Backup failed!"
fi
