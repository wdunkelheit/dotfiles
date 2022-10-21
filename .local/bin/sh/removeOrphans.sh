#!/bin/sh
## Remove list of packages from query, query returns orphaned packages.
pacman -Rns "$(pacman -Qtdq)"
