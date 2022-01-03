#!/bin/bash

cd ~/bspwm-install-ma-dte/

echo "-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-"
echo " "
echo "     copy + chmod +x The sxhkdrc VM file"
echo " "
echo "-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-"

mv ~/.config/sxhkd/sxhkdrc sxhkdrc-org
cp ~/bspwm-install-ma-dte/config/sxhkd/sxhkdrc-vm ~/.config/sxhkd/sxhkdrc
chmod +x ~/.config/sxhkd/sxhkdrc

echo "-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-"
echo " "
echo "            ALL DONE sxhkdrc VM Keys"
echo " "
echo "-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-"

read -p "Press [Enter] key to Reboot System."
echo "You are ready to reboot..."
sudo reboot