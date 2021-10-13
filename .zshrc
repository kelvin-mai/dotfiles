# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# zsh plugins
export ZSHDIR=$HOME/.config/zsh
source $ZSHDIR/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh 2>/dev/null
source $ZSHDIR/zsh-you-should-use/you-should-use.plugin.zsh 2>/dev/null
source $ZSHDIR/zsh-history-substring-search/zsh-history-substring-search.plugin.zsh 2>/dev/null
source $ZSHDIR/ssh-agent.plugin.zsh 2>/dev/null
source $ZSHDIR/command-not-found.plugin.zsh 2>/dev/null
source $ZSHDIR/dracula/lib/async.zsh 2>/dev/null
source $ZSHDIR/dracula/dracula.zsh-theme 2>/dev/null

# Enable colors and change prompt:
autoload -U colors && colors

setopt histignorealldups sharehistory

# History in cache directory:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.cache/zsh/history

# Use modern completion system
autoload -Uz compinit
compinit

zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2
eval "$(dircolors -b)"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true

zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'

zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

bindkey '^[OA' history-substring-search-up
bindkey '^[OB' history-substring-search-down

# Aliases
source $ZSHDIR/alias.sh 2>/dev/null

# PATHS
# JAVA
export JAVA_HOME=/opt/jdk-17+35
export PATH=$PATH:$JAVA_HOME/bin

