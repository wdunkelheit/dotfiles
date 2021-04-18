# Define PATH
export PATH="$PATH:$HOME/.emacs.d/bin/:$(du "$HOME/.local/bin/" | cut -f2 | tr '\n' ':' | sed 's/:*$//')"

# Declare language environment.
export LANG=en_GB.UTF-8
export LC_ALL=en_GB.UTF-8

# Declare software defaults.
export TERMINAL="alacritty"
export EDITOR="vim"
export BROWSER="brave"
export READER="zathura"

# Default directories via XDG
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
export XAUTHORITY="$XDG_DATA_HOME/Xauthority"
export GTK2_RC_FILES="$XDG_CONFIG_HOME/gtk-2.0/gtkrc-2.0"
export XINITRC="$XDG_CONFIG_HOME/X11/xinitrc"

# Vim config
export MYVIMRC="$XDG_CONFIG_HOME/vim/.vimrc"
export VIMINIT="source $MYVIMRC"

# Disable history file for less
export LESSHISTFILE="/dev/null"

# Force QT applications to use GTK dialogs where available.
export QT_QPA_PLATFORMTHEME="gtk3"

# GTK scaling
export GDK_SCALE=1

