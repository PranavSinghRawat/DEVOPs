# Assignment 4: Deploying Microservices with Kubernetes

## Project Overview
This assignment explores **Kubernetes (K8s)**, the industry-standard "Orchestrator" for managing containerized microservices.

## Key Concepts
1.  **Pods**: The smallest deployable unit in Kubernetes (usually runs one Docker container).
2.  **Deployment**: A controller that ensures a specified number of Pod replicas are running and handles updates/rollouts.
3.  **Service**: An abstraction that defines how to access the Pods (e.g., via a Load Balancer).
4.  **ConfigMap**: Used to store non-sensitive configuration data (like environment variables).

## Scalability and Self-Healing
In this manifest, we requested **3 replicas**. If one Pod crashes, Kubernetes will automatically start a new one to maintain the desired state (Self-Healing). If traffic increases, we can change replicas to 10 (Scalability).

## Folder Structure
-   `k8s/deployment.yaml`: Defines how many copies of the app to run.
-   `k8s/service.yaml`: Makes the app accessible to the outside world.
-   `k8s/configmap.yaml`: Stores application settings.

## How to Explain to Teacher
-   "Kubernetes is like a conductor for an orchestra of containers. It makes sure everything is playing in sync and replaces 'musicians' (containers) if they fail."
-   "Scaling is as simple as changing one number in the YAML file and applying it."
