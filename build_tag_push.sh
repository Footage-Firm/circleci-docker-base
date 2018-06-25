#!/usr/bin/env bash

IMAGE=videoblocks/circleci-docker-base

echo "Building Docker image: [Image: $IMAGE]"
docker build . -t ${IMAGE}

echo "Tagging test image as latest: [Image: $IMAGE, Tag: $IMAGE:latest]"
docker tag ${IMAGE} ${IMAGE}:latest

echo "Pushing to dockerhub"
docker push ${IMAGE}:latest && echo "Pushed: ${IMAGE}:latest"

