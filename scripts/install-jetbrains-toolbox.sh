#!/bin/bash

# Set installation directory and expected binary location
TOOLBOX_INSTALL_DIR="$HOME/jetbrains-toolbox"
TOOLBOX_BINARY="$TOOLBOX_INSTALL_DIR/jetbrains-toolbox"

# Check if JetBrains Toolbox is already installed
if [ -f "$TOOLBOX_BINARY" ]; then
    echo "JetBrains Toolbox is already installed. Skipping installation."
    exit 0
fi

# Define version and download URL
JETBRAINS_TOOLBOX_VERSION="latest"
DOWNLOAD_URL="https://data.services.jetbrains.com/products/download?code=TBA&platform=linux"

# Set download directory and filename
DOWNLOAD_DIR="/tmp"
TOOLBOX_FILENAME="jetbrains-toolbox.tar.gz"

# Download the latest version of JetBrains Toolbox
echo "Downloading JetBrains Toolbox..."
wget -O $DOWNLOAD_DIR/$TOOLBOX_FILENAME $DOWNLOAD_URL

# Extract the downloaded archive
echo "Extracting JetBrains Toolbox..."
mkdir -p $TOOLBOX_INSTALL_DIR
tar -xzf $DOWNLOAD_DIR/$TOOLBOX_FILENAME -C $TOOLBOX_INSTALL_DIR --strip-components=1

# Ensure ~/.local/bin exists and create a shortcut
echo "Creating a shortcut..."
mkdir -p $HOME/.local/bin
ln -sf $TOOLBOX_BINARY $HOME/.local/bin/jetbrains-toolbox

# Clean up
echo "Cleaning up..."
rm $DOWNLOAD_DIR/$TOOLBOX_FILENAME

# Done
echo "JetBrains Toolbox installation complete!"
echo "You can start it by running 'jetbrains-toolbox' from the terminal."
