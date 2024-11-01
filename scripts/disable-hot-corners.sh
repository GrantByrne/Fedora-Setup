#!/bin/bash

# Disable hot corners in GNOME
echo "Disabling hot corners in GNOME..."
gsettings set org.gnome.desktop.interface enable-hot-corners false

# Done
echo "Hot corners have been disabled successfully."
