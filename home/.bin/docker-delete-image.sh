#!/bin/bash

img_name="$1"

if [ -z "$img_name" ]; then
    echo "Stops and deletes containers using an image, then deletes the image."
    echo "Supports local images only: image names prefixed with "local/"."
    echo "Don't include the "local/" part of the image name."
    echo ""
    echo "Usage: $0 <image_name>"
    echo "Example: $0 search-avail"
    exit 1
fi

docker ps -a \
  | awk '{ print $1,$2 }' \
  | grep local/$img_name \
  | awk '{print $1 }' \
  | xargs -I {} docker rm -f {} \
  && docker rmi -f local/$img_name:local
