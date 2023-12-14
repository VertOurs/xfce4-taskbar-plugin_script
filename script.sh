#!/usr/bin/env bash
sudo apt install -y git build-essential libglib2.0-dev libgtk-3-dev libwnck-3-dev libxfce4ui-2-dev libxfce4panel-2.0-dev xfce4-dev-tools xorg-dev

git clone https://gitlab.xfce.org/panel-plugins/xfce4-docklike-plugin.git /tmp/xfce4-docklike-plugin

cd /tmp/xfce4-docklike-plugin

sudo ./autogen.sh && sudo make && sudo make install
