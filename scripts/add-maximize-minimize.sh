#!/bin/bash

# Add maximize and minimize buttons to GNOME windows
echo "Adding maximize and minimize buttons to GNOME windows..."
gsettings set org.gnome.desktop.wm.preferences button-layout ':minimize,maximize,close'

# Done
echo "Maximize and minimize buttons have been added successfully!"
