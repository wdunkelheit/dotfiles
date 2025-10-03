#!/bin/sh
## Remove list of packages from query, query returns orphaned packages.
sudo pacman -Qtdq | sudo pacman -Rns -
