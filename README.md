### Shiki's .files

Contains .files for ZSH, Vim, and others.


## Instructions

1. Clone to a local dir. Make sure to use `--recursive` when cloning or run `git submodules update --init --recursive` after cloning.
2. Install
  * ZSH
  * VIM
  * MacVIM
  * Slate
  * Sublime Text 2
3. Symlink these files to $HOME

        dotfiles/.slate    --> ~/.slate
        dotfiles/.vim      --> ~/.vim
        dotfiles/.vimrc    --> ~/.vimrc
        dotfiles/.zprofile --> ~/.zprofile
        dotfiles/.zshrc    --> ~/.zshrc

4. Run `dotfiles/.osx` in Terminal. This sets up configs for Mac. Read the script before running it.
5. VIM:
  1. Install all fonts for the Powerline plugin located in `dotfiles/.fonts`.

