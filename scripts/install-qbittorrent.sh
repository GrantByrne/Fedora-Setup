#!/bin/bash

# Check if qBittorrent is already installed
if command -v qbittorrent &> /dev/null
then
    echo "qBittorrent is already installed. Skipping installation."
    exit 0
fi

# Install qBittorrent using dnf
echo "Installing qBittorrent..."
sudo dnf install -y qbittorrent

# Done
echo "qBittorrent installation complete! You can start qBittorrent by running 'qbittorrent' from the terminal or through your application menu."
