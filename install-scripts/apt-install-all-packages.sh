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
sudo apt install -y xorg x11-xserver-utils arandr autorandr dialog bspwm sxhkd sddm picom polybar xidle i3lock-fancy network-manager kitty psmisc rofi thunar thunar-archive-plugin thunar-font-manager tlp font-manager gvfs-backends nitrogen emacs lxpolkit xbacklight lxappearance htop mc mpv feh sxiv pulseaudio pulsemixer npm curl firefox-esr

# Software & Packages
sudo apt install -y ranger neovim flameshot cmus ncmpcpp notify-osd imagemagick neofetch flatpak cava obs-studio

# More Software & Packages ON / OFF
sudo apt install -y zsh git wireguard wireguard-tools libreoffice libreoffice-gtk3 libreoffice-style-breeze libreoffice-l10n-da inkscape gimp rawtherapee darktable okular virt-manager

# Maybe maybe Software & Packages ON / OFF
sudo apt install -y dunst

# Maybe 
# qt5ct .profile add export QT_QPA_PLATFORMTHEME="qt5ct"
# xscreensaver

# Google Chrome - Download + Install  ON / OFF
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install -y ~/bspwm-install-ma-dte/google-chrome-stable_current_amd64.deb



# Themes Extra Packages ON / OFF
sudo apt install -y papirus-icon-theme breeze-cursor-theme gnome-themes-extra
