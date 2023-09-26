#!/bin/zsh

# Define PATH
## The previous method for declaring $PATH. While useful and convenient and faster than new method, it is all scattershot, terrible to read and not necessarily appropriate for the current setup. I will keep it here as a comment for the sake of preserving it for future use however.
### export PATH="$PATH:$HOME/.emacs.d/bin/:$(du "$HOME/.local/bin/" | cut -f2 | tr '\n' ':' | sed 's/:*$//')"

## Emacs binaries aswell as local binaries / scripts.
export PATH="$PATH:$XDG_CONFIG_HOME/.emacs.d/bin/"
export PATH="$PATH:$HOME/.local/bin/"
export PATH="$PATH:$HOME/.local/bin/go"
export PATH="$PATH:$HOME/.local/bin/sh"

# Declare language environment.
#export LANG=en_GB.UTF-8
#export LC_ALL=en_GB.UTF-8

# Declare software defaults.
export TERMINAL="terminator"
export EDITOR="nvim"
export BROWSER="firefox"
export READER="zathura"

# XDG defaults
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"

# Config directories.
export GNUPGHOME="$XDG_DATA_HOME/gnupg"
export GTK2_RC_FILES="$XDG_CONFIG_HOME/gtk-2.0/gtkrc-2.0"
export PASSWORD_STORE_DIR="$HOME/.local/password-store"
#export XAUTHORITY="$XDG_DATA_HOME/Xauthority"
export XINITRC="$XDG_CONFIG_HOME/x11/xinitrc"
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"

# Programming Languages
export GOPATH="$XDG_DATA_HOME/go"
export GEM_PATH="$XDG_DATA_HOME/ruby/gems"
export GEM_HOME="$XDG_DATA_HOME/ruby/gems"
export GEM_SPEC_CACHE="$XDG_DATA_HOME/ruby/specs"
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME/npm/npmrc"

# Disable history file for less
export LESSHISTFILE="/dev/null"

# Force QT applications to use GTK dialogs where available.
#export QT_QPA_PLATFORMTHEME="gtk3"
#
# GTK scaling
#export GDK_SCALE=1

