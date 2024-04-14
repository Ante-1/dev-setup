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

### Install Software

- install homebrew
- add `export EDITOR="code"` and `export PATH="/opt/homebrew/bin:$PATH"` to .zshrc

```

# GUI programs
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

# setup `.config/alacritty/alacritty.toml`

# Terminal programs

# matrix style terminal
brew install cmatrix screen saver

# setup terminal promt
brew install starship
# install nerd font FiraCode Nerd Font Propo
starship preset nerd-font-symbols -o ~/.config/starship.toml

# modern grep replacement: rg
brew install ripgrep

# modern ls replacement
brew install lsd
# setup alias ll, la, lla, lt

# modern rm replacement: rip
brew install rm-improved
# rip -u to undo last delete

# cp with progress bar: xcp aliased to cp
cargo install xcp # rustup if cargo is missing

# modern cd replacement: z
brew install zoxide
# alias cd="z" alias cdi="zi"

# fuzzy finder: fzf
brew install fzf
# fzf (-m) to search files and print the result(s)
# COMMAND | fzf search piped input
# COMMAND <CTRL-T> search files and paste, TAB to select multiple
# <CTRL-R> search history
# COMMAND [DIRECTORY/][FUZZY_PATTERN]**<TAB>
# idea ~/gv/** fuzzy find file in gv folder and open it with idea
# kill -9 **<TAB> search PID for kill command

# modern du replacement, analyze disk usage
brew install dust # everything at a glance
brew install ncdu # interactive

# modern find replacement
brew install fd

# modern top replacement
brew install bottom
# alias top="btm"

# update everything
brew install topgrade

# less used stuff
brew install macchina # display some basic system info
brew install tokei # count lines of code
brew install tealdeer # tldr in rust (simplified man pages)
brew install httpie # easier curl
brew install jq # powerfull json tool
```
