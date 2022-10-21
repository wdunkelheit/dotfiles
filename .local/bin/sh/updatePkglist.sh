#!/bin/sh

## Make a list of all explicitly installed packages (non-AUR)
pacman -Qqen > "$HOME/.local/pkglist && notify-send" "Updated package list." "$HOME/.local/pkglist updated."


## Make a list of all explicitly installed packes (AUR / Manual)
pacman -Qqem > "$HOME/.local/pkglist-aur && notify-send" "Updated AUR package list." "$HOME/.local/pkglist-aur updated."

