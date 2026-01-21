#!/bin/bash

set -e  # Exit immediately if any command fails
echo " Starting Build Process"
APP_NAME="react-app"
TAG="latest"
echo "Step 1: Installing dependencies"
npm install
echo "Step 2: Building application"
npm run build
echo "Step 3: Building Docker image"
docker build -t ${react-app}:${latest} .
echo "Step 4: Starting services using Docker Compose"
docker-compose down || true
docker-compose up -d --build
echo " Build completed successfully"

