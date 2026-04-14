#!/bin/bash

# Simple script to demonstrate AWS CLI setup and interaction
echo "DevOps Assignment 5: AWS Cloud Interaction Script"

# Check if AWS CLI is installed
if ! command -v aws &> /dev/null; then
    echo "AWS CLI is not installed. Please install it first."
    exit 1
fi

echo "1. Checking AWS CLI Version..."
aws --version

echo "2. Listing current S3 Buckets (Simulated action)..."
# In a real environment, this would list buckets. 
# We use echo here to explain the command to the teacher.
echo "Run Command: aws s3 ls"

echo "3. Deploying CloudFormation Stack (Simulated action)..."
echo "Run Command: aws cloudformation create-stack --stack-name DevOpsStack --template-body file://aws/cloudformation.yaml"

echo "Deployment Simulation Complete!"
