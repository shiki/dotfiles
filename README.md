## Shiki's .files

Contains configuration files for VIM, XCode, and others.


## Setup

1. Clone to a local dir. Make sure to use `--recursive` when cloning or run `git submodules update --init --recursive` after cloning.
2. Install:
  * BashIt (preferably via [shiki/sprout-wrap](http://github.com/shiki/sprout-wrap))
  * MacVIM using `brew install macvim`
  * Atom
3. Symlink these files to `$HOME`

        dotfiles/.bash_profile --> ~/.bash_profile
        dotfiles/.vim          --> ~/.vim
        dotfiles/.vimrc        --> ~/.vimrc
        dotfiles/.gitconfig    --> ~/.gitconfig
        dotfiles/atom.symlink  --> ~/.atom

###  VIM

  1. Install all fonts for the Powerline plugin located in `dotfiles/.fonts`.
  3. In MacVIM, run `:PluginInstall` to install all plugins

### AppCode

  1. Import `dotfiles/.appcode/settings.jar`
