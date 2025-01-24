#!/bin/bash

echo "Securing SSH configuration..."

SSH_CONFIG="/etc/ssh/sshd_config"

if [ -f "$SSH_CONFIG" ]; then
    sudo sed -i 's/^#?PermitRootLogin.*/PermitRootLogin no/' "$SSH_CONFIG"
    sudo sed -i 's/^#?PasswordAuthentication yes/PasswordAuthentication no/' "$SSH_CONFIG"
    sudo sed -i 's/^#?PubkeyAuthentication no/PubkeyAuthentication yes/' "$SSH_CONFIG"
    sudo systemctl restart sshd
    echo "SSH has been secured."
else
    echo "SSH configuration file not found!"
fi
