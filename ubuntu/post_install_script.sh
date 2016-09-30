#!/bin/bash

# Update everything
sudo apt update && sudo apt upgrade

# Install software
sudo apt install \
    build-essential chromium-browser dconf-editor git gnome-tweak-tool \
    htop libssl-dev ranger taskwarrior terminator tmux vim vim-gnome

# Move Unity Launcher to bottom of screen
gsettings set com.canonical.Unity.Launcher launcher-position Bottom
