#!/bin/bash

cd ~/bspwm-install-ma-dte/

mv ~/.config/bspwm/bspwmrc bspwmrc-org
cp ~/bspwm-install-ma-dte/config/bspwm/bspwmrc-vm ~/.config/bspwm/bspwmrc
chmod +x ~/.config/bspwm/bspwmrc

mv ~/.config/sxhkd/sxhkdrc sxhkdrc-org
cp ~/bspwm-install-ma-dte/config/sxhkd/sxhkdrc-vm ~/.config/sxhkd/sxhkdrc
chmod +x ~/.config/sxhkd/sxhkdrc