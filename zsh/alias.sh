# utilities
alias src='source $HOME/.zshrc'
alias .zsh='vim $HOME/.zshrc'

# Store current directory
precmd() { eval "pwd > /tmp/whereami" }

# enhancements
alias ls='lsd -hA --group-dirs first'
alias vim='nvim'
alias lg='lazygit'
alias grep='grep --color=auto'
alias ranger='source ranger'

bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

# shortcuts
alias cdp='cd $HOME/Development/projects'
alias cdt='cd $HOME/Development/tutorials'
alias cdw='cd $HOME/Development/luminare'
