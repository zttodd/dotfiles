#!/bin/bash

# Update everything
sudo apt update && sudo apt upgrade

# Install software
sudo apt install \
    autojump chromium fonts-inconsolata git firmware-linux-nonfree ranger \
    stow terminator
