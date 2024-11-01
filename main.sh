#!/bin/bash

# Directory containing the scripts
SCRIPT_DIR="./scripts"

# Array of script names
SCRIPTS=(
    "install-gnome-tweaks.sh"
    "set-scroll-direction.sh"
    "install-vscode.sh"
    "install-jetbrains-toolbox.sh"
    "set-secondary-click.sh"
    "install-git-kraken.sh"
    "install-nvidia-drivers.sh"
    "install-steam.sh"
    "install-supergfxctl-gex.sh"
    "install-pia-client.sh"
    "install-zsh-ohmyzsh.sh"
    "install-slack.sh"
    "add-maximize-minimize.sh"
    "install-podman.sh"
    "remove-background-logo-extension.sh"
)

# Loop through the scripts to make them executable and then run them
for script in "${SCRIPTS[@]}"; do
    chmod +x "$SCRIPT_DIR/$script"
    "$SCRIPT_DIR/$script"
done
