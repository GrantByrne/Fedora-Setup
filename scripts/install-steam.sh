#!/bin/bash

# Check if Steam is already installed
if command -v steam &> /dev/null
then
    echo "Steam is already installed. Skipping installation."
    exit 0
fi

# Add RPM Fusion repositories (free and non-free)
echo "Adding RPM Fusion repositories..."
sudo dnf install -y https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
sudo dnf install -y https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

# Update all packages
echo "Updating all packages..."
sudo dnf update -y

# Install Steam
echo "Installing Steam..."
sudo dnf install -y steam

# Done
echo "Steam installation complete! You can start Steam by running 'steam' from the terminal or through your application menu."
