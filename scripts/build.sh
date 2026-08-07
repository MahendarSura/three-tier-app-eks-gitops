#!/bin/bash

set -e

IMAGE_NAME="three-tier-app"

TAG=${1:-latest}

echo "Building Docker image..."

docker build \
-t $IMAGE_NAME:$TAG .


echo "Build completed"

docker images | grep $IMAGE_NAME
