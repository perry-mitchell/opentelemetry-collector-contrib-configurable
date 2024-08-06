#!/bin/bash

# docker tag local-image:tagname new-repo:tagname
# docker push new-repo:tagname

REPO="perrymitchell/opentelemetry-collector-contrib-configurable"
TAG=$(git describe --tags --abbrev=0)
TAG_FULL="$REPO:$TAG"
TAG_LATEST="$REPO:latest"

docker buildx build --platform=linux/amd64 -t $TAG_FULL .
docker image tag $TAG_FULL $TAG_LATEST

docker push $TAG_FULL
docker push $TAG_LATEST
