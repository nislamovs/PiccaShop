#!/usr/bin/env bash


#CONTAINER_ID=$1
#docker export "$CONTAINER_ID" > piccashio.tar

docker image save -o target/docker/piccashop.tar c70f09de30c3e07e635b642c164b23/piccashop