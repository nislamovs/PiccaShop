#!/usr/bin/env bash

docker stop `docker ps -a | grep c70f09de30c3e07e635b642c164b23/piccashop  | awk -F\  {'print $1'}`