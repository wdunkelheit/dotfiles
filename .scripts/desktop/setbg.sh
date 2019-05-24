#!/bin/sh
RESOLUTION="$(xdpyinfo | awk '/dimensions/{print $2}')"

# Set background image of wallpaper.
setbg() { 
	[ ! -z "$1" ] && magick "$1" ~/.config/wallpaper.png
	xwallpaper --zoom ~/.config/wallpaper.png ;}

# Set the lockscreen image, convert resolution.
setls() { 
	[ ! -z "$1" ] && convert -resize $RESOLUTION "$1" ~/.config/lockscreen.png
	notify-send "Lockscreen changed." "New lockscreen image: $1" ;}

# Set both bg and ls to same image.
setboth() { setbg "$1" && setls "$1" ;}

# Help
gethelp() { echo -e "setbg.sh help dialog\n-w       -   Sets background image.\n-l       -   Sets lockscreen image.\n-b       -   Sets both images.\n--help   -   Prints this help dialog." ;}

# Operate on arguments.
case "$1" in
	"-w") setbg "$2" ;;
	"-l") setls "$2" ;;
	"-b") setboth "$2" ;;
	"--help") gethelp ;;
	*) gethelp ;;
esac
