#!/usr/bin/env bash

IMAGE=videoblocks/circleci-docker-base
TAG=${1:-"4.0"}

echo "Building Docker image: [Image: $IMAGE]"
docker build . -t ${IMAGE}

echo "Tagging test image as latest: [$IMAGE:$TAG]"
docker tag ${IMAGE} ${IMAGE}:${TAG}
echo "Tagging test image: [$IMAGE:latest]"
docker tag ${IMAGE} ${IMAGE}:latest

echo "Pushing to dockerhub"
docker push ${IMAGE}:${TAG} && echo "Pushed: ${IMAGE}:${TAG}"
docker push ${IMAGE}:latest && echo "Pushed: ${IMAGE}:latest"

