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
    echo "./build.sh ubuntu|alpine [version]"
    exit 1
esac

IMAGE_NAME="${IMAGE_PREFIX}:${SRC_IMAGE}-latest"
[ ! -z $2 ] && IMAGE_NAME_WITH_VERSION="${IMAGE_PREFIX}:${SRC_IMAGE}-${IMAGE_NAME_WITH_VERSION}"
DOCKERFILE="Dockerfile.${SRC_IMAGE}"

docker build -t $IMAGE_NAME -f $DOCKERFILE .
