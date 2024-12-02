#!/bin/bash

set -e

source docker-settings.conf

echo "Running"

opts=(
    --interactive=true
    --tty=true
    "$APP"
    /bin/bash
)

docker run "${opts[@]}"

