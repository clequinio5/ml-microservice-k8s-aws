#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath=clequinio/ml-microservice-k8s-aws

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login --username clequinio
docker tag c1f0f62a3e4e $dockerpath

# Step 3:
# Push image to a docker repository
docker push $dockerpath
