# Assignment 2: Infrastructure as Code (Terraform) and Configuration Management (Ansible)

## Project Overview
This assignment demonstrates how to automate the setup of infrastructure and its configuration using two industry-standard tools: **Terraform** and **Ansible**.

## Why Use Both?
-   **Terraform (IaC)**: Used to "provision" the infrastructure (e.g., creating servers, networks, databases). It answers the question: *What hardware do I need?*
-   **Ansible (Configuration Management)**: Used to "configure" the software inside those servers (e.g., installing Nginx, setting up users). It answers the question: *What software should run on my hardware?*

## Folder Structure
-   `terraform/`: Contains `main.tf`. It uses a local provider to simulate creating a server configuration file. 
    -   *To Run*: `terraform init` followed by `terraform apply`.
-   `ansible/`: Contains `playbook.yml`. It prepares a mock website directory locally.
    -   *To Run*: `ansible-playbook playbook.yml`.

## How to Explain to Teacher
-   "Infrastructure as Code (IaC) allows us to treat our hardware setup like software, meaning we can version control it and recreate it easily."
-   "Ansible is 'agentless,' meaning it doesn't need special software installed on the target servers; it just needs SSH access."
