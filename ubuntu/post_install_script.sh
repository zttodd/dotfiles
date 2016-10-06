#!/bin/bash

# Add VirtualBox repository
echo deb http://download.virtualbox.org/virtualbox/debian xenial contrib | sudo tee /etc/apt/sources.list.d/virtualbox.list

# Add VirtualBox keys
wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add -
wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | sudo apt-key add -

# Add Spotify key
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys BBEBDCB318AD50EC6865090613B00F1FD2C19886

# Add Spotify repository
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list

# Update everything
sudo apt update && sudo apt upgrade

# Install software
sudo apt install \
    build-essential chromium-browser dconf-editor dkms git gnome-tweak-tool \
    htop libssl-dev php ranger spotify-client stow taskwarrior terminator tmux \
    vim vim-gnome virtualbox-5.1

# Install Powertop if this computer is a ThinkPad
while true; do
    echo -en '\n';
    read -p "Is this computer a ThinkPad? If so, let's install powertop to improve performance. (y/n) " yn
    case $yn in
        [Yy]* ) sudo apt install powertop; break;;
        [Nn]* ) break;;
        * ) echo "Please answer yes or no.";;
    esac
done

# Put Launcher at the left or bottom of screen
while true; do
    echo -en '\n';
    read -p "Would you like the Unity Launcher at the left or bottom of your screen? (l/b) " lb
    case $lb in
        [Ll]* ) gsettings set com.canonical.Unity.Launcher launcher-position Left; break;;
        [Bb]* ) gsettings set com.canonical.Unity.Launcher launcher-position Bottom; break;;
        * ) gsettings set com.canonical.Unity.Launcher launcher-position Left; break;;
    esac
done

# Install CD ripping software if CD burner is available
while true; do
    echo -en '\n';
    read -p "Does this computer have a CD burner? (y/n) " yn
    case $yn in
        [Yy]* ) sudo apt install abcde flac; break;;
        [Nn]* ) break;;
        * ) echo "Please answer yes or no.";;
    esac
done

echo -en '\n';
echo "Setup is complete. Have fun!";
