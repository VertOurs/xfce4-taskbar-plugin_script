#!/usr/bin/env bash
set -euo pipefail

PLUGIN_DIR="/tmp/xfce4-docklike-plugin"

# Internet connection check
if ! ping -c 1 -q -W 8 "8.8.8.8" >/dev/null 2>&1; then
    echo "Error: no internet connection." >&2
    exit 1
fi

# Check sudo privileges
if ! sudo true; then
    echo "Error: sudo privileges required." >&2
    exit 1
fi

# Use nala if available, otherwise fall back to apt
if command -v nala &>/dev/null; then
    package_manager="nala"
else
    package_manager="apt"
fi

# Install build dependencies
sudo "$package_manager" install -y \
    git build-essential libglib2.0-dev libgtk-3-dev libwnck-3-dev \
    libxfce4ui-2-dev libxfce4panel-2.0-dev xfce4-dev-tools xorg-dev

# Clone plugin repository (clean up any leftover from a previous run)
rm -rf "$PLUGIN_DIR"
git clone https://gitlab.xfce.org/panel-plugins/xfce4-docklike-plugin.git "$PLUGIN_DIR"

# Build and install (only the install step requires root)
cd "$PLUGIN_DIR"
./autogen.sh --prefix=/usr
make
sudo make install

echo "Installation complete."
