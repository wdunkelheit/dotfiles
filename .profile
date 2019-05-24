# Declare language environment.
export LANG=en_GB.UTF-8
export LC_ALL=en_GB.UTF-8

# Add my scripts to the path.
export PATH="$PATH:$HOME/.local/bin/"
export PATH="$PATH:$HOME/.emacs.d/bin/"
export PATH="$PATH:$(du "$HOME/.scripts/" | cut -f2 | tr '\n' ':' | sed 's/:*$//')"

# Declare software defaults.
export EDITOR="vim"
export VISUAL="emacs"
export TERMINAL="st"
export BROWSER="brave"

# Declare config file locations.
export GTK2_RC_FILES="$HOME/.config/gtk-2.0/gtkrc-2.0"
export MYVIMRC="$HOME/.config/vim/.vimrc"
export VIMINIT="source $MYVIMRC"
export XDG_CONFIG_HOME="$HOME/.config"
export ZDOTDIR="$HOME/.config/zsh"

# Source .bashrc if it is present. (It should be if you are using these dots)
[ -f ~/.bashrc ] && source "$HOME/.bashrc"

# Force QT applications to use GTK dialogs where available.
export QT_QPA_PLATFORMTHEME="gtk3"

# GTK scaling
export GDK_SCALE=1

# Start graphical server if bspwm is not already running.
#[ "$(tty)" = "/dev/tty1" ] && ! prgrep -x bspwm >/dev/null && exec startx

