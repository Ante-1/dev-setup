# Development Setup Mac/PC

## What I did

In spired in part by https://www.robinwieruch.de/mac-setup-web-development/

### System Settings

- Dark Mode
- Show Scroll Bars -> Always
- activate Touch ID
- disable Siri
- Keyboard Shortcuts -> Spotlight -> CMD + Space disable
  - We will be using Raycast instead
- Turn on FileVault

### Finder Settings

- General -> Show these items on the desktop: disable all
- Sidebar -> add all Locations
- Tags -> disable all
- Advanced
  - Show all Filename Extensions
  - Remove Items from Trash after 30 Days
- in terminal:

```
# show Library folder
chflags nohidden ~/Library

# show hidden files
defaults write com.apple.finder AppleShowAllFiles YES

# show path bar
defaults write com.apple.finder ShowPathbar -bool true

# show status bar
defaults write com.apple.finder ShowStatusBar -bool true

killall Finder;
```

- install homebrew
- add `export EDITOR="code"` and `export PATH="/opt/homebrew/bin:$PATH"` to .zshrc

```
brew install --cask \
  raycast \ # search + shortcut tool replacing spotlight
  bitwarden \ # password manager
  google-chrome  \
  firefox \
  visual-studio-code \
  docker \
  rectangle \ # window manager
  unnaturalscrollwheels \ # normal scrolling mouse wheel and touch pad
  alacritty \ # Terminal Emulator

brew install cmatrix # matrix style terminal screen saver
brew install starship # a terminal promt
```

- setup `.config/alacritty/alacritty.toml`