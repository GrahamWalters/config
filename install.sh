exit


# Kill affected applications
for app in TextEdit Finder SystemUIServer; do killall "$app"; done













# Install Brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"


echo "Installing applications"
brew tap caskroom/cask
brew cask install sublime-text
brew cask install github-desktop
brew cask install google-chrome
brew cask install google-play-music-desktop-player
brew cask install dropbox
brew cask install tunnelblick
brew cask install google-backup-and-sync
brew cask install postman
brew cask install psequel
brew cask install smcfancontrol
brew cask install docker
brew cask install kitematic


# Enable brew services
brew tap homebrew/services

# Brew install
brew install cmake git go rbenv imagemagick memcached mongodb mysql node postgresql qt@5.5 redis rsync yarn bash-git-prompt

# Setup Ruby
LATEST_RUBY_VERSION="$(rbenv install -l | grep -v - | tail -1 | tr -d '[[:space:]]')"

rbenv init
eval "$(rbenv init -)"
rbenv install $LATEST_RUBY_VERSION
rbenv global $LATEST_RUBY_VERSION

gem install bundler sass jekyll rouge

# Setup PHP


# Setup Node


# Setup Sublime Text 3 Settings
# - check directory exists
git clone https://github.com/GrahamWalters/sublime-settings.git ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User

