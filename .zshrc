DOTFILES=$HOME/.files

# Path to your oh-my-zsh configuration.
ZSH=$DOTFILES/.oh-my-zsh

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

# Z (https://github.com/rupa/z)
export _Z_DATA=$HOME/.z-data
. $DOTFILES/.z/z.sh

# Homebrew paths
export PATH=/usr/local/bin:/usr/local/sbin:$PATH

# PHP
export PATH=/usr/local/Cellar/php54/5.4.7/bin:$PATH

# Ruby 
export PATH=/usr/local/Cellar/ruby/1.9.3-p286/bin:$PATH

# Node
export PATH=/usr/local/share/npm/bin:$PATH

# Android SDK
export PATH=$PATH:$HOME/Applications/android-sdks/platform-tools

# EC2
export JAVA_HOME=/usr
export EC2_HOME=$HOME/Applications/ec2-api-tools
export PATH=$PATH:$HOME/Applications/ec2-api-tools/bin

# Phabricator / Arcanist
export PATH=$PATH:$HOME/Applications/arcanist/arcanist/bin

# Server
function server() {
  local port="${1:-8000}"
  open "http://localhost:${port}/"
  python -m SimpleHTTPServer "$port"
}

# Load other stuffs
source $HOME/.extra
