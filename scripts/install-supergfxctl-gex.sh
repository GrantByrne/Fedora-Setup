#!/bin/bash

# Define extension ID and extension URL
EXTENSION_ID="5344"
EXTENSION_URL="https://extensions.gnome.org/extension/$EXTENSION_ID/supergfxctl-gex/"

# Dependencies check: Install the necessary tools for GNOME extensions
echo "Installing dependencies for GNOME extension installation..."
sudo dnf install -y gnome-shell-extension-installer jq

# Install the GNOME Shell Extension using gnome-shell-extension-installer
echo "Installing supergfxctl-gex GNOME extension..."
gnome-shell-extension-installer "$EXTENSION_ID" --yes

# Verify if the installation was successful
if gnome-extensions list | grep -q "supergfxctl-gex"; then
    echo "The supergfxctl-gex GNOME extension has been successfully installed."
else
    echo "Failed to install the supergfxctl-gex GNOME extension. Please try manually installing it from: $EXTENSION_URL"
fi

# Enable the GNOME Shell Extension
echo "Enabling supergfxctl-gex GNOME extension..."
gnome-extensions enable supergfxctl-gex@asus-linux.org

# Done
echo "Installation and enabling of supergfxctl-gex complete."
