# brew "arp-scan"
# brew "cmake"
# brew "coreutils"
# brew "jdupes"
# brew "gnupg"
# brew "htop"
# brew "parallel"
# brew "telnet"
# brew "tmux"
# brew "yubico-piv-tool"
brew "direnv"
brew "exiftool" # Optional, for image metadata editing
brew "git-lfs"
brew "git"
brew "gnupg"
brew "grep"
brew "iperf3"
brew "jq"
brew "nvm"
brew "pinentry-mac" # gpg signing utility
brew "rsync"
brew "sponge"
brew "tree"
brew "uv"
if ENV['USER'] == 'gw'
  brew "apfel"
  brew "ffmpeg"
  brew "age"
  brew "sops"
end

# Casks
############################################################
cask "brave-browser"
cask "docker-desktop"
cask "github"
cask "google-chrome"
cask "rectangle"
cask "visual-studio-code"
cask "vlc"

if ENV['USER'] == 'gw'
  # cask "dropbox"
  cask "daisydisk"
  cask "wifiman"
  cask "wireshark-app"
  cask "darrylmorley/whatcable/whatcable"
elsif ENV['USER'] == 'gwalters'
  # cask "tableplus"
  cask "lulu"
  cask "postman"
end

# Mac App Store
############################################################

if ENV['USER'] == 'gw'
  # mas "AdBlock", id: 1402042596
  # mas "Affinity Designer", id: 824171161
  # mas "Affinity Photo", id: 824183456
  # mas "Colors", id: 581915465
  # mas "Navicat for MySQL Lite", id: 412581753
  # mas "PiPifier", id: 1160374471
  # mas "Xcode", id: 497799835
  # https://apps.apple.com/us/app/diskdedupe/id1457961323?mt=12
  # diskDedupe

  mas "Blackmagic Disk Speed Test", id: 425264550
  mas "Speedtest", id: 1153157709
  mas "WireGuard", id: 1451685025
end
