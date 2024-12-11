#!/bin/bash

# Set project name
PROJECT_NAME="tracker-fitosanitarios"

echo "Running Docker container for '${PROJECT_NAME}'..."

docker run -p 8080:8080 ${PROJECT_NAME}:latest

if [ $? -ne 0 ]; then
  echo "Failed to start Docker container. Exiting."
  exit 1
fi

echo "Docker container for '${PROJECT_NAME}' is running on port 8080."