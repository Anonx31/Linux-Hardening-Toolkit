#!/bin/bash

echo "Configuring the firewall..."

if [ "$(command -v ufw)" ]; then
    sudo ufw allow ssh
    sudo ufw allow http
    sudo ufw allow https
    sudo ufw enable
    echo "UFW firewall is now active!"
elif [ "$(command -v iptables)" ]; then
    sudo iptables -A INPUT -p tcp --dport 22 -j ACCEPT
    sudo iptables -A INPUT -p tcp --dport 80 -j ACCEPT
    sudo iptables -A INPUT -p tcp --dport 443 -j ACCEPT
    sudo iptables -A INPUT -j DROP
    echo "Iptables firewall is now configured!"
else
    echo "No supported firewall found."
fi
