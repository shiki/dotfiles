#!/usr/bin/env bash

export PATH="/usr/local/bin:$PATH"

# Path to the bash it configuration
export BASH_IT="$HOME/.bash_it"

# Lock and Load a custom theme file
export BASH_IT_THEME="Powerline"

# Don't check mail when opening terminal.
unset MAILCHECK

# Load Bash It
source $BASH_IT/bash_it.sh

# Custom
export DOTFILES=$HOME/.files
source $DOTFILES/.exports
source $HOME/.extra

# Z (https://github.com/rupa/z)
export _Z_DATA=$HOME/.z-data
. $DOTFILES/.z/z.sh

# Server
function server() {
  local port="${1:-8000}"
  open "http://localhost:${port}/"
  python -m SimpleHTTPServer "$port"
}
