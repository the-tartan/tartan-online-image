#!/usr/bin/bash

set -o nounset

source "$(dirname ${BASH_SOURCE})/docker-options"

docker build \
    --file $(dirname ${BASH_SOURCE})/Dockerfile \
    --network=host
    --build-arg IMAGE_NAME="${IMAGE_NAME}" \
    --build-arg VERSION="${VERSION}" \
    --tag ${IMAGE_NAME}:${VERSION} .

docker tag ${IMAGE_NAME}:${VERSION} ${IMAGE_NAME}:latest