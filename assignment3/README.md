# Assignment 3: Implementing Continuous Monitoring and Feedback

## Project Overview
This assignment demonstrates how to set up a professional monitoring stack using **Prometheus** (for gathering data) and **Grafana** (for visualizing data).

## Key Components
1.  **Prometheus**: A monitoring system that "scrapes" (collects) metrics from applications at regular intervals.
2.  **Grafana**: A visualization tool that connects to Prometheus to create beautiful charts and dashboards.
3.  **The App**: A simple Node.js application that exposes a `/metrics` endpoint. This is where Prometheus gets its data.

## Feedback Loop
Monitoring provides the "Feedback" in DevOps. If an application starts running slow or failing, the monitoring system alerts the team, who can then fix the code and deploy an update.

## Folder Structure
-   `app/`: Contains the Node.js application and its Dockerfile.
-   `prometheus/`: Contains the configuration for Prometheus to find the app.
-   `docker-compose.yml`: Launches all three components (App, Prometheus, Grafana) together.

## How to Explain to Teacher
-   "Continuous Monitoring allows us to know the health of our application in real-time, rather than waiting for users to complain."
-   "We use Docker Compose to ensure that the entire monitoring stack can be started with a single command: `docker-compose up`."
