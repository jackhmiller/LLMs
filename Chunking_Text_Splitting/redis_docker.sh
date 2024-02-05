#!/bin/bash

docker pull redis

docker run -d -p 6379:6379 --name redis-container redis

if docker ps | grep -q my-redis-container; then
    echo "Redis container is running."
else
    echo "Failed to start Redis container."
fi

docker exec -it redis-container redis-cli
