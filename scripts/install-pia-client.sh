#!/bin/bash

# Check if PIA is already installed
if [ -d "$HOME/pia-linux" ]; then
    echo "Private Internet Access client is already installed. Skipping installation."
    exit 0
fi

# Set download directory and filename
DOWNLOAD_DIR="/tmp"
PIA_FILENAME="pia-linux.tar.gz"
PIA_DOWNLOAD_URL="https://installers.privateinternetaccess.com/download/pia-linux-3.3.1-06924.tar.gz"

# Download the PIA client
echo "Downloading Private Internet Access client..."
wget -O $DOWNLOAD_DIR/$PIA_FILENAME $PIA_DOWNLOAD_URL

# Extract the downloaded archive
echo "Extracting PIA client..."
mkdir -p $HOME/pia-linux
tar -xzf $DOWNLOAD_DIR/$PIA_FILENAME -C $HOME/pia-linux --strip-components=1

# Run the installation script
echo "Installing PIA client..."
cd $HOME/pia-linux
chmod +x install.sh
./install.sh

# Clean up
echo "Cleaning up..."
rm $DOWNLOAD_DIR/$PIA_FILENAME

# Done
echo "Private Internet Access client installation complete!"
