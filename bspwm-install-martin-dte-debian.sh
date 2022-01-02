#!/bin/bash

echo "-'-'-'-'-'-'-'-'-'-'-'-'-"
echo " "
echo "     Creates folders."
echo " "
echo "-'-'-'-'-'-'-'-'-'-'-'-'-"
mkdir ~/.config
mkdir ~/.fonts
mkdir ~/wallpapers


#Copy files to...
echo "-'-'-'-'-'-'-'-'-'-'-'-'-"
echo " "
echo "     Copy files to..."
echo " "
echo "-'-'-'-'-'-'-'-'-'-'-'-'-"

cp -r ~/bspwm-install-ma-dte/config/* ~/.config/
cp -r ~/bspwm-install-ma-dte/wallpapers/* ~/wallpapers/
cp -r ~/bspwm-install-ma-dte/fonts/DejaVu-Sans-Mono-Nerd-Font-Complete.ttf ~/.fonts/

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
echo "     apt install Basic Software & Packages"
echo " "
echo "     Enter your user password, to continue if necessary"
echo " "
echo "     continues the software installation in 3 seconds"
echo " "
echo "-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-"

sleep 3

sudo apt install -y xorg x11-xserver-utils arandr bspwm sxhkd sddm picom polybar network-manager kitty psmisc ranger rofi thunar thunar-archive-plugin thunar-font-manager font-manager gvfs-backends flameshot neovim nitrogen git lxpolkit lxappearance htop mc imagemagick npm sxiv pulseaudio pulsemixer mpd ncmpcpp notify-osd npm firefox-esr

echo "-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-"
echo " "
echo "     apt install User Software"
echo "     List: inkscape gimp rawtherapee darktable okular alacritty"
echo " "
echo "     If you do not want to install this software you can "
echo "     press CTRL + C and then you are done ready to reboot"
echo " "
echo "     Enter your user password, to continue if necessary"
echo " "
echo "-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-"
sleep 1
echo "     continues the software installation in 10 seconds"
sleep 1
echo "     continues the software installation in 9 seconds"
sleep 1
echo "     continues the software installation in 8 seconds"
sleep 1
echo "     continues the software installation in 7 seconds"
sleep 1
echo "     continues the software installation in 6 seconds"
sleep 1
echo "     continues the software installation in 5 seconds"
sleep 1
echo "     continues the software installation in 4 seconds"
sleep 1
echo "     continues the software installation in 3 seconds"
sleep 1
echo "     continues the software installation in 2 seconds"
sleep 1
echo "     continues the software installation in 1 seconds"
sleep 1
echo "     continues the software installation in 0 seconds"

sudo apt install -y inkscape gimp rawtherapee darktable okular

echo "-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-"
echo " "
echo "     Alacritty - Building and installing"
echo " "
echo "-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-"

. ~/bspwm-install-ma-dte/install-alacritty-debian.sh

cd ~

echo "-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-"
echo " "
echo "     ALL DONE - Rebooting System in 10 seconds"
echo "     SUPER + ENTER = Terminal"
echo "     SUPER + R = Run menu"
echo " "
echo "-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-"
sleep 1
echo "     Rebooting System in 10 seconds"
sleep 1
echo "     Rebooting System in 9 seconds"
sleep 1
echo "     Rebooting System in 8 seconds"
sleep 1
echo "     Rebooting System in 7 seconds"
sleep 1
echo "     Rebooting System in 6 seconds"
sleep 1
echo "     Rebooting System in 5 seconds"
sleep 1
echo "     Rebooting System in 4 seconds"
sleep 1
echo "     Rebooting System in 3 seconds"
sleep 1
echo "     Rebooting System in 2 seconds"
sleep 1
echo "     Rebooting System in 1 seconds"
sleep 1
echo "     Rebooting System in 0 seconds"

#sudo reboot
