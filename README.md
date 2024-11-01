# Setup Scripts

This repository contains various Bash scripts for setting up your Fedora Linux environment with useful tools and custom configurations.

## Overview

The repository includes the following scripts:

1. **Main Script (`main.sh`)**: This is the main script that orchestrates the execution of all individual scripts in the `scripts` folder. It makes each script executable and runs them in sequence.

2. **Individual Scripts**:
    - `install-gnome-tweaks.sh`: Installs GNOME Tweaks for customizing your desktop environment.
    - `set-scroll-direction.sh`: Sets the trackpad scroll direction to standard (opposite of natural scrolling).
    - `install-vscode.sh`: Installs Visual Studio Code using the official Microsoft repository.
    - `install-jetbrains-toolbox.sh`: Installs JetBrains Toolbox for managing JetBrains IDEs.
    - `set-secondary-click.sh`: Configures the trackpad's secondary click to be activated by pushing in the bottom-right corner.
    - `install-git-kraken.sh`: Installs GitKraken, a popular Git GUI client.
    - `install-zsh-ohmyzsh.sh`: Installs Zsh and Oh My Zsh for a more customizable terminal experience.
    - `install-slack.sh`: Installs Slack, a popular messaging and collaboration tool for teams.
    - `add-maximize-minimize.sh`: Adds maximize and minimize buttons to GNOME windows for better usability.
    - `install-chromium.sh`: Installs Chromium, an open-source web browser.
    - `install-podman.sh`: Installs Podman, a daemonless container engine for managing containers.
    - `remove-background-logo-extension.sh`: Removes the GNOME extension "Background Logo" to clean up the desktop environment.
    - `install-wallpaper-slideshow.sh`: Installs the GNOME extension "Wallpaper Slideshow" to rotate wallpapers automatically.
    - `install-pia-client.sh`: Installs the Private Internet Access (PIA) VPN client for secure browsing.
    - `install-qbittorrent.sh`: Installs qBittorrent, an open-source BitTorrent client for downloading and managing torrents.
    - `disable-hot-corners.sh`: Disables the hot corners feature in GNOME to prevent accidental activation.

## Prerequisites

- Fedora Linux with `dnf` as the package manager.
- Internet connection for downloading tools.

## Usage

### Step 1: Clone the Repository

Clone the repository to your local machine:

```bash
git clone <repository-url>
cd <repository-directory>
```

### Step 2: Make `main.sh` Executable

Make the main script executable:

```bash
chmod +x main.sh
```

### Step 3: Run the Main Script

Run the main script to install all tools and configure your environment:

```bash
./main.sh
```

The `main.sh` script will:
1. Make all scripts in the `scripts` directory executable.
2. Execute each script to install and configure the specified tools.

## Script Details

### `install-gnome-tweaks.sh`
This script installs GNOME Tweaks, a powerful customization tool for GNOME Desktop environments.

### `set-scroll-direction.sh`
This script sets the trackpad scroll direction to standard (non-natural), providing a more traditional scrolling experience.

### `install-vscode.sh`
This script installs Visual Studio Code, a popular code editor, from the official Microsoft repository.

### `install-jetbrains-toolbox.sh`
This script installs JetBrains Toolbox. If Toolbox is already installed, the script will skip the installation. This ensures you are always up-to-date without redundant installations.

### `set-secondary-click.sh`
This script sets the trackpad secondary click method to be activated by pushing in the bottom-right corner, providing an intuitive way to right-click using the trackpad.

### `install-git-kraken.sh`
This script installs GitKraken, a popular Git GUI client, from the official repository.

### `install-zsh-ohmyzsh.sh`
This script installs Zsh and sets it as the default shell. It also installs Oh My Zsh, a popular framework for managing Zsh configurations, to enhance the terminal experience.

### `install-slack.sh`
This script installs Slack, a popular messaging and collaboration tool, using the official Slack RPM package.

### `add-maximize-minimize.sh`
This script adds maximize and minimize buttons to GNOME windows by modifying GNOME settings to improve usability for users who prefer these window controls.

### `install-chromium.sh`
This script installs Chromium, an open-source web browser, using the official Fedora repositories.

### `install-podman.sh`
This script installs Podman, a daemonless container engine for managing containers, using the official Fedora repositories.

### `remove-background-logo-extension.sh`
This script removes the GNOME extension "Background Logo" using the GNOME Shell extensions tool to clean up the desktop environment.

### `install-wallpaper-slideshow.sh`
This script installs the GNOME extension "Wallpaper Slideshow" from the GNOME extensions website, which allows for automatic wallpaper rotation to enhance the desktop experience.

### `install-pia-client.sh`
This script installs the Private Internet Access (PIA) VPN client for secure browsing. It downloads the official installer, extracts it, and runs the installation script to set up the PIA client.

### `install-qbittorrent.sh`
This script installs qBittorrent, an open-source BitTorrent client for downloading and managing torrents, using the official Fedora repositories.

### `disable-hot-corners.sh`
This script disables the hot corners feature in GNOME by modifying the settings using `gsettings`, preventing accidental activation of the overview.

## Customizing

Feel free to modify any of the individual scripts in the `scripts` directory to suit your specific requirements. You can add additional tools or change configurations based on your needs.

## Troubleshooting

- **Permissions Issues**: If you encounter permission errors, ensure you are running the scripts with proper privileges. You may need to use `sudo` for certain commands.
- **Missing Directories**: The script will automatically create directories like `$HOME/.local/bin` if they do not exist, but ensure your environment supports all intended changes.

## Contributing

If you would like to contribute, feel free to open pull requests or create issues for suggestions, bug fixes, or additional features.

## License

This project is licensed under the MIT License.

