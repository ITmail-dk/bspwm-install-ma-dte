#!/bin/bash
# NEW Install

CHOICESTART=$(
whiptail --title "The installation of Martin BSPwm DTE on Debian" --menu "Choose you system from the following" 16 100 9 \
	"1)" "AMD System"   \
	"2)" "AMD System + NVIDIA GPU"  \
	"3)" "Intel System" \
	"4)" "Intel System + NVIDIA GPU" \
	"5)" "Virtual Machine System - NO microcode or GPU Drivers" \
	"6)" "Exit, Do nothing" 3>&2 2>&1 1>&3
)


#sudo sh -c "echo 'Xcursor.theme: Nordzy-cursors' >> /etc/X11/Xresources/x11-common"
#sudo sh -c "echo 'Xcursor.size: 22' >> /etc/X11/Xresources/x11-common"

sudo sh -c "echo 'deb http://deb.debian.org/debian/ testing main contrib non-free' >> /etc/apt/sources.list"
sudo sh -c "echo 'deb-src http://deb.debian.org/debian/ testing main contrib non-free' >> /etc/apt/sources.list"

# Not for production version
#read -p "Troubleshooting - Press a key to continue the installation."

# APT Update + install git
sudo apt update && sudo apt install -y git

# Not for production version
#read -p "Troubleshooting - Press a key to continue the installation."

# Do, mkdir, copy, copy, echo files.
. ~/bspwm-install-ma-dte/install-scripts/mkdir-cp-git-chmod-echo-files.sh

# Not for production version
#read -p "Troubleshooting - Press a key to continue the installation."

# Add Software & Packages.
. ~/bspwm-install-ma-dte/install-scripts/apt-install-core-packages.sh

# Not for production version
#read -p "Troubleshooting - Press a key to continue the installation."

# Add Pulseaudio to system startup as user.
systemctl --user enable pulseaudio

# Not for production version
#read -p "Troubleshooting - Press a key to continue the installation."

# Last Software & Packages.
. ~/bspwm-install-ma-dte/install-scripts/apt-install-software-last-packages.sh

# Not for production version
#read -p "Troubleshooting - Press a key to continue the installation."


# Last step setup menu installing.
#. ~/bspwm-install-ma-dte/last-step-setup-menu.sh

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



echo "DONE DOEN"

#done

#sudo reboot
