#!/bin/sh

## Make a list of all explicitly installed packages (non-AUR)
pacman -Qqen > ~/.cache/pkglist && notify-send "Updated package list." "~/.cache/pkglist updated."


## Make a list of all explicitly installed packes (AUR / Manual)
pacman -Qqem > ~/.cache/pkglist-aur && notify-send "Updated AUR package list." "~/.cache/pkglist-aur updated."

