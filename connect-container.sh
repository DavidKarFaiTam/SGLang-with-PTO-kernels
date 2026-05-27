#!/bin/sh
#
# Connect to the running SGLang Docker Container for use as the development
# environment.
#

DOCKER_NAME="sglang_dsv4"

echo "VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV"
echo "Entering the ${DOCKER_NAME} container as root."
echo "------------------------------------------------------------------------"

set -x
docker exec -it ${DOCKER_NAME} bash
set +x

echo "------------------------------------------------------------------------"
echo "Exited the ${DOCKER_NAME} container."
echo "^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^"
