#!/usr/bin/env bash


# Link Files
ln -s ~/dev/config/.gitconfig ~/.gitconfig
ln -s ~/dev/config/.bash_profile ~/.bash_profile

# TODO?
sudo sh -c 'cat hosts >> /etc/hosts'


# Install Brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"


echo "Installing Brew Taps"
# Moved to Brewfile


echo "Installing applications"
# Moved to Brewfile


echo "Installing dev tools"
# Moved to Brewfile


# Setup Go
LATEST_GO_VERSION="$(goenv install -l | grep -v -E "beta|rc" | tail -1 | tr -d '[[:space:]]')"

goenv init
eval "$(goenv init -)"
goenv install $LATEST_GO_VERSION
goenv global $LATEST_GO_VERSION


# Setup Ruby
LATEST_RUBY_VERSION="$(rbenv install -l | grep -v - | tail -1 | tr -d '[[:space:]]')"

rbenv init
eval "$(rbenv init -)"
rbenv install $LATEST_RUBY_VERSION
rbenv global $LATEST_RUBY_VERSION

gem install bundler sass jekyll rouge


# Setup PHP


# Setup Node
yarn global add bower gulp nodemon reload vue-cli http-server


# Set Sublime Text 3 Settings
if [ -d "~/Library/Application Support/Sublime Text 3/Packages/User" ]; then
    git clone https://github.com/GrahamWalters/sublime-settings.git "~/Library/Application Support/Sublime Text 3/Packages/User"
else
    echo "Error installing Sublime Text settings."
    echo "Please check this directory exists \"~/Library/Application Support/Sublime Text 3/Packages/User\""
fi


# Set Preferences
./preferences.sh

echo "Finished installing & setting preferences."
echo "Reboot computer to apply all settings"
