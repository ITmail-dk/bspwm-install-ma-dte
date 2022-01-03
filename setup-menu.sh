#!/bin/bash
PS3='Choose menu 1, 2, 3, Reboot, Exit.:'
smenu=("1" "2" "3" "Reboot" "Exit")
select smenu in "${smenuc[@]}"; do
    case $smenuc in
        "1")
            echo "Nr. 1"
	        # optionally call a function or run some code here
            ;;
        "2")
            echo "Nr. 2"
	        # optionally call a function or run some code here
            ;;
        "3")
            echo "VM Copy Keys..."
	        . copy-vm-keys.sh
	        break
            ;;
	    "Reboot")
	        sudo reboot
	        ;;
	    "Quit")
	        exit
	        ;;
        *) echo "Invalid option. $REPLY";;
    esac
done