#!/bin/bash

# Set the trackpad secondary click to corner push (bottom-right)
echo "Setting trackpad secondary click to corner push..."
gsettings set org.gnome.desktop.peripherals.touchpad click-method 'areas'

echo "Trackpad secondary click set to corner push (bottom-right)."
