#!/bin/bash

# Check if NVIDIA drivers are already installed
if command -v nvidia-smi &> /dev/null
then
    echo "NVIDIA drivers are already installed. Skipping installation."
    exit 0
fi

# Add RPM Fusion repositories (free and non-free)
echo "Adding RPM Fusion repositories..."
sudo dnf install -y https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
sudo dnf install -y https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

# Update all packages
echo "Updating all packages..."
sudo dnf update -y

# Install NVIDIA drivers
echo "Installing NVIDIA drivers..."
sudo dnf install -y akmod-nvidia

# Enable driver support for Wayland (if applicable)
echo "Enabling driver support for Wayland..."
sudo dnf install -y xorg-x11-drv-nvidia-cuda

# Reboot required to load the new drivers
echo "NVIDIA drivers installation complete. A system reboot is required."
echo "Please reboot your system to apply the changes."
