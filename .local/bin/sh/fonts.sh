#!/bin/sh

## Check local fonts dir exists first
LOCALFONTSDIR="$XDG_HOME/.local/share/fonts/"
[ ! -d "$LOCALFONTSDIR" ] && mkdir -vp "$LOCALFONTSDIR"

## Download Hack Font with Nerd Fonts Patch
DL_DR=$(mktemp -d)
cd $DL_DR
curl -OL "https://github.com/ryanoasis/nerd-fonts/releases/latest/download/Hack.tar.xz"
tar -xvf "Hack.tar.xz"
mv *.ttf "$LOCALFONTSDIR"
cd "$XDG_HOME"
rm -rf $DL_DR
