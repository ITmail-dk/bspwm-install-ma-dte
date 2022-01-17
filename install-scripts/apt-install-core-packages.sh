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

echo "Enter your user password, to continue if necessary"

# Core packages to be installed
sudo apt install -y xorg x11-xserver-utils arandr autorandr dialog bspwm sxhkd sddm picom polybar xautolock xsecurelock caffeine network-manager git kitty psmisc rofi pcmanfm tlp font-manager gvfs-backends nitrogen dunst cups smbclient lxpolkit xbacklight lxappearance htop mc xarchiver pulseaudio pulsemixer moc mpv npm cava curl tmux imagemagick feh sxiv scrot flameshot firefox-esr numlockx ranger neovim notify-osd neofetch flatpak