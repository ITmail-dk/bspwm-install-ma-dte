#! /bin/sh

chosen=$(printf "  Power Off\n  Restart\n  Lock" | rofi -dmenu -i -theme-str '@import "powermenu.rasi"')

case "$chosen" in
	"  Power Off") poweroff ;;
	"  Restart") reboot ;;
	"  Lock") i3lock-fancy -gpf DejaVu Sans -- scrot -z ;;
	*) exit 1 ;;
esac