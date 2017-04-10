# -- General Aliases
# General
alias ls='ls -FG --color'
alias ll='ls -lh'
alias la='ll -a'
alias  l='ll'

# -- Exports
# General
export EDITOR='vim'

# Golang
export GOPATH=$HOME/Code/go

# OS X/Homebrew
if [[ $OSTYPE == darwin* ]]; then
  export PATH="/usr/local/bin:/usr/local/opt/coreutils/libexec/gnubin:$PATH"
  export MANPATH="/usr/local/opt/coreutils/libexec/gnuman:/usr/local/man:$MANPATH"
fi

# Path
export PATH="$PATH:$GOPATH/bin"

