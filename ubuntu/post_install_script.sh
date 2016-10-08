#!/bin/bash

echo -en '\n';
echo "===============================";
echo "Adding repositories and keys...";
echo "===============================";
echo -en '\n';

# Add VirtualBox repository
sudo add-apt-repository 'deb http://download.virtualbox.org/virtualbox/debian xenial contrib'

# Add VirtualBox keys
wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add -
wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | sudo apt-key add -

# Add Spotify key
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys BBEBDCB318AD50EC6865090613B00F1FD2C19886

# Add Spotify repository
sudo add-apt-repository 'deb http://repository.spotify.com stable non-free'

# Add Google Chrome repository
sudo add-apt-repository 'deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main'

# Add Google Chrome key
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -

# Add Opera repository
sudo add-apt-repository 'deb https://deb.opera.com/opera-stable/ stable non-free'

# Add Opera key
wget -qO- https://deb.opera.com/archive.key | sudo apt-key add -

echo -en '\n';
echo "==========================================";
echo "Updating sources and upgrading software...";
echo "==========================================";
echo -en '\n';

# Update everything
sudo apt update && sudo apt upgrade

# Install software
sudo apt install \
    build-essential chromium-browser conky dconf-editor dkms git gnome-tweak-tool \
    google-chrome-stable htop libssl-dev opera-stable php php-mbstring php-xml \
    php-zip ranger spotify-client stow taskwarrior terminator tmux vim vim-gnome \
    virtualbox-5.1 xclip zsh

echo -en '\n';
echo "==========================";
echo "Node Version Manager (NVM)";
echo "==========================";

# Install NVM (Node Version Manager)
while true; do
    echo -en '\n';
    read -p "Would you like to install Node Version Manager (NVM)? (y/n) " yn
    case $yn in
        [Yy]* ) curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.32.0/install.sh | bash; break;;
        [Nn]* ) break;;
        * ) echo "Please answer yes or no.";;
    esac
done

echo -en '\n';
echo "========";
echo "Powertop";
echo "========";

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

echo -en '\n';
echo "========================";
echo "Unity Launcher Placement";
echo "========================";

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

echo -en '\n';
echo "===========================";
echo "abcde (A Better CD Encoder)";
echo "===========================";

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
echo "============================";
echo "Setup is complete. Have fun!";
echo "============================";
echo -en '\n';
