#!/bin/bash

# For running after fresh install of Kubuntu
# Remove any software that you don't want after forking
# This is literally my first project ever, so please support

# General Update

sudo apt-get update 
sudo apt install curl

# Install Software

sudo apt install preload kubuntu-restricted-extras build-essential ktorrent youtube-dl ffmpeg

# Install VPN - expressvpn
curl https://www.expressvpn.works/clients/linux/expressvpn_3.9.0.75-1_amd64.deb -o expressvpn_3.9.0.75-1_amd64.deb
sudo dpkg -i expressvpn_3.9.0.75-1_amd64.deb

# Remove Firefox
sudo apt remove firefox

# Install Brave
sudo apt install apt-transport-https curl
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update
sudo apt install brave-browser

# Install Spotify
curl -sS https://download.spotify.com/debian/pubkey_0D811D58.gpg | sudo apt-key add -
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update 
sudo apt-get install spotify-client

# Install Chrome
sudo wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb

# Install Snap installer
sudo apt-get install snapd
sudo snap install core

# Install Python Package installer
sudo apt install python3-pip

# Install System Monitor
sudo apt install python3-pip
sudo pip3 install bpytop

# Install VLC
sudo snap install vlc

# Install Telegram
sudo snap install telegram-desktop

# Install Bitwarden (password manager)
sudo snap install bitwarden

# Install Exodus
curl https://downloads.exodus.com/releases/exodus-linux-x64-21.7.2.deb -o exodus-linux-x64-21.7.2.deb 
sudo dpkg -i exodus-linux-x64-21.7.2.deb

# Configure VPN
sudo expressvpn activate
sudo expressvpn protocol lightway_udp
sudo expressvpn connect
sudo expressvpn autoconnect true

# Allow KDE Connect ports to bypass firewall
sudo ufw allow 1714:1764/tcp
sudo ufw allow 1714:1764/udp

# Enable Firewall
sudo ufw enable

# Last Update
sudo apt-get update
sudo apt-get upgrade

# Reboot
reboot
