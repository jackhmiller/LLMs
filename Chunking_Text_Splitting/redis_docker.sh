#!/bin/bash

docker pull redis/redis-stack:latest 

docker run -d -p 6379:6379 -p 8001:8001 --name redis-container redis/redis-stack:latest

if docker ps | grep -q redis-container; then
    echo "Redis container is running."
else
    echo "Failed to start Redis container."
fi

docker exec -it redis-container redis-cli
