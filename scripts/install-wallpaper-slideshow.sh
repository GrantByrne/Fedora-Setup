#!/bin/bash

# Define the extension ID and extension URL
EXTENSION_ID="6281"
EXTENSION_NAME="Wallpaper Slideshow"
EXTENSION_URL="https://extensions.gnome.org/extension/$EXTENSION_ID/wallpaper-slideshow/"

# Install necessary tools for GNOME extensions
echo "Installing dependencies for GNOME extension installation..."
sudo dnf install -y gnome-shell-extension-installer jq

# Install the GNOME Shell Extension using gnome-shell-extension-installer
echo "Installing $EXTENSION_NAME GNOME extension..."
gnome-shell-extension-installer "$EXTENSION_ID" --yes

# Verify if the installation was successful
if gnome-extensions list | grep -q "wallpaper-slideshow"; then
    echo "$EXTENSION_NAME extension has been successfully installed."
else
    echo "Failed to install the $EXTENSION_NAME extension. Please try manually installing it from: $EXTENSION_URL"
fi

# Enable the GNOME Shell Extension
echo "Enabling $EXTENSION_NAME GNOME extension..."
gnome-extensions enable wallpaper-slideshow@fthx

# Done
echo "Installation and enabling of $EXTENSION_NAME complete."
