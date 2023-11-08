#!/bin/bash

# Build the Docker image
docker build -d reactimage .

docker-compose down || true
docker-compose up -d 

