## Jayson's .files and macOS setup

Contains macOS configuration files for various apps and instructions for setting up a new Mac.

### Setup

1. Update everything that is available in the App Store
2. Install Xcode
3. Install Homebrew

### Install Homebrew packages

```
$ brew tap caskroom/cask
$ brew cask install dropbox google-chrome spotify slack skype firefox evernote
$ brew cask install docker sourcetree iterm2 macvim visual-studio-code sublime-text postman cyberduck mysqlworkbench psequel
$ brew cask install alfred fluid spectacle flycut appcleaner caffeine commander-one flux keepassxc skitch
$ brew cask install google-photos-backup-and-sync adobe-acrobat-reader handbrake vlc
$ brew install Caskroom/versions/google-chrome-canary
$ brew install rbenv nvm git
```

### Install others

These aren't installed through Homebrew

* [Bash it](https://github.com/Bash-it/bash-it)
* [Powerline fonts](https://github.com/powerline/fonts)
* Lastpass
* Todoist
* Tick Tick
* Caato Time Tracker
* Tomato One
* Pocket
* Copay
* Lightshot

### Bash-it

1. Clone this repo to a local dir (e.g. `~/.files`). Make sure to use `--recursive` when cloning or run `git submodules update --init --recursive` after cloning.
2. Symlink `dotfiles/.bash_profile` to `~/.bash_profile`
3. Restart Terminal or iTerm2

### Git

1. Symlink `dotfiles/.gitconfig` to `~/.gitconfig`

### Sublime Text 3

1. Install [Package Control](https://packagecontrol.io/installation)
2. Close Sublime Text
3. Replace configuration files

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

1. Intall XVim plugin
3. For the custom XVim keybindings:
  1. Symlink `dotfiles/xcode/KeyBindings/XVim.idekeybindings.symlink` to `~/Library/Developer/Xcode/UserData/XVim.idekeybindings`
  2. Enable the keybinding in XCode > Preferences > Key Bindings
4. Add the custom XCode color themes
  1. Symlink `dotfiles/xcode/FontAndColorThemes.symlink` to `~/Library/Developer/Xcode/UserData/FontAndColorThemes`
  2. Choose a theme in XCode > Preferences > Fonts & Colors

Xcode themes were taken from [hdoria/xcode-themes](https://github.com/hdoria/xcode-themes).

### AppCode

1. Import `dotfiles/.appcode/settings.jar`
