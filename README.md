# .files and macOS setup

Contains macOS configuration files for various apps and instructions for setting up a new Mac.

#### Table of Contents

- [Preparation](#preparation)
- [General](#general)
    - [Homebrew Packages](#homebrew-packages)
    - [Others](#others)
- [macOS](#macos)
- [Alfred](#alfred)
- [NodeJS](#nodejs)
- [Ruby](#ruby)
- [Git](#git)
- [VS Code](#vs-code)
- [Spacemacs](#spacemacs)
- [MacVIM](#macvim)
- [iOS Development](#ios-development)
    - [Xcode](#xcode)
    - [AppCode](#appcode)
    - [iOS Dev Tools](#ios-dev-tools)
- [Android Development](#android-development)
    - [Android Studio](#android-studio)
    - [Android Dev Tools](#android-dev-tools)
- [PHP Development](#php-development)
- [Ansible](#ansible)
- [Browsers](#browsers)
    - [Chrome](#chrome)
    - [Firefox](#firefox)
- [iTerm2](#iterm2)
- [Fluid](#fluid)
- [Others](#others)
- [References](#references)

## Preparation

1. Update everything that is available in the App Store
2. Install Xcode
3. Install [Homebrew](https://brew.sh)
4. Clone this repo to a local dir (e.g. `~/.files`).

    ```bash
    git clone git@github.com:shiki/dotfiles.git ~/.files
    ```

## General

### Homebrew Packages

```bash
brew install dropbox google-chrome google-chrome@canary slack firefox notion zoom obsidian
brew install visual-studio-code
brew install sequel-ace
brew install alfred appcleaner marta keepassxc omnidisksweeper rectangle espanso
brew install adobe-acrobat-reader handbrake
brew install git lnav tree wget gh
brew install proxyman
brew install zoxide fzf

# Install JuliaMono Typeface (https://juliamono.netlify.app/)
brew tap homebrew/cask-fonts
brew install --cask font-juliamono
```

### Others

These aren't installed through Homebrew

* [1Password](https://1password.com)
* [Things](https://culturedcode.com/things/)
* [Toggl Track](https://toggl.com)
* [Paragon NTFS](https://www.paragon-software.com/ufsdhome/ntfs-mac/)
* [Little Snitch](https://www.obdev.at/products/littlesnitch/download.html)


## macOS

```bash
# Always show hidden files
defaults write -g AppleShowAllFiles -bool true
# Restart Finder 
killall Finder

# Enable full keyboard access for all controls
# (e.g. enable Tab in modal dialogs)
defaults write NSGlobalDomain AppleKeyboardUIMode -int 3
```

## Oh My Zsh!

1. Install [ohmyzsh](https://github.com/ohmyzsh/ohmyzsh/wiki)
2. Symlink `dotfiles/.zshrc` to `~/.zshrc`

    ```bash
    ln -s ~/.files/.zshrc ~/.zshrc
    ```

## Alfred

Follow the instructions in [Sync your Alfred settings between Macs](https://www.alfredapp.com/help/advanced/sync/) to synchronize the settings using Dropbox.

These workflows should be automatically installed:

- [Calm Notifications](https://alfred.app/workflows/vitor/calm-notifications/)
- [Shimmering Obsidian](https://alfred.app/workflows/chrisgrieser/shimmering-obsidian/)
- [Unit Converter](https://alfred.app/workflows/alfredapp/unit-converter/)
- [Terminal-Finder](https://github.com/LeEnno/alfred-terminalfinder)
- [1Password](https://alfred.app/workflows/alfredapp/1password/)
- [Shortcuts](https://alfred.app/workflows/alfredapp/shortcuts/)
- [Currency Converter](https://alfred.app/workflows/alfredapp/currency-converter/)
- [TimeZones](https://github.com/jaroslawhartman/TimeZones-Alfred)

## Espanso

Clone the private espanso repository to `~/.espanso`.

```bash
git clone ESPANSO_REPO_SSH_URL ~/.espanso
```

## NodeJS

1. Install [nvm](https://github.com/creationix/nvm#git-install).
2. Install the latest Node version.

    ```bash
    nvm intall node
    ```

## Ruby

1. Install `rbenv`

   ```bash
   brew install rbenv
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

## Git

```bash
git config --global user.name "Shiki"
git config --global user.email "GITHUB_NOREPLY_EMAIL_ADDRESS"
```

## VS Code

VS Code settings are synchronized using the [built-in Settings Sync](https://code.visualstudio.com/docs/editor/settings-sync). Turn the Settings Sync on and log in using GitHub.

[Disable press and hold](https://stackoverflow.com/a/44010683) so that VS Code will repeat any key that is being held:

```
defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false   
```

## Spacemacs

1. Install [Emacs-plus](https://github.com/syl20bnr/spacemacs#macos). 
2. Follow instructions in [here](https://github.com/syl20bnr/spacemacs#install) to install Spacemacs.
3. Symlink `.spacemacs`

   ```bash
   mv .spacemacs .spacemacs.bak
   ln -s .files/spacemacs/.spacemacs .spacemacs
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
3. Symlink the `.xvimrc`
    ```bash
    ln -s ~/.files/xcode/.xvimrc ~/.xvimrc
    ```

### AppCode

Install AppCode via Homebrew:

```bash
$ brew cask install appcode
```

AppCode settings are synchronized using a git repo.

1. Follow the instructions in [Share settings through a settings repository](https://www.jetbrains.com/help/idea/sharing-your-ide-settings.html#settings-repository).
2. Use the `appcode-settings` Github repo.

### iOS Dev Tools

```bash
brew install simsim swiftformat
```

## Android Development

### Android Studio

Install Android Studio via Homebrew:

```bash
brew install android-studio
```

Android Studio settings are synchronized using a git repo.

1. Follow the instructions in [Share settings through a settings repository](https://www.jetbrains.com/help/idea/sharing-your-ide-settings.html#settings-repository).
2. Use the `android-studio-settings` Github repo.

### Android Dev Tools

```bash
brew install scrcpy
```

## PHP Development

1. Install `php`

    ```
    brew install php
    ```

1. Install [phpbrew](https://github.com/phpbrew/phpbrew).
3. Install [PhpStorm](https://www.jetbrains.com/phpstorm/).

   ```
   brew install phpstorm
   ```

Settings are synchronized using [IDE settings sync using my Jetbrains account](https://www.jetbrains.com/help/idea/sharing-your-ide-settings.html).

## Ansible

Install [pyenv](https://github.com/pyenv/pyenv).

```bash
brew install ansible
```

## Java

```bash
brew install --cask temurin
brew install intellij-idea
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

## Others

1. Change the default DNS
2. Add a [Quick Action to convert HEIC to JPEG](https://www.howtogeek.com/398927/how-to-convert-heic-images-to-jpg-on-a-mac-the-easy-way/)
3. Enable zoom by checking Settings → Accessibility → Zoom → Use scroll gesture with modifier keys to zoom

## References

- [mathiasbynens/dotfiles: .files, including ~/.macos — sensible hacker defaults for macOS](https://github.com/mathiasbynens/dotfiles)


