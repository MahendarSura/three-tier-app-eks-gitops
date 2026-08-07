#!/bin/bash

set -e

echo "Cleaning unused Docker resources..."

docker system prune -f


echo "Removing stopped containers..."

docker container prune -f


echo "Cleanup completed"
