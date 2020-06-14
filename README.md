# .files and macOS setup

Contains macOS configuration files for various apps and instructions for setting up a new Mac.

## Setup

1. Update everything that is available in the App Store
2. Install Xcode
3. Install [Homebrew](https://brew.sh)
4. Clone this repo to a local dir (e.g. `~/.files`).

    ```bash
    git clone git@github.com:shiki/dotfiles.git ~/.files
    ```

## Install Homebrew packages

```bash
$ brew tap caskroom/cask
$ brew cask install dropbox google-chrome spotify slack firefox notion toggl
$ brew cask install docker tower iterm2 macvim visual-studio-code atom appcode android-studio cyberduck simsim scrcpy
$ brew cask install mysqlworkbench psequel sequel-pro postgresql db-browser-for-sqlite
$ brew cask install alfred fluid spectacle flycut appcleaner caffeine marta flux keepassxc omnidisksweeper 
$ brew cask install google-photos-backup-and-sync adobe-acrobat-reader handbrake vlc libreoffice
$ brew install Caskroom/versions/google-chrome-canary
$ brew install git git-crypt carthage swiftformat yarn autojump lnav watchman tree ncdu
```

## Install others

These aren't installed through Homebrew

* [Bash it](https://github.com/Bash-it/bash-it)
* [Powerline fonts](https://github.com/powerline/fonts)
* [FruitJuice](https://itunes.apple.com/us/app/fruitjuice-battery-health/id671736912?mt=12)
* Google Drive File Stream
* LastPass
* [Todoist](https://apps.apple.com/ca/app/todoist-organize-your-life/id585829637?mt=12&ign-mpt=uo%3D4)
* [Tomato One](https://apps.apple.com/us/app/tomato-one-free-focus-timer/id907364780?mt=12)
* [Pocket](https://apps.apple.com/app/pocket/id568494494?ls=1&mt=12)
* [Monosnap](https://apps.apple.com/us/app/monosnap-screenshot-editor/id540348655?mt=12)
* [Logitech Options](http://support.logitech.com/en_us/software/options)
* [Paragon NTFS](https://www.paragon-software.com/ufsdhome/ntfs-mac/)
* [Little Snitch](https://www.obdev.at/products/littlesnitch/download.html)
* [Avira](https://www.avira.com/)
* [GPG Suite](https://gpgtools.org/)
* [GIF Brewery](https://apps.apple.com/ca/app/gif-brewery-3-by-gfycat/id1081413713)
* [Additional Tools for Xcode](https://developer.apple.com/download/more/?q=Additional%20Tools). Includes Network Link Conditioner. 
* [Charles Proxy](https://www.charlesproxy.com/download/latest-release/)

## NodeJS

1. Install [nvm](https://github.com/creationix/nvm#git-install).
2. Install the latest Node version.

    ```bash
    nvm intall <version>
    ```

3. Install global packages.

    ```bash
    npm install -g machine-share
    ```

## Ruby

1. Install `rbenv`

   ```bash
   $ brew install rbenv
   ```

2. Install the latest Ruby version.

    ```bash
    # List all available versions
    rbenv install -l

    # Install 
    rbenv install <version>
    ```
3. Set it as the global version. 

   ```bash
   rbenv global <version>
   ```

4. Install global Ruby packages. 

   ```bash
   gem install bundler cocoapods
   ```

5. Prepare Cocoapods repo. This usually takes a long time.

   ```bash
   pod setup
   ```

## macOS

```bash
# Always show hidden files
defaults write -g AppleShowAllFiles -bool true

# Enable full keyboard access for all controls
# (e.g. enable Tab in modal dialogs)
defaults write NSGlobalDomain AppleKeyboardUIMode -int 3
```

## Bash-it

1. Symlink `dotfiles/.bash_profile` to `~/.bash_profile`

    ```bash
    ln -s ~/.files/.bash_profile ~/.bash_profile
    ```
2. Restart Terminal or iTerm2
3. Enable plugins, aliases, and completions

   ```bash
   $ bash-it enable plugin git autojump edit-mode-vi history
   $ bash-it enable alias git
   $ bash-it enable completion npm git docker docker-compose docker-machine bundler
   ```

## Git

```bash
$ git config --global user.name "Shiki"
$ git config --global user.email "jayson@basanes.net"
```

## Alfred

Follow the instructions in [Sync your Alfred settings between Macs](https://www.alfredapp.com/help/advanced/sync/) to synchronize the settings using Dropbox. 

These workflows should be automatically installed:

* [Convert](https://github.com/deanishe/alfred-convert)
* [Encode/Decode](https://github.com/willfarrell/alfred-encode-decode-workflow)
* [DevDocs](https://github.com/yannickglt/alfred-devdocs)
* [Faker](https://github.com/zenorocha/alfred-workflows)
* [Github](https://github.com/gharlan/alfred-github-workflow)
* [IP Address](https://github.com/zenorocha/alfred-workflows)
* [Kill Process](https://github.com/zenorocha/alfred-workflows)
* [Pomodoro](https://github.com/ecbrodie/pomodoro-alfred)
* [Spotify Mini Player](http://alfred-spotify-mini-player.com/)
* [Stack Overflow](https://github.com/zenorocha/alfred-workflows)
* [Terminal-Finder](https://github.com/LeEnno/alfred-terminalfinder)
* [TimeZones](https://github.com/jaroslawhartman/TimeZones-Alfred)
* [UUID Generator](http://www.packal.org/workflow/uuid-generator-0)

## Atom

Atom settings are synchronized using the [sync-settings](https://github.com/atom-community/sync-settings) package. It saves the settings in Gist. 

1. Install the [sync-settings](https://github.com/atom-community/sync-settings) package manually in Atom.
2. Configure sync-settings to fill in the gist id and Github access token
3. Run the _Sync Settings: Restore_ command in Atom

## VS Code

VS Code settings are synchronized using the [Settings Sync](https://marketplace.visualstudio.com/items?itemName=Shan.code-settings-sync) plugin. It saves the settings in Gist.

1. Install the plugin. 
2. After the plugin is installed, follow the steps to _Login with Github_. 
3. Pick the correct gist to use. 
3. Run the _Sync: Download Settings_ to download and apply the settings.

[Disable press and hold](https://stackoverflow.com/a/44010683) so that VS Code will repeat any key that is being held:

```
$ defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false
```

## Spacemacs

1. Install [Source Code Pro fonts](https://github.com/adobe-fonts/source-code-pro).
1. Follow instructions in [here](https://github.com/syl20bnr/spacemacs#install) to install Spacemacs.
2. Symlink `.spacemacs`

   ```bash
   $ mv .spacemacs .spacemacs.bak
   $ ln -s .files/spacemacs/.spacemacs .spacemacs
   ```

## MacVIM

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

## iOS Development

### Xcode

1. Install the [XVim2 plugin](https://github.com/XVimProject/XVim2).
2. Install the custom keybindings.
    1. Symlink `XVim.idekeybindings.symlink`
        ```bash
        ln -s ~/.files/xcode/KeyBindings/XVim.idekeybindings.symlink ~/Library/Developer/Xcode/UserData/KeyBindings/XVim.idekeybindings
        ```
    2. Enable the keybinding in XCode → Preferences → Key Bindings

### AppCode

AppCode settings are synchronized using a git repo.

1. Follow the instructions in [Share settings through a settings repository](https://www.jetbrains.com/help/idea/sharing-your-ide-settings.html#settings-repository).
2. Use the `appcode-settings` Github repo. 

## Android Development

### Android Studio 

Android Studio settings are synchronized using a git repo. 

1. Follow the instructions in [Share settings through a settings repository](https://www.jetbrains.com/help/idea/sharing-your-ide-settings.html#settings-repository).
2. Use the `android-studio-settings` Github repo. 

## PHP Development

```
$ brew install php
$ brew cask install virtualbox vagrant
```

## Browsers

### Chrome

Install these extensions.

* [LastPass](https://chrome.google.com/webstore/detail/lastpass-free-password-ma/hdokiejnpimakedhajhdlcegeplioahd)
* [Markdown Here](https://chrome.google.com/webstore/detail/markdown-here/elifhakcjgalahccnjkneoccemfahfoa?hl=en)
* [Copy as Markdown](https://chrome.google.com/webstore/detail/copy-as-markdown/fkeaekngjflipcockcnpobkpbbfbhmdn)
* [Vimium](https://chrome.google.com/webstore/detail/vimium/dbepggeogbaibhgnhhndojpepiihcmeb?hl=en)
* [Momentum](https://chrome.google.com/webstore/detail/momentum/laookkfknpbbblfpciffpaejjkokdgca?hl=en)
* [DuckDuckGo Privacy Essentials](https://chrome.google.com/webstore/detail/duckduckgo-privacy-essent/bkdgflcldnnnapblkhphbgpggdiikppg?hl=en)
* [Url Shortener](https://chrome.google.com/webstore/detail/url-shortener/oodfdmglhbbkkcngodjjagblikmoegpa?hl=en)
* [uBlock Origin](https://chrome.google.com/webstore/detail/ublock-origin/cjpalhdlnbpafiamejdnhcphjbkeiagm?hl=en)
* [Git.io URL Shortener](https://chrome.google.com/webstore/detail/gitio-url-shortener/baceaeopmlhkjbljoiinmbnnmpokgiml?hl=en)

### Firefox

Install these extensions.

* [LastPass](https://addons.mozilla.org/en-CA/firefox/addon/lastpass-password-manager/)
* [uBlock Origin](https://addons.mozilla.org/en-CA/firefox/addon/ublock-origin/)
* [Link Shortener](https://addons.mozilla.org/en-US/firefox/addon/link-shortener/)
* [Markdown Here](https://addons.mozilla.org/en-CA/firefox/addon/markdown-here/)
* [Copy Selection as Markdown](https://addons.mozilla.org/en-US/firefox/addon/copy-selection-as-markdown/?src=search)
* [Momentum](https://addons.mozilla.org/en-CA/firefox/addon/momentumdash/)

## iTerm2

Install themes from http://iterm2colorschemes.com/

* Flatland
* Dracula
* Hardcore
* Japanesque
* Space Grey Eighties Dull

## Fluid

Create Fluid apps for:

* [Google Calendar](https://calendar.google.com). Use icons from Google's [Press Corner](https://www.blog.google/press/).

## Others

1. Change the default DNS
2. Add a [Quick Action to convert HEIC to JPEG](https://www.howtogeek.com/398927/how-to-convert-heic-images-to-jpg-on-a-mac-the-easy-way/)
3. Enable zoom by checking Settings → Accessibility → Zoom → Use scroll gesture with modifier keys to zoom

## References

- [mathiasbynens/dotfiles: .files, including ~/.macos — sensible hacker defaults for macOS](https://github.com/mathiasbynens/dotfiles)


