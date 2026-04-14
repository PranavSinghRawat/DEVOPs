#!/bin/bash

# Build the Docker image
docker build -t my-app .

# Run the tests
npm run test

# Deploy to a container
docker run -p 3000:3000 my-app
