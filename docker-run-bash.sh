#!/bin/bash

set -e

source docker-settings.conf

echo "Running"

opts=(
    -i
    -t
#    -v /sys/fs/cgroup:/sys/fs/cgroup:ro
    "$APP"
    /bin/bash
)

docker run "${opts[@]}"

