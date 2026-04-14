# Assignment 1: Building a CI/CD Pipeline

## Project Overview
This assignment demonstrates a basic **Continuous Integration and Continuous Deployment (CI/CD)** pipeline using **GitHub Actions**. 

## How it Works
1.  **Code Commit**: Developers push code to the repository.
2.  **Continuous Integration (CI)**: GitHub Actions automatically triggers a "Build" job.
    -   It sets up the Node.js environment.
    -   It installs dependencies (`npm install`).
    -   It runs tests (`npm test`).
3.  **Continuous Deployment (CD)**: If the tests pass, the pipeline simulates a deployment to a production server.

## Folder Structure
-   `webapp/`: Contains a simple Node.js Express server.
-   `.github/workflows/pipeline.yml`: The automation script that defines the pipeline stages.

## How to Explain to Teacher
-   "CI ensures that every change we make is tested automatically so we don't break the application."
-   "CD automates the delivery of the code to the users, making the release process faster and more reliable."
