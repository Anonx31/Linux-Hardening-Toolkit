#!/bin/bash

echo "Starting system updates..."

if [ "$(command -v apt)" ]; then
    sudo apt update && sudo apt upgrade -y
elif [ "$(command -v yum)" ]; then
    sudo yum update -y
elif [ "$(command -v dnf)" ]; then
    sudo dnf upgrade --refresh -y
else
    echo "Package manager not supported on this system."
fi

echo "System updates completed!"
