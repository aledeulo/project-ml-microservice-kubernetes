#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Step 1:
docker build -t project-ml-kubernetes .

# Step 2: 
docker images ls

# Step 3: 
docker run -dp 8000:80 project-ml-kubernetes