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
sudo apt install -y wireguard wireguard-tools libreoffice libreoffice-gtk3 libreoffice-l10n-da inkscape gimp rawtherapee darktable okular scribus obs-studio freerdp2-x11 freerdp2-shadow-x11 thunar thunar-archive-plugin thunar-font-manager filezilla notepadqq

# Maybe maybe Software & Packages ON / OFF
#sudo apt install -y 

# Not for production version
read -p "Troubleshooting - Press a key to continue the installation."

# Alacritty - Building and installing ON / OFF
clear
echo "-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-"
echo " "
echo "     Alacritty - Building and installing"
echo " "
echo "-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-"

# Alacritty - Building and installing ON / OFF
. ~/bspwm-install-ma-dte/install-scripts/install-alacritty-debian.sh

# Not for production version
read -p "Troubleshooting - Press a key to continue the installation."