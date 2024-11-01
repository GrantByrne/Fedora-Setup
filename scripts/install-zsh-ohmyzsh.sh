#!/bin/bash

# Check if Zsh is already installed
if command -v zsh &> /dev/null
then
    echo "Zsh is already installed. Skipping Zsh installation."
else
    # Install Zsh
    echo "Installing Zsh..."
    sudo dnf install -y zsh
fi

# Set Zsh as the default shell for the current user
echo "Setting Zsh as the default shell..."
chsh -s $(which zsh)

# Install Oh My Zsh
if [ -d "$HOME/.oh-my-zsh" ]; then
    echo "Oh My Zsh is already installed. Skipping installation."
else
    echo "Installing Oh My Zsh..."
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

# Done
echo "Zsh and Oh My Zsh installation complete!"
