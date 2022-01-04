#!/bin/bash

# Add ROOT Level - Software & Packages.
echo "-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-"
echo " "
echo "     APT Install Software & Packages"
echo " "
echo "     Enter your user password, to continue if necessary"
echo " "
echo "     continues the software installation in 5 seconds"
echo " "
echo "-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-"

sudo apt update
sudo apt install -y xorg x11-xserver-utils arandr dialog bspwm sxhkd sddm picom polybar network-manager kitty psmisc ranger rofi thunar thunar-archive-plugin thunar-font-manager font-manager gvfs-backends flameshot neovim nitrogen lxpolkit lxappearance htop mc imagemagick npm feh sxiv pulseaudio pulsemixer mpd ncmpcpp notify-osd npm xscreensaver curl neofetch firefox-esr

# Google Chrome - Download + Install
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install -y ~/bspwm-install-ma-dte/google-chrome-stable_current_amd64.deb

# More Software & Packages ON / OFF
sudo apt install -y zsh git wireguard wireguard-tools libreoffice libreoffice-l10n-da inkscape gimp rawtherapee darktable okular virt-manager
