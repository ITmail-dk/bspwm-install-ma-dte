#!/bin/bash

# Add ROOT Level - Software & Packages.
echo "-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-"
echo " "
echo "     DNF Install Software & Packages"
echo " "
echo "     Enter your user password, to continue if necessary"
echo " "
echo "     continues the software installation in 3 seconds"
echo " "
echo "-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-"
sleep 3
# APT Update & apt upgrade
sudo dnf update && sudo dnf upgrade -y

echo "Enter your user password, to continue if necessary"

sudo dnf install -y https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

# Core packages to be installed
sudo dnf install -y xorg-x11-server arandr autorandr dialog bspwm sxhkd sddm picom polybar xautolock xsecurelock network-manager network-manager-applet git kitty psmisc rofi pcmanfm nitrogen dunst cups system-config-printer xsensors cifs-utils lxpolkit xbacklight lxappearance htop mc xarchiver pulseaudio pulsemixer pulseaudio-utils bluez bluez-tools xfce4-pulseaudio-plugin mpv npm cava curl tmux imagemagick sxiv scrot flameshot firefox numlockx ranger neovim neofetch flatpak timeshift ren krename gparted xfce4-power-manager xfce4-settings bpytop

# Not for production version
#read -p "Troubleshooting - Press a key to continue the installation."

# Google Chrome - Download + Install  ON / OFF
sudo dnf install -y https://dl.google.com/linux/direct/google-chrome-stable_current_x86_64.rpm