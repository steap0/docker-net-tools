#!/bin/bash
IMAGE_PREFIX="steap0/net-tools"

case $1 in
  ubuntu | u)
    SRC_IMAGE="ubuntu"
    ;;
  alpine | a)
    SRC_IMAGE="alpine"
    ;;
  *)
    echo "How to use:"
    echo "./build.sh ubuntu|alpine"
    exit 1
esac

IMAGE_NAME="${IMAGE_PREFIX}:latest-${SRC_IMAGE}"
DOCKERFILE="Dockerfile.${SRC_IMAGE}"

docker build -t $IMAGE_NAME -f $DOCKERFILE .
