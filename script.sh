#!/usr/bin/env bash

# internet connection check
if ping -c 1 -q -W 8 "8.8.8.8" >/dev/null 2>&1; then
    echo "connection active"
else
    echo "connection not active"
    exit 1
fi

# Checks if current user has sudo rights
if sudo -v; then
    echo "Root privileges granted"
else
    echo "Root privileges denied"
    exit 1
fi

# nala is used if present on the system
if command -v nala &>/dev/null; then
    package_manager="nala"
else
    package_manager="apt"
fi

# Installs git and the necessary plugin dependencies
sudo $package_manager install -y git build-essential libglib2.0-dev libgtk-3-dev libwnck-3-dev libxfce4ui-2-dev libxfce4panel-2.0-dev xfce4-dev-tools xorg-dev

# retrieves the plugin's code base locally
git clone https://gitlab.xfce.org/panel-plugins/xfce4-docklike-plugin.git /tmp/xfce4-docklike-plugin 

# Build & Install
cd /tmp/xfce4-docklike-plugin || exit
sudo ./autogen.sh -- prefix=/usr && sudo make && sudo make install
echo "installation is complete"