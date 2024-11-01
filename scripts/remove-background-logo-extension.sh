#!/bin/bash

# Define the extension UUID and name
EXTENSION_UUID="background-logo@fedorahosted.org"
EXTENSION_NAME="Background Logo"

# Check if the extension is installed
if gnome-extensions list | grep -q "$EXTENSION_UUID"; then
    echo "Removing the $EXTENSION_NAME extension..."
    gnome-extensions uninstall "$EXTENSION_UUID"
    echo "$EXTENSION_NAME extension removed successfully."
else
    echo "$EXTENSION_NAME extension is not installed. Skipping removal."
fi
