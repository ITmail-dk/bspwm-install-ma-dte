#!/bin/bash
PS3='Choose a menu option :'
smenu=("Install AMD Driver" "Install AMD Driver + NVIDIA" "Install Intel Driver" "Install Intel + NVIDIA Driver" "VM - Copy New SUPER KEY to ALT" "Reboot" "Exit")
select smenuc in "${smenu[@]}"; do
    case $smenuc in
        "1")
            sudo apt install -y amd64-microcode
	        # optionally call a function or run some code here
            ;;
        "2")
            sudo apt install -y amd64-microcode nvidia-detect nvidia-driver
	        # optionally call a function or run some code here
            ;;
        "3")
            sudo apt install -y intel-microcode
	        # optionally call a function or run some code here
            ;;
        "4")
            sudo apt install -y intel-microcode nvidia-detect nvidia-driver
	        # optionally call a function or run some code here
            ;;
	    "5")
	        . ~/bspwm-install-ma-dte/copy-vm-keys.sh
	        ;;
	    "6")
	        sudo reboot
	        ;;
	    "7")
	        exit
	        ;;
        *) echo "Invalid option. $REPLY";;
    esac
done