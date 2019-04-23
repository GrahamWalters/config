#!/usr/bin/env bash


# Move files into position
cp .bash_profile ~/.bash_profile
cp .gitconfig ~/.gitconfig
sudo sh -c 'cat hosts >> /etc/hosts'


# Install Brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Brew Taps
brew tap homebrew/services
brew tap caskroom/cask


echo "Installing applications"
brew cask install docker
brew cask install dropbox
brew cask install github-desktop
brew cask install google-backup-and-sync
brew cask install google-chrome
brew cask install kitematic
brew cask install marshallofsound-google-play-music-player
brew cask install nightowl
brew cask install plug
brew cask install postman
brew cask install psequel
brew cask install smcfancontrol
brew cask install soundnode
brew cask install spectacle
brew cask install sublime-text
brew cask install transmission
brew cask install transmit4
brew cask install tunnelblick
brew cask install visual-studio-code
brew cask install whatsapp


echo "Installing dev tools"
brew install cmake git gpg gpg-agent goenv rbenv imagemagick memcached mongodb mysql node postgresql qt@5.5 redis rsync yarn bash-git-prompt bash-completion


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
