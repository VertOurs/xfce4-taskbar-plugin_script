# xfce4-docklike-plugin Installer

[![Lint](https://github.com/VertOurs/xfce4-taskbar-plugin_script/actions/workflows/lint.yml/badge.svg)](https://github.com/VertOurs/xfce4-taskbar-plugin_script/actions/workflows/lint.yml)
[![License: GPL v3](https://img.shields.io/badge/license-GPL--3.0--or--later-blue.svg)](LICENSE)

Bash installer script for [xfce4-docklike-plugin](https://gitlab.xfce.org/panel-plugins/xfce4-docklike-plugin) on Debian-based distributions.

## Why this script exists

The xfce4-docklike-plugin project does not bundle the Debian build dependencies
in its installation procedure. This script fills that gap: it installs the
required development packages, fetches the latest source from upstream, and
builds the plugin in one step.

## Why not install from the package manager?

xfce4-docklike-plugin is not available in the official Debian or Ubuntu
repositories. Building from source is currently the only supported installation
path on these distributions.

## Prerequisites

- Debian-based distribution (Debian, Ubuntu, Linux Mint...)
- Internet connection
- `sudo` privileges
- `apt` (pre-installed on all Debian-based systems)

`nala` is used in place of `apt` if it is already installed on your system.

## Installation

```bash
git clone https://github.com/VertOurs/xfce4-taskbar-plugin_script.git
cd xfce4-taskbar-plugin_script
chmod +x script.sh
./script.sh
```

## Notes

**git as a build dependency.** The script installs `git` if it is not already
present. If you do not need it after installation, remove it manually:

```bash
sudo apt remove git
```

**Temporary files.** The plugin source is cloned to `/tmp/xfce4-docklike-plugin`.
This directory is cleaned automatically on rerun and cleared on system reboot.
No manual cleanup is required.

## License

[GPL-3.0-or-later](LICENSE)
