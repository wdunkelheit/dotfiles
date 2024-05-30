# .zshrc

# Enable colours and set the prompt
export TERM="xterm-256color"
autoload -U colors && colors
setopt PROMPT_SUBST
PS1="%B%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M%{$reset_color%}:%{$fg[magenta]%}%~%{$reset_color%}$%b "

# Large terminal entry History
HISTSIZE=20000 
SAVEHIST=20000
HISTFILE="$HOME/.cache/zhistory"

# If not running interactively, don't do anything
#[[ $- != *i* ]] && return

# Auto completion. Allow auto-complete of hidden files (dots)
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)

# Vi mode
bindkey -v
export KEYTIMEOUT=1

# Vim keys in tab completion menu
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -v '^?' backward-delete-char

# Change cursor shape for different vi modes.
## Stolen from Luke 
function zle-keymap-select () {
	case $KEYMAP in
		vicmd) echo -ne '\e[1 q';;      # block
		viins|main) echo -ne '\e[5 q';; # beam
	esac
}
zle -N zle-keymap-select
zle-line-init() {
	zle -K viins # initiate `vi insert` as keymap (can be removed if `bindkey -V` has been set elsewhere)
	echo -ne "\e[5 q"
}
zle -N zle-line-init
echo -ne '\e[5 q' # Use beam shape cursor on startup.
preexec() { echo -ne '\e[5 q' ;} # Use beam shape cursor for each new prompt.

# Source plugins here.
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null

# Aliases
# Aliases
## Package Management
alias p="sudo pacman"
alias y="yay"

## Shortcut Aliases
alias v="nvim"
alias nv="nvim"
alias vim="nvim"
alias c="clear"
alias q="exit"
alias :q="exit"

## Extended Aliases
alias mkdir="mkdir -pv"
alias neofetch="clear; neofetch"

## Git Aliases
alias g="git"
alias gua="git remote | xargs -L1 git push --all"
### Dotfiles Git Aliases
alias dotfiles='git --git-dir="$HOME/.local/dotfiles/" --work-tree=$HOME'
alias dgua='git --git-dir="$HOME/.local/dotfiles/" --work-tree=$HOME remote | xargs -L1 git --git-dir="$HOME/.local/dotfiles/" --work-tree=$HOME push --all'

## Colourful Aliases
alias ls="ls -hN --color=auto --group-directories-first"
alias la="ls -hNa --color=auto --group-directories-first"
alias ll="ls -hNl --color=auto --group-directories-first"
alias grep="grep --color=auto"

## Workspace Aliases
alias code="cd ~/Documents/Code"
alias blog="cd ~/Documents/Code/hugo-dunkelheit.xyz"

