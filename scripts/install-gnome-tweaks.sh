#!/bin/bash

# Install GNOME Tweaks if not installed (using DNF for Fedora)
if ! command -v gnome-tweaks &> /dev/null
then
    echo "GNOME Tweaks is not installed. Installing GNOME Tweaks..."
    sudo dnf install -y gnome-tweaks
else
    echo "GNOME Tweaks is already installed."
fi
