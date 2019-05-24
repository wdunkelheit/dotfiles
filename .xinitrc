#!/bin/sh

## Monitor setup.
#[ $(hostname) = "Thunderbolt" ] && xrandr --output DisplayPort-0 --primary --scale ".5x.5" && xrandr --output DVI-D-0 --left-of DisplayPort-0 && xrandr --output DVI-D-0 --rotate left
#[ $(hostname) = "Thunderbolt" ] && xrandr --output DisplayPort-0 --primary --scale 0.5 && xrandr --output DVI-D-0 --left-of DisplayPort-0 --rotate left

# Load xrdb with values.
xrdb -merge ~/.Xdefaults

## Keyboard and input settings / config
# Set keyboard layout to English-GB/UK
setxkbmap -layout gb

# Set keboard delay / rate:
xset r rate 280 40

# Load Xmodmap settings. Change capslock to esc, alt-grave to caps lock, whilst maintaining alt grave functionality.
[ -f ~/.cache/.Xmodmap ] && xmodmap ~/.cache/.Xmodmap && xmodmap -e 'clear lock'


## Launch daemons, rendering tools and applets.
# Keys, tools and settings applets.
sxhkd &
nm-applet &
blueman-applet &
# Desktop related
xcompmgr &
unclutter &
setbg.sh -w &
dunst &
# Music
[ ! $(pgrep mpd) ] && mpd
# Muh cloud
# put cloud software here
# Keys 
eval $(/usr/bin/gnome-keyring-daemon --start --components=gpg,pkcs11,secrets,ssh)
export $(gnome-keyring-daemon --start --components=pkcs11,secrets,ssh,gpg)
dbus-update-activation-environment --systemd DISPLAY


# Run window manager.
exec bspwm
