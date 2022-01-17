#!/bin/sh

## Make a list of all explicitly installed packages (non-AUR)
pacman -Qqen > ~/.local/pkglist && notify-send "Updated package list." "~/.local/pkglist updated."


## Make a list of all explicitly installed packes (AUR / Manual)
pacman -Qqem > ~/.local/pkglist-aur && notify-send "Updated AUR package list." "~/.local/pkglist-aur updated."

