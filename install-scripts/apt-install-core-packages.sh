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
sudo apt install -y xorg x11-xserver-utils arandr autorandr dialog bspwm sxhkd sddm picom polybar xautolock xsecurelock network-manager git kitty psmisc rofi pcmanfm module-assistant font-manager gvfs-backends nitrogen dunst cups system-config-printer xsensors smbclient cifs-utils lxpolkit xbacklight lxappearance htop mc xarchiver pulseaudio pulsemixer pulseaudio-utils bluez bluez-firmware bluez-tools bluez-alsa-utils xfce4-pulseaudio-plugin moc mpv npm cava curl tmux imagemagick sxiv scrot flameshot firefox-esr numlockx ranger neovim notify-osd neofetch flatpak timeshift rename gparted cpufrequtils xfce4-power-manager xfce4-settings bpytop

# Not for production version
#read -p "Troubleshooting - Press a key to continue the installation."

# Google Chrome - Download + Install  ON / OFF
#rm google-chrome-stable_current_amd64.deb
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install -y ~/bspwm-install-ma-dte/google-chrome-stable_current_amd64.deb