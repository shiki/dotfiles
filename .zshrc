# Path to your oh-my-zsh configuration.
ZSH=$HOME/.files/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="robbyrussell"
ZSH_THEME="risto"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git vi-mode npm osx redis-cli gem)

source $ZSH/oh-my-zsh.sh

# MacPorts Installer addition on 2012-03-31_at_19:41:07: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

# PHP
export PATH=$PATH:/opt/local/lib/php/pear/bin:

# Python
export PATH=$PATH:/opt/local/Library/Frameworks/Python.framework/Versions/2.7/bin

# RVM
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# Android SDK
export PATH=$PATH:$HOME/Applications/android-sdk/platform-tools

# Node
export NODE_PATH=$NODE_PATH:/opt/local/lib/node:/opt/local/lib/node_modules

# EC2
export JAVA_HOME=/usr
export EC2_HOME=$HOME/Applications/ec2-api-tools
export PATH=$PATH:$HOME/Applications/ec2-api-tools/bin

# Phabricator / Arcanist
export PATH=$PATH:$HOME/Applications/phabricator/arcanist/bin

# Z (https://github.com/rupa/z)
export _Z_DATA=$HOME/.z-data
. $HOME/.z/z.sh

# Server
function server() {
  local port="${1:-8000}"
  open "http://localhost:${port}/"
  python -m SimpleHTTPServer "$port"
}

# Load other stuffs
source $HOME/.extra
