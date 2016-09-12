## Shiki's .files

Contains MacOS configuration files for VIM, Atom, Xcode, and others.

### General

I use [shiki/sprout-wrap](http://github.com/shiki/sprout-wrap) forked from [pivotal-sprout/sprout-wrap](https://github.com/pivotal-sprout/sprout-wrap) to manage the packages/apps installed in my Mac machines. I usually run that before setting up these dotfiles.

1. Clone this repo to a local dir (e.g. `~/.files`). Make sure to use `--recursive` when cloning or run `git submodules update --init --recursive` after cloning.
2. Install these packages if they were not installed through sprout-wrap:
  * [Bash it](https://github.com/Bash-it/bash-it)
  * MacVIM using `brew install macvim`
  * [Atom](https://atom.io/)
  * [iTerm2](https://www.iterm2.com/)
3. Install the [Powerline fonts](https://github.com/powerline/fonts).

### Bash It

1. Symlink `dotfiles/.bash_profile` to `~/.bash_profile`
2. Restart Terminal or iTerm2

### Git

1. Symlink `dotfiles/.gitconfig` to `~/.gitconfig`

### Sublime Text 3

1. Install [Sublime Text 3](https://www.sublimetext.com/3)

   ```
   $ brew cask install sublime-text
   ```

2. Install [Package Control](https://packagecontrol.io/installation)
3. Close Sublime Text
4. Replace configuration files

   ```
   $ rm -rf ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User
   $ ln -s ~/.files/sublime-text/Packages/User.symlink ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User
   ```

### Atom

1. Replace `~/.atom`

   ```
   $ rm -rf ~/.atom
   $ ln -s ~/.files/atom.symlink ~/.atom
   ```
2. Install the [Package Sync](https://atom.io/packages/package-sync) package.
3. Execute the `Sync` command to install the other packages.
4. Restart Atom

### MacVIM

1. Symlink these files:

  * `dotfiles/.vim` to `~/.vim`
  * `dotfiles/.vimrc` to `~/.vimrc`

2. In MacVIM, run `:PluginInstall` to install all plugins. This instructs the [Vundle](https://github.com/VundleVim/Vundle.vim) package to install all the other packages managed by it.
3. The VIM config uses DejaVu Sans Mono for Powerline. For VIM to use this font in the terminal, make sure to set this font as the default font in the Terminal or iTerm2.

### Xcode

1. Install [Alcatraz](http://alcatraz.io/).
2. Install these plugins using Alcatraz:
  * [Backlight](https://github.com/limejelly/Backlight-for-XCode)
  * ClangFormat
  * FuzzyAutocomplete
  * OMQuickHelp
  * VVDocumenter-Xcode
  * XCActionBar
  * XcodeColors
  * XVim
3. For the custom XVim keybindings:
  1. Symlink `dotfiles/xcode/KeyBindings/XVim.idekeybindings.symlink` to `~/Library/Developer/Xcode/UserData/XVim.idekeybindings`
  2. Enable the keybinding in XCode > Preferences > Key Bindings
4. Add the custom XCode color themes
  1. Symlink `dotfiles/xcode/FontAndColorThemes.symlink` to `~/Library/Developer/Xcode/UserData/FontAndColorThemes`
  2. Choose a theme in XCode > Preferences > Fonts & Colors

Xcode themes were taken from [hdoria/xcode-themes](https://github.com/hdoria/xcode-themes).

### AppCode

1. Import `dotfiles/.appcode/settings.jar`
