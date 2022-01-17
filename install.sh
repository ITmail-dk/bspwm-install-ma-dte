#!/bin/bash

# Remember that this menu uses this apt package "dialog"

HEIGHT=35
WIDTH=80
CHOICE_HEIGHT=5
BACKTITLE="Martin BSPwm DTE - The installation"
TITLE="Martin DTE - BSPwm installation"
MENU="Choose you system from the following options:"

OPTIONS=(1 "AMD System"
         2 "AMD System + NVIDIA GPU"
         3 "Intel System"
         4 "Intel System + NVIDIA GPU"
         5 "Virtual Machine System - SUPER KEY to ALT KEY"
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
            . ~/bspwm-install-ma-dte/install-ma-dte-debian.sh && sudo apt install -y amd64-microcode && systemctl reboot
            ;;
        2)
            . ~/bspwm-install-ma-dte/install-ma-dte-debian.sh && sudo apt install -y amd64-microcode nvidia-detect nvidia-driver && systemctl reboot
            ;;
        3)
            . ~/bspwm-install-ma-dte/install-ma-dte-debian.sh && sudo apt install -y intel-microcode && systemctl reboot
            ;;
        4)
            . ~/bspwm-install-ma-dte/install-ma-dte-debian.sh && sudo apt install -y intel-microcode nvidia-detect nvidia-driver && systemctl reboot
            ;;
        5)
            . ~/bspwm-install-ma-dte/install-ma-dte-debian.sh && . ~/bspwm-install-ma-dte/install-scripts/vm-install-mics.sh && systemctl reboot
            ;;
        6)
            systemctl reboot
            ;;
esac