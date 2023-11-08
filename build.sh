#!/bin/bash

# Build the Docker image
docker build -t reactimage .

docker-compose down || true
docker-compose up -d 

