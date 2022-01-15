#!/bin/bash

# Install - Software & Packages.
echo "-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-"
echo " "
echo "     Download, Building & Install Software"
echo " "
echo "     Enter your user password, to continue if necessary"
echo " "
echo "     continues the installation in 3 seconds"
echo " "
echo "-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-"
sleep 3

# Software & Packages
sudo apt install -y wireguard wireguard-tools libreoffice libreoffice-gtk3 libreoffice-l10n-da inkscape gimp rawtherapee darktable okular scribus obs-studio freerdp2-x11

# Maybe maybe Software & Packages ON / OFF
#sudo apt install -y 

# Other packages not included or removed 
# virt-manager xscreensaver thunar thunar-archive-plugin thunar-font-manager cmus ncmpcpp xidle i3lock-fancy
# qt5ct .profile add export QT_QPA_PLATFORMTHEME="qt5ct"


# Google Chrome - Download + Install  ON / OFF
rm google-chrome-stable_current_amd64.deb
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install -y ~/bspwm-install-ma-dte/google-chrome-stable_current_amd64.deb


# Alacritty - Building and installing ON / OFF

echo "-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-"
echo " "
echo "     Alacritty - Building and installing"
echo " "
echo "-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-"

# Alacritty - Building and installing ON / OFF
. ~/bspwm-install-ma-dte/install-scripts/install-alacritty-debian.sh