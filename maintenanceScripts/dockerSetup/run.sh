#!/usr/bin/env bash

docker run -d -i -t -p 8080:8080 -p 8093:8093 c70f09de30c3e07e635b642c164b23/piccashop
#docker run -d -i -t c70f09de30c3e07e635b642c164b23/piccashop

# -d, --detach                  Run container in background and print container ID
# -i, --interactive             Keep STDIN open even if not attached
# -t, --tty                     Allocate a pseudo-TTY