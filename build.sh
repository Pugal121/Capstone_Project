#!/bin/bash

SOURCE_CODE_PATH="root/Capstone_Project/build/"
IMG_NAME="nginx-1"
TAG="latest"

cd $SOURCE_CODE_PATH

docker build -t $IMG_NAME:$TAG .

echo "your Docker image $IMG_NAME:$TAG has been build successfully."

