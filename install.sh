#!/bin/bash
# APT Update & apt upgrade
sudo apt update && sudo apt install -y dialog git
# Remember that this menu uses this apt package "dialog"

HEIGHT=35
WIDTH=80
CHOICE_HEIGHT=10
BACKTITLE="The installation of Martin BSPwm DTE on Debian"
TITLE="Martin DTE - BSPwm installation"
MENU="Choose you system from the following:"

OPTIONS=(1 "AMD System"
         2 "AMD System + NVIDIA GPU"
         3 "Intel System"
         4 "Intel System + NVIDIA GPU"
         5 "Virtual Machine System - NO microcode & GPU Drivers"
         6 "Exit, Do nothing and Reboot")

CHOICE=$(dialog --clear \
                --backtitle "$BACKTITLE" \
                --title "$TITLE" \
                --menu "$MENU" \
                $HEIGHT $WIDTH $CHOICE_HEIGHT \
                "${OPTIONS[@]}" \
                2>&1 >/dev/tty)

clear
case $CHOICE in
        1)
            . ~/bspwm-install-ma-dte/install-ma-dte-debian.sh && sudo apt install -y amd64-microcode && sudo reboot
            ;;
        2)
            . ~/bspwm-install-ma-dte/install-ma-dte-debian.sh && sudo apt install -y amd64-microcode nvidia-detect nvidia-driver && sudo reboot
            ;;
        3)
            . ~/bspwm-install-ma-dte/install-ma-dte-debian.sh && sudo apt install -y intel-microcode && sudo reboot
            ;;
        4)
            . ~/bspwm-install-ma-dte/install-ma-dte-debian.sh && sudo apt install -y intel-microcode nvidia-detect nvidia-driver && sudo reboot
            ;;
        5)
            . ~/bspwm-install-ma-dte/install-ma-dte-debian.sh && sudo reboot
            ;;
        6)
            systemctl reboot
            ;;
esac