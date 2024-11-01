#!/bin/bash

# Install Visual Studio Code if not installed (using DNF for Fedora)
if ! command -v code &> /dev/null
then
    echo "Visual Studio Code is not installed. Installing Visual Studio Code..."
    sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
    sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
    sudo dnf check-update
    sudo dnf install -y code
else
    echo "Visual Studio Code is already installed."
fi
