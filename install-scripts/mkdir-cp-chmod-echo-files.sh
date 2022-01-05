#!/bin/bash

#echo "-'-'-'-'-'-'-'-'-'-'-'-'-"
#echo " "
#echo "     Creates folders."
#echo " "
#echo "-'-'-'-'-'-'-'-'-'-'-'-'-"
mkdir ~/.config
mkdir ~/.themes
mkdir ~/.fonts
mkdir ~/.icons
mkdir ~/wallpapers
mkdir ~/miscellaneous
mkdir ~/downloads
mkdir ~/documents
mkdir ~/pictures
mkdir ~/music

# Not for production version
#read -p "Troubleshooting - Press a key to continue the installation."

#Copy files to...
#echo "-'-'-'-'-'-'-'-'-'-'-'-'-"
#echo " "
#echo "     Copy files to..."
#echo " "
#echo "-'-'-'-'-'-'-'-'-'-'-'-'-"

cp -r ~/bspwm-install-ma-dte/config/* ~/.config/
cp -r ~/bspwm-install-ma-dte/fonts/* ~/.fonts/
cp -r ~/bspwm-install-ma-dte/themes/* ~/.themes/
cp -r ~/bspwm-install-ma-dte/wallpapers/* ~/wallpapers/

# Echo config to files. YES / NO
echo "-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-"
echo " "
echo "     Echo config to files..."
echo " "
echo "-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-"

sudo sh -c "echo 'deb http://deb.debian.org/debian/ testing main contrib non-free' >> /etc/apt/sources.list"
sudo sh -c "echo 'deb-src http://deb.debian.org/debian/ testing main contrib non-free' >> /etc/apt/sources.list"

echo "     Add UPUP alias to bash config."
echo "alias upup="sudo apt update && sudo apt upgrade -y && sudo apt autoremove -y" >> ~/.bash_aliases

# Echo Nitrogen config to files.
echo "dirs=$HOME/wallpapers;" >> $HOME/.config/nitrogen/nitrogen.cfg

touch ~/.config/nitrogen/bg-saved.cfg
echo "[xin_-1]" >> $HOME/.config/nitrogen/bg-saved.cfg
echo "file=$HOME/wallpapers/1080p/pexels-fiona-art-3631430.jpg" >> ~/.config/nitrogen/bg-saved.cfg
echo "mode=5" >> $HOME/.config/nitrogen/bg-saved.cfg
echo "bgcolor=#191a1b" >> $HOME/.config/nitrogen/bg-saved.cfg


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

