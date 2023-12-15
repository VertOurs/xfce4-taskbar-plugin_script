# xfce4-taskbar-plugin Installation Script for debian-based distro

installation script to add the DockLike-TaskBar plugin to xfce desktop elements

## Description
this script allows you to install on debian-based distros the dependencies necessary for the plugin to function, but which are not natively integrated into the plugin installation procedure provided by the project.
once this has been done, it fetches the latest version of the plugin and installs it.

## Prerequisites
the user must belong to the sudo group
the machine must be up-to-date and have an internet connection during script execution

## Build & Install taskbar Plugin
download repo code locally
git clone https://github.com/VertOurs/xfce4-taskbar-plugin_script.git
in the script folder open a terminal
make script executable
execute script
the plugin is installed and available 

## Clean
In order to function correctly, this script installs git on al machine if it is not already present. Once the installation is complete, if you don't need this package, you must uninstall it manually.
