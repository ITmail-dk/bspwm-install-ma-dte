#!/bin/bash

cd ~/bspwm-install-ma-dte

# Do, mkdir, copy, copy, echo files.
. ~/bspwm-install-ma-dte/install-scripts/mkdir-cp-chmod-echo-files.sh

# Add Software & Packages.
. ~/bspwm-install-ma-dte/install-scripts/apt-install-packages.sh

# Add Pulseaudio to system startup as user.
systemctl --user enable pulseaudio

# Last Software & Packages.
. ~/bspwm-install-ma-dte/install-scripts/apt-install-last-packages.sh

# Last step setup menu installing.
. last-step-setup-menu.sh

echo "-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-"
echo " "
echo " "
echo "     Enter your user password, to continue if necessary"
echo " "
echo " "
echo "-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-'-"

sleep 1

read -p "You are ready to reboot... Press [Enter] key to Reboot System."

systemctl reboot
