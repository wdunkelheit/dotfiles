#!/bin/sh

# Functions
pulseVolumeUp() { pamixer -i 10 ;}
pulseVolumeDown() { pamixer -d 10 ;}
pulseMute() { pamixer --toggle-mute ;}

# Run said function.
case $1 in
	"pulseVolumeUp") pulseVolumeUp ;;
	"pulseVolumeDown") pulseVolumeDown ;;
	"pulseMute") pulseMute ;;
esac

