#!/bin/bash

# Remember that this menu uses this apt package "dialog"

HEIGHT=15
WIDTH=60
CHOICE_HEIGHT=4
BACKTITLE="Martin BSPwm DTE - The last step of the installation"
TITLE="The last step of the installation"
MENU="Choose one of the following options:"

OPTIONS=(1 "Install AMD Driver"
         2 "Install AMD Driver + NVIDIA"
         3 "Install Intel Driver"
         4 "Install Intel + NVIDIA Driver"
         5 "Virtual Machine - Copy New SUPER KEY to ALT KEY"
         6 "Do nothing and Reboot")

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
            sudo apt install -y amd64-microcode && sudo reboot
            ;;
        2)
            sudo apt install -y amd64-microcode nvidia-detect nvidia-driver && sudo reboot
            ;;
        3)
            sudo apt install -y intel-microcode && sudo reboot
            ;;
        4)
            sudo apt install -y intel-microcode nvidia-detect nvidia-driver && sudo reboot
            ;;
        5)
            . ~/bspwm-install-ma-dte/copy-vm-keys.sh && sudo reboot
            ;;
        6)
            sudo reboot
            ;;
esac