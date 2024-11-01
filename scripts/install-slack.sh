#!/bin/bash

# Check if Slack is already installed
if command -v slack &> /dev/null
then
    echo "Slack is already installed. Skipping installation."
    exit 0
fi

# Set Slack download URL
SLACK_DOWNLOAD_URL="https://downloads.slack-edge.com/linux_releases/slack-4.32.122-0.1.fc21.x86_64.rpm"

# Download and install Slack
echo "Downloading Slack..."
wget -O /tmp/slack.rpm $SLACK_DOWNLOAD_URL

# Install Slack using dnf
echo "Installing Slack..."
sudo dnf install -y /tmp/slack.rpm

# Clean up
echo "Cleaning up..."
rm /tmp/slack.rpm

# Done
echo "Slack installation complete! You can start Slack by running 'slack' from the terminal or through your application menu."
