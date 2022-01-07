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
mkdir ~/.local
mkdir ~/.local/bin
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
cp -r ~/bspwm-install-ma-dte/music/* ~/music/
cp -r ~/bspwm-install-ma-dte/wallpapers/* ~/wallpapers/

#cp ~/bspwm-install-ma-dte/local-files/* ~/.local/

# Not for production version
#read -p "Troubleshooting - Press a key to continue the installation."


# Echo config to files. YES / NO
echo "-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-"
echo " "
echo "     Echo config to files..."
echo " "
echo "-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-"

sudo sh -c "echo 'deb http://deb.debian.org/debian/ testing main contrib non-free' >> /etc/apt/sources.list"
sudo sh -c "echo 'deb-src http://deb.debian.org/debian/ testing main contrib non-free' >> /etc/apt/sources.list"


echo "     Add UPUP alias to bash under bash_aliases config."
touch ~/.bash_aliases
echo 'alias upup="sudo apt update && sudo apt upgrade -y && sudo apt autoremove -y"' >> ~/.bash_aliases

# Echo Nitrogen config to files.
echo "dirs=$HOME/wallpapers;" >> ~/.config/nitrogen/nitrogen.cfg

touch ~/.config/nitrogen/bg-saved.cfg
echo "[xin_-1]" >> ~/.config/nitrogen/bg-saved.cfg
echo "file=$HOME/wallpapers/default-wallpaper.jpg" >> ~/.config/nitrogen/bg-saved.cfg
echo "mode=5" >> ~/.config/nitrogen/bg-saved.cfg
echo "bgcolor=#191a1b" >> ~/.config/nitrogen/bg-saved.cfg

# Not for production version
#read -p "Troubleshooting - Press a key to continue the installation."


#chmod +x files.
#echo "-'-'-'-'-'-'-'-'-'-'-'-'-"
#echo " "
#echo "     chmod +x files."
#echo " "
#echo "-'-'-'-'-'-'-'-'-'-'-'-'-"

chmod +x ~/.config/bspwm/bspwmrc
chmod +x ~/.config/sxhkd/sxhkdrc

chmod +x ~/.config/polybar/run-polybar.sh
chmod +x ~/.config/rofi/powermenu.sh
chmod +x ~/.config/rofi/rofi-wifi-menu.sh
chmod +x ~/.config/rofi/rofi-beats.sh

# Not for production version
#read -p "Troubleshooting - Press a key to continue the installation."


#echo "-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-"
#echo " "
#echo "     All DONE - User + .config files..."
#echo " "
#echo "-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-"

