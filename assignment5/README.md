# Assignment 5: Automating Infrastructure and Monitoring with AWS DevOps Tools

## Project Overview
This assignment demonstrates how to automate cloud infrastructure in **Amazon Web Services (AWS)** using **CloudFormation** (AWS-native IaC) and the **AWS CLI**.

## Key AWS DevOps Tools
1.  **AWS CloudFormation**: A service that allows you to model and set up your AWS resources so you can spend less time managing those resources and more time focusing on your applications.
2.  **AWS CodePipeline**: A fully managed continuous delivery service that helps you automate your release pipelines for fast and reliable application and infrastructure updates.
3.  **AWS CloudWatch**: A monitoring and observability service that provides data and actionable insights to monitor your applications and respond to system-wide performance changes.

## Folder Structure
-   `aws/cloudformation.yaml`: A template that defines an S3 Bucket as code.
-   `scripts/aws_cli_setup.sh`: A shell script that demonstrates how to interact with AWS via the command line.

## How to Explain to Teacher
-   "Using AWS CloudFormation (IaC) ensures that our cloud environment is reproducible. We don't have to click through the AWS console to set up buckets or servers."
-   "The AWS CLI (Command Line Interface) is powerful because it allows us to include cloud management steps inside our automated shell scripts."
