#!/bin/bash
# Build the Docker image
docker build -t reactapp .

docker-compose down || true
docker-compose up -d 

