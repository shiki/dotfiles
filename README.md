## .files and macOS setup

Contains macOS configuration files for various apps and instructions for setting up a new Mac.

### Setup

1. Update everything that is available in the App Store
2. Install Xcode
3. Install Homebrew

### Install Homebrew packages

```bash
$ brew tap caskroom/cask
$ brew cask install dropbox google-chrome spotify slack skype firefox evernote
$ brew cask install docker sourcetree iterm2 macvim visual-studio-code sublime-text postman cyberduck 
$ brew cask install mysqlworkbench psequel sequel-pro postgresql
$ brew cask install alfred fluid spectacle flycut appcleaner caffeine commander-one flux keepassxc skitch
$ brew cask install google-photos-backup-and-sync adobe-acrobat-reader handbrake vlc
$ brew install Caskroom/versions/google-chrome-canary
$ brew install rbenv nvm git carthage uncrustify swiftformat yarn autojump thefuck lnav watchman
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
* [Logitech Options](http://support.logitech.com/en_us/software/options)

### macOS

1. Set to always show hidden files

   ```bash
   defaults write -g AppleShowAllFiles -bool true
   ```
   
   Restart Finder.

### Bash-it

1. Clone this repo to a local dir (e.g. `~/.files`). Make sure to use `--recursive` when cloning or run `git submodules update --init --recursive` after cloning.
2. Symlink `dotfiles/.bash_profile` to `~/.bash_profile`
3. Restart Terminal or iTerm2
4. Enable plugins and aliases

   ```bash
   $ bash-it enable plugin git
   $ bash-it enable plugin autojump
   $ bash-it enable plugin edit-mode-vi
   $ bash-it enable alias git
   $ bash-it enable alias fuck
   ```

### Git

Symlink `dotfiles/.gitconfig` to `~/.gitconfig`

```bash
$ rm ~/.gitconfig
$ ln -s ~/.files/.gitconfig ~/.gitconfig
```

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

   ```bash
   $ rm -rf ~/.atom
   $ ln -s ~/.files/atom.symlink ~/.atom
   ```
2. Install the [Package Sync](https://atom.io/packages/package-sync) package.
3. Execute the `Sync` command to install the other packages.
4. Restart Atom

### MacVIM

1. Symlink `.vim` 

   ```bash
   $ ln -s ~/.files/vim/vim.symlink ~/.vim
   ```
2. Install [Vundle](https://github.com/VundleVim/Vundle.vim). Follow all instructions until the `:PluginInstall` has been executed
3. Symlink `.vimrc`
   ```bash
   $ rm ~/.vimrc
   $ ln -s ~/.files/vim/vimrc.symlink ~/.vimrc
   ```
4. In MacVIM, run `:PluginInstall` to install all plugins. This instructs the [Vundle](https://github.com/VundleVim/Vundle.vim) package to install all the other packages managed by it.
5. The VIM config uses DejaVu Sans Mono for Powerline. For VIM to use this font in the terminal, make sure to set this font as the default font in the Terminal or iTerm2.

### Xcode

1. Intall XVim plugin
2. For the custom XVim keybindings:
  1. Symlink `XVim.idekeybindings.symlink`
     ```bash
     $ ln -s ~/.files/xcode/KeyBindings/XVim.idekeybindings.symlink ~/Library/Developer/Xcode/UserData/KeyBindings/XVim.idekeybindings
     ```
  2. Enable the keybinding in XCode > Preferences > Key Bindings
4. Add the custom XCode color themes
  1. Symlink `dotfiles/xcode/FontAndColorThemes.symlink` to `~/Library/Developer/Xcode/UserData/FontAndColorThemes`
     ```bash
     $ ln -s ~/.files/xcode/FontAndColorThemes.symlink ~/Library/Developer/Xcode/UserData/FontAndColorThemes
     ```
  2. Choose a theme in XCode > Preferences > Fonts & Colors
  3. Manually change the Font for the theme

Xcode themes were taken from [hdoria/xcode-themes](https://github.com/hdoria/xcode-themes).

### AppCode

1. Import `dotfiles/.appcode/settings.jar`

### Alfred

Install powerpacks

* [Spotify Mini Player](http://alfred-spotify-mini-player.com/)
* [Timezone](https://github.com/zenorocha/alfred-workflows)
* [Evernote](https://www.alfredforum.com/topic/840-evernote-9-beta-2-for-alfred-3-search-create-append-set-reminders-all-within-alfred/)
* [SourceTree](https://github.com/zenorocha/alfred-workflows)
* [Terminal-Finder](https://github.com/LeEnno/alfred-terminalfinder)
* [DevDocs](https://github.com/yannickglt/alfred-devdocs)
* [Faker](https://github.com/zenorocha/alfred-workflows)
* [IP Address](https://github.com/zenorocha/alfred-workflows)
* [Kill Process](https://github.com/zenorocha/alfred-workflows)
* [Stack Overflow](https://github.com/zenorocha/alfred-workflows)

### Chrome

Install extensions

* Lastpass
* Adblock
* Vimium
* Evernote Web Clipper
* Save to Pocket
* Honey

### iTerm2

Install themes from http://iterm2colorschemes.com/

* Flatland
* Dracula
* Hardcore
* Japanesque
* Space Grey Eighties Dull
