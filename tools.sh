#!/usr/bin/env bash

brew update && brew upgrade

# Install Brew Packages
echo "Installing Brew Python..."
brew install python

# Install MacOS Applications
echo "Installing MacOS Applications..."
brew install --cask iterm2

# Install packages
echo "Installing packages..."
brew install fd
brew install fzf
brew install gh
brew install git
brew install haste-client
brew install htop
brew install inkscape
brew install iterm2
brew install lua
brew install neovim
brew install pandoc
brew install ripgrep


# Install Source Code Pro Font
echo "Installing fonts..."
brew tap homebrew/cask-fonts
brew cask install font-source-code-pro
brew cask install font-fantasque-sans-mono
brew cask install font-mononoki-nerd-font
brew cask install font-sauce-code-pro-nerd-font
brew cask install font-jetbrains-mono-nerd-font
