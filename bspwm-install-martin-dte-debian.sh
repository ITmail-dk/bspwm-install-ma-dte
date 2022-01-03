#!/bin/bash

cd ~/bspwm-install-ma-dte

echo "-'-'-'-'-'-'-'-'-'-'-'-'-"
echo " "
echo "     Creates folders."
echo " "
echo "-'-'-'-'-'-'-'-'-'-'-'-'-"
mkdir ~/.config
mkdir ~/.fonts
mkdir ~/wallpapers

#Remove files & copy new.
echo "-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-"
echo " "
echo "     Remove files & copy new."
echo "     SID apt sources.list"
echo " "
echo "-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-"

rm /etc/apt/sources.list
cp ~/bspwm-install-ma-dte/apt/sources.list /etc/apt/sources.list


#Copy files to...
echo "-'-'-'-'-'-'-'-'-'-'-'-'-"
echo " "
echo "     Copy files to..."
echo " "
echo "-'-'-'-'-'-'-'-'-'-'-'-'-"

cp -r ~/bspwm-install-ma-dte/config/* ~/.config/
cp -r ~/bspwm-install-ma-dte/wallpapers/* ~/wallpapers/
cp -r ~/bspwm-install-ma-dte/fonts/* ~/.fonts/

# Echo til config files
echo "dirs=$HOME/wallpapers;" >> $HOME/.config/nitrogen/nitrogen.cfg


#chmod +x files.
echo "-'-'-'-'-'-'-'-'-'-'-'-'-"
echo " "
echo "     chmod +x files."
echo " "
echo "-'-'-'-'-'-'-'-'-'-'-'-'-"
chmod +x ~/.config/bspwm/bspwmrc
chmod +x ~/.config/sxhkd/sxhkdrc

chmod +x ~/.config/polybar/run-polybar.sh
chmod +x ~/.config/rofi/rofi-beats

echo "-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-"
echo " "
echo "     All DONE - User + .config files..."
echo " "
echo "-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-"


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

sleep 5

sudo apt install -y xorg x11-xserver-utils arandr bspwm sxhkd sddm picom polybar network-manager dialog zsh kitty psmisc ranger rofi thunar thunar-archive-plugin thunar-font-manager font-manager gvfs-backends flameshot neovim nitrogen git lxpolkit lxappearance htop mc imagemagick npm feh sxiv pulseaudio pulsemixer mpd ncmpcpp notify-osd npm xscreensaver firefox

wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install -y ~/bspwm-install-ma-dte/google-chrome-stable_current_amd64.deb

# More Software & Packages ON / OFF
#sudo apt install -y inkscape gimp rawtherapee darktable okular


# Alacritty - Building and installing ON / OFF
#echo "-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-"
#echo " "
#echo "     Alacritty - Building and installing"
#echo " "
#echo "-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-"
# Alacritty - Building and installing ON / OFF

#. ~/bspwm-install-ma-dte/install-alacritty-debian.sh

echo "-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-"
echo " "
echo "     ALL DONE - Press [Enter] to Rebooting System."
echo "     INFO."
echo "     SUPER + ENTER = Terminal"
echo "     SUPER + E = File Manager"
echo "     SUPER + W = Close Program"
echo "     SUPER + R = Run menu"
echo " "
echo "     If you are in a virtual machine and can not use SUPER KEY"
echo "     press CTRL + C to stop and run file."
echo " "
echo "     . copy-vm-keys.sh"
echo "     "
echo "     It will make your ALT KEY on the keyboard become the SUPER KEY "
echo "     As long as you are running in a virtual machine then use it."
echo " "
echo "     And then you are ready to reboot, sudo reboot"
echo " "
echo "-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-"

cd ~/bspwm-install-ma-dte/

# VM TEST KEY COPY Shall not be included in the published edition.
#echo "-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-"
#echo " "
#echo "      TEST - VM KEY SET COPY DONE"
#echo " "
#echo "-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-"

#. copy-vm-keys.sh
. ~/bspwm-install-ma-dte/setup-menu.sh

# Clean up and delete folders and other installation files
#cd ~
#rm -r ~/bspwm-install-ma-dte/

read -p "Press [Enter] key to Reboot System."
echo "You are ready to reboot..."
sudo reboot

