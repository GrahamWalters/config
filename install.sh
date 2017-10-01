# add checks for


# Preferences
defaults write com.apple.Siri StatusMenuVisible  -int 0
defaults write com.apple.menuextra.battery ShowPercent -string "Yes"
# - Show volume
# - Show timemachine

echo "Disable shadow in screenshots"
defaults write com.apple.screencapture disable-shadow -bool true

echo "Enable Dashboard as overlay"
defaults write com.apple.dashboard dashboard-enabled-state -int 3

echo "Use Plain Text as the default in TextEdit"
defaults write com.apple.TextEdit RichText -int 0

# Finder
echo "Use current directory as default search scope in Finder"
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"

echo "Show Status bar in Finder"
defaults write com.apple.finder ShowStatusBar -bool true

echo "Disable the warning when changing a file extension"
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

# - item details
# - left icon
# - size
# - default folder ~ instead of "all files"
# - show servers
# - show disks

killall SystemUIServer
killall Finder
killall TextEdit


# Install Brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

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
git clone https://github.com/GrahamWalters/sublime-settings.git ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User

