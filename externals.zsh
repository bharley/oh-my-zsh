# -- External sources
# NVM
export NVM_DIR="$HOME/.nvm"
[[ -s "$NVM_DIR/nvm.sh" ]] && source "$NVM_DIR/nvm.sh"

# RVM
export RVM_DIR="$HOME/.rvm"
[[ -s "$RVM_DIR/scripts/rvm" ]] && source "$RVM_DIR/scripts/rvm"

# Rustup
export CARGO_HOME="$HOME/.cargo"
[[ -s "$CARGO_HOME/env" ]] && source "$CARGO_HOME/env"

# Dir colors
[[ -s "~/.dircolors" ]] && eval `dircolors ~/dircolors`
