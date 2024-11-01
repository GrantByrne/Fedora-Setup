#!/bin/bash

# Check if Podman is already installed
if command -v podman &> /dev/null
then
    echo "Podman is already installed. Skipping installation."
    exit 0
fi

# Install Podman using dnf
echo "Installing Podman..."
sudo dnf install -y podman

# Done
echo "Podman installation complete! You can start using Podman by running 'podman' from the terminal."
