#!/bin/bash

# Set project name
PROJECT_NAME="tracker-fitosanitarios"

echo "Building JAR file with Gradle..."
./gradlew clean build

if [ $? -ne 0 ]; then
  echo "Gradle build failed. Exiting."
  exit 1
fi

echo "Building Docker image..."
docker build -t ${PROJECT_NAME}:latest .

if [ $? -ne 0 ]; then
  echo "Docker build failed. Exiting."
  exit 1
fi

echo "Docker image '${PROJECT_NAME}:latest' built successfully."