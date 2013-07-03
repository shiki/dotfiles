## Shiki's .files

Contains configuration files for ZSH, VIM, XCode, Sublime Text, and others.


## Instructions

1. Clone to a local dir. Make sure to use `--recursive` when cloning or run `git submodules update --init --recursive` after cloning.
2. Install
  * ZSH
  * VIM
  * MacVIM
  * Slate
  * Sublime Text 2
3. Symlink these files to `$HOME`

        dotfiles/.slate     --> ~/.slate
        dotfiles/.vim       --> ~/.vim
        dotfiles/.vimrc     --> ~/.vimrc
        dotfiles/.zshenv    --> ~/.zshenv
        dotfiles/.zprofile  --> ~/.zprofile
        dotfiles/.zshrc     --> ~/.zshrc
        dotfiles/.gitconfig --> ~/.gitconfig

4. Run `dotfiles/.osx` in Terminal. This sets up configs for Mac. Read the script before running it.

###  VIM

  1. Install all fonts for the Powerline plugin located in `dotfiles/.fonts`.

### Sublime Text 2

  1. Make sure Sublime Text is not open.
  2. Install [Package Control](http://wbond.net/sublime_packages/package_control/installation) manually.
  3. Execute these commands in Terminal:

            rm -rf ~/Library/Application\ Support/Sublime\ Text\ 2/Packages/User
            ln -s {dotfiles-location}/.sublime/Packages/User ~/Library/Application\ Support/Sublime\ Text\ 2/Packages/User

### AppCode

  1. Import `dotfiles/.appcode/settings.jar`


