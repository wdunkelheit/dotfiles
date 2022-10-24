#!/bin/sh
RESOLUTION="$(xdpyinfo | awk '/dimensions/{print $2}')"

# Set background image of wallpaper.
setbg() { 
	[ -n "$1" ] && magick "$1" "$HOME/.config/wallpaper.png"
	xwallpaper --zoom "$HOME/.config/wallpaper.png" ;}

# Set the lockscreen image, convert resolution.
setls() { 
	[ -n "$1" ] && convert -resize "$RESOLUTION" "$1" "$HOME/.config/lockscreen.png"
	notify-send "Lockscreen changed." "New lockscreen image: $1" ;}

# Set both bg and ls to same image.
setboth() { setbg "$1" && setls "$1" ;}

# Help
gethelp() { echo "-e\t- setbg.sh help dialog\n-w\t- Sets background image.\n-l\t- Sets lockscreen image.\n-b\t- Sets both images.\n-h\t- Prints this help dialog." ;}

# Operate on arguments.
case "$1" in
	"-w") setbg "$2" ;;
	"-l") setls "$2" ;;
	"-b") setboth "$2" ;;
	"-h") gethelp ;;
	*) gethelp ;;
esac
