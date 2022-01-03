### This is a test / start of the project and not 100% tested yet... so there may be small errors... So wait until this warning is gone before you try it, So you know at least that it works ;-)

# BSPwm Install - Martin Desktop Environment
An easy way to get up and running quickly in this BSPwm desktop environment plus some standard programs such as polybar and keybindings... the recipe here is to move on once you have installed a base operating system, there are different versions for different systems see description.


## Debian Linux - Git + Install
Start the installation as regular users with SUDO rights from your home directory

Debian Install ISO - Non-free Firmware download link.: 

https://cdimage.debian.org/cdimage/unofficial/non-free/cd-including-firmware/weekly-builds/amd64/iso-cd/

## Remember to install Debian without the desktop environment.
After installation, Reboot the computer and login with your new user.

### Run this Command line to install everything:

sudo apt install -y git && cd ~ && git clone https://github.com/ITmail-dk/bspwm-install-ma-dte && . /bspwm-install-ma-dte/bspwm-install-martin-dte-debian.sh

Here is what the command line does, it installs the GIT package an goes to your home directory and clones the installation from git and runs the installation script afterwards.
