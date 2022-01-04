#!/bin/bash

cd ~/bspwm-install-ma-dte

#echo "-'-'-'-'-'-'-'-'-'-'-'-'-"
#echo " "
#echo "     Creates folders."
#echo " "
#echo "-'-'-'-'-'-'-'-'-'-'-'-'-"
mkdir ~/.config
mkdir ~/.fonts
mkdir ~/wallpapers

# ADD new apt testing YES / NO
echo "-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-"
echo " "
echo "     APT add testing main contrib non-free."
echo " "
echo "-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-"

sudo sh -c "echo 'deb http://deb.debian.org/debian/ testing main contrib non-free' >> /etc/apt/sources.list"
sudo sh -c "echo 'deb-src http://deb.debian.org/debian/ testing main contrib non-free' >> /etc/apt/sources.list"

echo "     Add UPUP alias to bash config."
sudo sh -c "echo 'alias upup="sudo apt update && sudo apt upgrade -y && sudo apt autoremove -y"' >> ~/.bash_aliases"

# Not for production version
#read -p "Troubleshooting - Press a key to continue the installation."

#Copy files to...
#echo "-'-'-'-'-'-'-'-'-'-'-'-'-"
#echo " "
#echo "     Copy files to..."
#echo " "
#echo "-'-'-'-'-'-'-'-'-'-'-'-'-"

cp -r ~/bspwm-install-ma-dte/config/* ~/.config/
cp -r ~/bspwm-install-ma-dte/wallpapers/* ~/wallpapers/
cp -r ~/bspwm-install-ma-dte/fonts/* ~/.fonts/

# Echo til config files
echo "dirs=$HOME/wallpapers;" >> $HOME/.config/nitrogen/nitrogen.cfg


#chmod +x files.
#echo "-'-'-'-'-'-'-'-'-'-'-'-'-"
#echo " "
#echo "     chmod +x files."
#echo " "
#echo "-'-'-'-'-'-'-'-'-'-'-'-'-"
chmod +x ~/.config/bspwm/bspwmrc
chmod +x ~/.config/sxhkd/sxhkdrc

chmod +x ~/.config/polybar/run-polybar.sh
chmod +x ~/.config/rofi/rofi-beats

#echo "-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-"
#echo " "
#echo "     All DONE - User + .config files..."
#echo " "
#echo "-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-"

# Not for production version
#read -p "Troubleshooting - Press a key to continue the installation."

# Add ROOT Level - Software & Packages.
#echo "-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-"
#echo " "
#echo "     APT Install Software & Packages"
#echo " "
#echo "     Enter your user password, to continue if necessary"
#echo " "
#echo "     continues the software installation in 5 seconds"
#echo " "
#echo "-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-"

sudo apt update
sudo apt install -y xorg x11-xserver-utils arandr dialog bspwm sxhkd sddm picom polybar network-manager kitty psmisc ranger rofi thunar thunar-archive-plugin thunar-font-manager font-manager gvfs-backends flameshot neovim nitrogen lxpolkit lxappearance htop mc imagemagick npm feh sxiv pulseaudio pulsemixer mpd ncmpcpp notify-osd npm xscreensaver neofetch firefox-esr

wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install -y ~/bspwm-install-ma-dte/google-chrome-stable_current_amd64.deb

# More Software & Packages ON / OFF
sudo apt install -y zsh git wireguard wireguard-tools libreoffice libreoffice-l10n-da inkscape gimp rawtherapee darktable okular virt-manager

# Not for production version
#read -p "Troubleshooting - Press a key to continue the installation."

# Alacritty - Building and installing ON / OFF
#echo "-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-"
#echo " "
#echo "     Alacritty - Building and installing"
#echo " "
#echo "-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-"
# Alacritty - Building and installing ON / OFF

#. ~/bspwm-install-ma-dte/install-alacritty-debian.sh

# Last step setup menu installing.
. last-step-setup-menu.sh

# Clean up and delete folders and other installation files
#cd ~
#rm -r ~/bspwm-install-ma-dte/

read -p "Press [Enter] key to Reboot System."
echo "You are ready to reboot..."
sudo reboot
