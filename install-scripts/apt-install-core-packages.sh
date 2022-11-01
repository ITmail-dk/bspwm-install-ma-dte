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
sleep 2

echo "Enter your user password, to continue if necessary"

# APT Update Start RUN
sudo apt update

# Core packages to be installed
sudo apt install -y xorg arandr autorandr dialog bspwm sxhkd sddm picom polybar xautolock xsecurelock network-manager git kitty psmisc rofi nemo thunar pcmanfm module-assistant font-manager gvfs-backends nitrogen dunst rsync cups xsensors smbclient lxpolkit xbacklight lxappearance htop mc xarchiver pulseaudio pulsemixer bluez bluez-firmware bluez-tools xfce4-pulseaudio-plugin moc mpv curl tmux imagemagick sxiv scrot flameshot firefox-esr numlockx ranger neovim notify-osd neofetch flatpak timeshift rename gparted cpufrequtils xfce4-power-manager xfce4-settings bpytop

# APT OFF
# system-config-printer cifs-utils bluez-alsa-utils

# Not for production version
#read -p "Troubleshooting - Press a key to continue the installation."

# Google Chrome - Download + Install  ON / OFF
#rm google-chrome-stable_current_amd64.deb
cd /tmp/ && wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install -y /tmp/google-chrome-stable_current_amd64.deb

# Not for production version
#read -p "Troubleshooting - Press a key to continue the installation."

cd ~/bspwm-install-ma-dte

# Not for production version
#read -p "Troubleshooting - Press a key to continue the installation."