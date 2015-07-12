## Shiki's .files

Contains MacOS configuration files for VIM, XCode, and others.

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

4. Install the [Powerline fonts](https://github.com/powerline/fonts).

### Atom

1. Install the [Package Sync](https://atom.io/packages/package-sync) package.
2. Execute the `Sync` command to install the other packages.
3. Restart Atom

###  VIM

1. Install all fonts for the Powerline plugin located in `dotfiles/.fonts`.
2. In MacVIM, run `:PluginInstall` to install all plugins

The VIM config uses DejaVu Sans Mono for Powerline. For VIM to use this font in the terminal, make sure to set this font as the default font in the Terminal or iTerm2.

### AppCode

1. Import `dotfiles/.appcode/settings.jar`
