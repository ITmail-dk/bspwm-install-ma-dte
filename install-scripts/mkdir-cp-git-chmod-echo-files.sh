#!/bin/bash

echo "-'-'-'-'-'-'-'-'-'-'-'-'-"
echo " "
echo "     Creates folders."
echo " "
echo "-'-'-'-'-'-'-'-'-'-'-'-'-"
mkdir ~/.config
mkdir ~/.themes
mkdir ~/.fonts
mkdir ~/.icons
mkdir ~/.local
mkdir ~/.local/bin
mkdir ~/wallpapers
mkdir ~/miscellaneous
# User folders.
mkdir ~/Downloads
mkdir ~/Documents
mkdir ~/Templates
mkdir ~/Pictures
mkdir ~/Desktop
mkdir ~/Public
mkdir ~/Videos
mkdir ~/Music



# Not for production version
#read -p "Troubleshooting - Press a key to continue the installation."

#Copy files to...
echo "-'-'-'-'-'-'-'-'-'-'-'-'-"
echo " "
echo "     Copy files to..."
echo " "
echo "-'-'-'-'-'-'-'-'-'-'-'-'-"

cp -r ~/bspwm-install-ma-dte/config/* ~/.config/
cp -r ~/bspwm-install-ma-dte/fonts/* ~/.fonts/
#cp -r ~/bspwm-install-ma-dte/themes/* ~/.themes/
cp -r ~/bspwm-install-ma-dte/music/* ~/Music/
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
echo "dirs=$HOME/wallpapers/1080p;" >> ~/.config/nitrogen/nitrogen.cfg

touch ~/.config/nitrogen/bg-saved.cfg
echo "[xin_-1]" >> ~/.config/nitrogen/bg-saved.cfg
echo "file=$HOME/wallpapers/default-wallpaper.jpg" >> ~/.config/nitrogen/bg-saved.cfg
echo "mode=5" >> ~/.config/nitrogen/bg-saved.cfg
echo "bgcolor=#191a1b" >> ~/.config/nitrogen/bg-saved.cfg

# Not for production version
#read -p "Troubleshooting - Press a key to continue the installation."


#chmod +x files.
echo "-'-'-'-'-'-'-'-'-'-'-'-'-"
echo " "
echo "     chmod +x files."
echo " "
echo "-'-'-'-'-'-'-'-'-'-'-'-'-"

chmod +x ~/.config/bspwm/bspwmrc
chmod +x ~/.config/sxhkd/sxhkdrc

chmod +x ~/.config/polybar/run-polybar.sh
chmod +x ~/.config/rofi/powermenu.sh
chmod +x ~/.config/rofi/rofi-wifi-menu.sh
chmod +x ~/.config/rofi/rofi-beats.sh

# Not for production version
#read -p "Troubleshooting - Press a key to continue the installation."


#Unzip files to...
#echo "-'-'-'-'-'-'-'-'-'-'-'-'-"
#echo " "
#echo "     Unzip files to..."
#echo " "
#echo "-'-'-'-'-'-'-'-'-'-'-'-'-"

#tar -xf themes/archive.tar.xz -C ~/.themes/
#tar -xf themes/Nordic-bluish-accent.tar.xz -C ~/.themes/
#tar -xf themes/cursors/Nordzy-cursors.tar.gz -C ~/.icons/

#Git Clone files.
echo "-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-"
echo " "
echo "     Git Clone - Downloads"
echo " "
echo "-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-"

#git clone https://github.com/LINK Nordic-Theme Specific-folder

git clone https://github.com/EliverLara/Nordic ~/bspwm-install-ma-dte/themes/themes-de/Nordic-theme
git clone https://github.com/alvatip/Nordzy-cursors ~/bspwm-install-ma-dte/themes/cursors/Nordzy-cursors-theme
git clone https://github.com/PapirusDevelopmentTeam/papirus-icon-theme ~/bspwm-install-ma-dte/themes/icons/Papirus-icon-theme


#Copy Theme files...
echo "-'-'-'-'-'-'-'-'-'-'-'-'-"
echo " "
echo "     Copy Theme files..."
echo " "
echo "-'-'-'-'-'-'-'-'-'-'-'-'-"

#cp -r ~/bspwm-install-ma-dte/themes/themes-de/* ~/.themes/
#cp -r ~/bspwm-install-ma-dte/themes/cursors/* ~/.icons/
#cp -r ~/bspwm-install-ma-dte/themes/icons/* ~/.icons/

cp -r ~/bspwm-install-ma-dte/themes/themes-de/* ~/.themes/

mkdir ~/.icons/Nordzy-cursors
cp -r ~/bspwm-install-ma-dte/themes/cursors/Nordzy-cursors-theme/Nordzy-cursors/* ~/.icons/Nordzy-cursors

mkdir ~/.icons/Papirus
mkdir ~/.icons/Papirus-Dark
mkdir ~/.icons/Papirus-Light
cp -r ~/bspwm-install-ma-dte/themes/icons/Papirus-icon-theme/Papirus/* ~/.icons/Papirus
cp -r ~/bspwm-install-ma-dte/themes/icons/Papirus-icon-theme/Papirus-Dark/* ~/.icons/Papirus-Dark
cp -r ~/bspwm-install-ma-dte/themes/icons/Papirus-icon-theme/Papirus-Light/* ~/.icons/Papirus-Light

mkdir ~/.config/gtk-3.0
cp ~/bspwm-install-ma-dte/themes/gtk-3.0/settings.ini ~/.config/gtk-3.0
cp ~/bspwm-install-ma-dte/themes/.gtkrc-2.0 ~/


echo "-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-"
echo " "
echo "          All DONE - User + .config files..."
echo " "
echo "-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-"
