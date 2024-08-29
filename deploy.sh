#!/bin/bash


IMG_NAME="nginx-1"
TAG="latest"
FROM_PORT="80"
TO_PORT="72"


docker run -d -p $TO_PORT:$FROM_PORT $IMG_NAME:$TAG

echo "Docker container for '$IMG_NAME' is running successfully."
echo "Image($IMG_NAME) is deployed to server port($TO_PORT) successfully."
