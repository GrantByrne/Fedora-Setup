#!/bin/bash

# Check if GitKraken is already installed
if command -v gitkraken &> /dev/null
then
    echo "GitKraken is already installed. Skipping installation."
    exit 0
fi

# Install GitKraken via Flatpak (recommended method)
echo "Installing GitKraken via Flatpak..."
if ! command -v flatpak &> /dev/null
then
    echo "Flatpak is not installed. Installing Flatpak..."
    sudo dnf install -y flatpak
fi

# Add Flathub repository if not added
if ! flatpak remote-list | grep -q flathub; then
    echo "Adding Flathub repository..."
    sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
fi

# Install GitKraken
flatpak install -y flathub com.axosoft.GitKraken

# Done
echo "GitKraken installation complete!"
