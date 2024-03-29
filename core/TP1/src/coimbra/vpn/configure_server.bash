#!/bin/bash

filedir=`dirname "$0"`

if [ $# -ne 1 ]; then
    echo "Usage: bash configure_server.bash <server-ip>"
    exit 1
fi

SERVERIP=$1

# IP forwarding
sudo sysctl -w net.ipv4.ip_forward=1
sudo iptables -t nat -A POSTROUTING -s 10.8.0.0/24 -o tun0 -j MASQUERADE


# Load config and start VPN Server
bash $filedir/scripts/load_server_config.bash $SERVERIP
