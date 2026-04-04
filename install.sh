#!/usr/bin/env zsh

# Install Brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Link Files
rm ~/.gitconfig || true && ln -s ~/dev/config/.gitconfig ~/.gitconfig
rm ~/.gitignore_global || true && ln -s ~/dev/config/.gitignore_global ~/.gitignore_global
rm ~/.zshrc || true && ln -s ~/dev/config/.zshrc ~/.zshrc
rm ~/.zprofile || true && ln -s ~/dev/config/.zprofile ~/.zprofile

source ~/.zshrc

# Install brew packages
brew bundle

echo "Finished installing"
echo "Run ./preferences.sh to set preferences"
echo "Reboot computer to apply all settings"
