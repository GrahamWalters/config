#!/usr/bin/env zsh

diff .gitconfig ~/.gitconfig
diff .gitignore_global ~/.gitignore_global
diff .zshrc ~/.zshrc
diff .zprofile ~/.zprofile

# Check environment-specific git config
if [ "$USER" = "gw" ]; then
  diff personal/.gitconfig.local ~/.gitconfig.local
  diff personal/.zshrc.local ~/.zshrc.local
elif [ "$USER" = "gwalters" ]; then
  diff work/.gitconfig.local ~/.gitconfig.local
  diff work/.zshrc.local ~/.zshrc.local
fi
