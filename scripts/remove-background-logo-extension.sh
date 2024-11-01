#!/bin/bash

# Define the extension UUID and name
EXTENSION_UUID="background-logo@fedorahosted.org"
EXTENSION_NAME="Background Logo"

# Check if the extension is installed
if gnome-extensions list | grep -q "$EXTENSION_UUID"; then
    echo "Disabling the $EXTENSION_NAME extension..."
    gnome-extensions disable "$EXTENSION_UUID"
    if [ $? -eq 0 ]; then
        echo "$EXTENSION_NAME extension disabled successfully."
    else
        echo "Failed to disable the $EXTENSION_NAME extension. Trying to disable via dconf..."
        gsettings set org.gnome.shell enabled-extensions "$(gsettings get org.gnome.shell enabled-extensions | sed s/"'$EXTENSION_UUID',"//g)"
        echo "$EXTENSION_NAME extension disabled successfully using gsettings."
    fi
else
    echo "$EXTENSION_NAME extension is not installed. Skipping."
fi
