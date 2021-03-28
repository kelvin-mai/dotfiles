# utilities
alias src='source $HOME/.zshrc'
alias .zsh='vim $HOME/.zshrc'

# Store current directory
precmd() { eval "pwd > /tmp/whereami" }

# enhancements
alias ls='lsd -hA --group-dirs first'
alias vim='nvim'
alias grep='grep --color=auto'
alias ranger='source ranger'

# shortcuts
alias cdp='cd $HOME/Development/projects'
alias cdt='cd $HOME/Development/tutorials'

