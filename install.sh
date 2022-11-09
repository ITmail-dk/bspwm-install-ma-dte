#!/bin/bash
# NEW Install

CHOICESTART=$(
whiptail --title "The installation of Martin BSPwm DTE on Debian" --menu "Choose you system from the following" 16 100 9 \
	"1)" "AMD System"   \
	"2)" "AMD System + NVIDIA GPU"  \
	"3)" "Intel System" \
	"4)" "Intel System + NVIDIA GPU" \
	"5)" "Virtual Machine System - NO microcode & GPU Drivers" \
	"6)" "Exit, Do nothing" 3>&2 2>&1 1>&3
)


# APT Update + install
sudo apt update && sudo apt install -y git

case $CHOICESTART in
	"1)")   
	        . ~/bspwm-install-ma-dte/install-ma-dte-debian.sh && sudo apt install -y amd64-microcode && sudo reboot
	;;
	"2)")   
            . ~/bspwm-install-ma-dte/install-ma-dte-debian.sh && sudo apt install -y amd64-microcode nvidia-detect nvidia-driver && sudo reboot
	;;

	"3)")   
	        . ~/bspwm-install-ma-dte/install-ma-dte-debian.sh && sudo apt install -y intel-microcode && sudo reboot
        ;;

	"4)")   
	        . ~/bspwm-install-ma-dte/install-ma-dte-debian.sh && sudo apt install -y intel-microcode nvidia-detect nvidia-driver && sudo reboot
        ;;

	"5)")   
            . ~/bspwm-install-ma-dte/install-ma-dte-debian.sh && sudo reboot
        ;;

	"6)")   
		    exit
        ;;
esac

#done