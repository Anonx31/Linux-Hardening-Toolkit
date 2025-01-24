#!/bin/bash

echo "Disabling unnecessary services..."

SERVICES=("apache2" "nginx" "vsftpd" "telnet" "ftp")

for SERVICE in "${SERVICES[@]}"; do
    if systemctl is-active --quiet "$SERVICE"; then
        sudo systemctl stop "$SERVICE"
        sudo systemctl disable "$SERVICE"
        echo "Disabled $SERVICE."
    else
        echo "$SERVICE is not active."
    fi
done

echo "Service management complete!"
