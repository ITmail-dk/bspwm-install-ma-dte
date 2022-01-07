#!/bin/bash

# Add ROOT Level - Software & Packages.
echo "-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-"
echo " "
echo "     APT Install Software & Packages"
echo " "
echo "     Enter your user password, to continue if necessary"
echo " "
echo "     continues the software installation in 3 seconds"
echo " "
echo "-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-"
sleep 3

# APT Update & apt upgrade
sudo apt update && sudo apt upgrade -y

# Core packages to be installed
sudo apt install -y xorg x11-xserver-utils arandr autorandr dialog bspwm sxhkd sddm picom polybar xautolock i3lock-fancy network-manager kitty psmisc rofi pcmanfm tlp font-manager gvfs-backends nitrogen dunst smbclient emacs lxpolkit xbacklight lxappearance htop mc xarchiver mpv feh sxiv pulseaudio pulsemixer npm curl imagemagick scrot firefox-esr

# Software & Packages
sudo apt install -y ranger neovim flameshot cmus ncmpcpp notify-osd neofetch flatpak cava obs-studio

# More Software & Packages ON / OFF
sudo apt install -y zsh git wireguard wireguard-tools libreoffice libreoffice-gtk3 libreoffice-style-breeze libreoffice-l10n-da inkscape gimp rawtherapee darktable okular

# Maybe maybe Software & Packages ON / OFF
#sudo apt install -y 

# Themes Extra Packages ON / OFF
sudo apt install -y papirus-icon-theme breeze-cursor-theme gnome-themes-extra


# Other packages not included or removed 
# virt-manager xscreensaver thunar thunar-archive-plugin thunar-font-manager
# qt5ct .profile add export QT_QPA_PLATFORMTHEME="qt5ct"

