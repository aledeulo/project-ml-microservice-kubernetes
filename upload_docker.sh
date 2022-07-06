#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath=$1/$2

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
# Login into dockerhub
docker login --username $1

# Tagging image
docker tag project-ml-kubernetes $dockerpath

# Step 3:
# Push image to a docker repository
docker push $dockerpath
