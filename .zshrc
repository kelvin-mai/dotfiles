# Flex on the ubuntu users
neofetch

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Enable colors and change prompt:
autoload -U colors && colors

# History in cache directory:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.cache/zsh/history


autoload -U compinit && compinit -u
zstyle ':completion:*' menu select
# Auto complete with case insenstivity
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'

zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

# Load zsh plugins
export ZSHDIR=$HOME/.config/zsh
source $ZSHDIR/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh 2>/dev/null
source $ZSHDIR/zsh-you-should-use/you-should-use.plugin.zsh 2>/dev/null
source $ZSHDIR/command-not-found.plugin.zsh 2>/dev/null
source $ZSHDIR/dracula/lib/async.zsh 2>/dev/null
source $ZSHDIR/dracula/dracula.zsh-theme 2>/dev/null

# aliases
alias ls='lsd -hA --group-dirs first'
alias vim='nvim'
alias grep='grep --color=auto'

# PATHS
