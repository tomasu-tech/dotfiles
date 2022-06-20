#!/bin/bash

## prerequisite
## You have to login to Mac App Store before use this.


# Command Line Tools
echo "Installing Command Line Tools for Xcode..."
xcode-select --install

# rosetta install
sudo softwareupdate --install-rosetta --agree-to-licensesudo softwareupdate --install-rosetta --agree-to-license

#------------------------------------------
# homebrew(arm64)
#------------------------------------------
echo "Installing homebrew..."
which /opt/homebrew/bin/brew >/dev/null 2>&1 || /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo "Executing brew doctor..."
which /opt/homebrew/bin/brew >/dev/null 2>&1 && brew doctor

echo "Running brew update..."
which /opt/homebrew/bin/brew >/dev/null 2>&1 && brew update --verbose

echo "Running brew upgrade..."
which /opt/homebrew/bin/brew >/dev/null 2>&1 && brew upgrade --verbose

### bundle with .Brewfile
echo "Installing apps with .Brewfile..."
which /opt/homebrew/bin/brew >/dev/null 2>&1 && brew bundle --file ./.Brewfile --verbose

echo "Running brew cleanup..."
which brew >/dev/null 2>&1 && brew cleanup --verbose

### create symbolic links
echo "Creating symlinks..."
./_link.sh

exec $SHELL -l
