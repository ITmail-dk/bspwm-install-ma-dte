### This is a test / start of the project and not 100% tested yet... so there may be small errors... So wait until this warning is gone before you try it, So you know at least that it works ;-)

# BSPwm Install - Martin Desktop Environment
An easy and quickly way to get up and running in the BSPwm desktop environment plus keybindings and some standard software such as polybar, pulseaudio, Google Chrome, firefox, nitrogen ... the recipe here is to move on once you have installed a base operating system, there are different versions for different systems see description.


## Debian Linux - Git + Install
Start the installation as regular users with SUDO rights from your home directory

Debian Install ISO - Non-free Firmware download link.: 

https://cdimage.debian.org/cdimage/unofficial/non-free/cd-including-firmware/weekly-builds/amd64/iso-cd/firmware-testing-amd64-netinst.iso

### Ventoy - Create one bootable USB, with multiple ISO files on it.
Just copy multiple ISO files to the USB drive and boot them directly, It's just such a great tool.
Link.: https://www.ventoy.net/en/index.html

## Remember to install Debian without the desktop environment.
After installation, Reboot the computer and login with your new user.

### And run this Command line to install everything:

sudo apt install -y git && cd ~ && git clone https://github.com/ITmail-dk/bspwm-install-ma-dte && . ~/bspwm-install-ma-dte/install.sh

Here is what the command line does, it installs the GIT package an goes to your home directory and clones the installation from git and runs the installation script afterwards.
