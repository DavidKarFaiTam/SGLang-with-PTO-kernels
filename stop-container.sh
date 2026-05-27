#!/bin/sh
#
# Stop and remove the SGLang Docker Container.
#
set -x

DOCKER_NAME="sglang_dsv4"

docker container stop ${DOCKER_NAME}
docker container rm ${DOCKER_NAME}
