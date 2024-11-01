#!/bin/bash

# Directory containing the scripts
SCRIPT_DIR="./scripts"

# Array of script names
SCRIPTS=(

    # Nvidia Setup
    "install-nvidia-drivers.sh"
    "install-supergfxctl-gex.sh"

    # Shell Setup
    "install-zsh-ohmyzsh.sh"

    # Install Apps
    "install-vscode.sh"
    "install-jetbrains-toolbox.sh"
    "install-git-kraken.sh"
    "install-steam.sh"
    "install-qbittorrent.sh"
    "install-slack.sh"
    "install-podman.sh"
    "install-gnome-tweaks.sh"

    # Configure Gnome
    "set-scroll-direction.sh"
    "set-secondary-click.sh"
    "add-maximize-minimize.sh"
    "disable-hot-corners.sh"
    "remove-background-logo-extension.sh"
    "install-wallpaper-slideshow.sh"
    
)

# Loop through the scripts to make them executable and then run them
for script in "${SCRIPTS[@]}"; do
    chmod +x "$SCRIPT_DIR/$script"
    "$SCRIPT_DIR/$script"
done
