#!/usr/bin/env bash

apps=(
    docker
    dropbox
    github-desktop
    google-backup-and-sync
    google-chrome
    kitematic
    marshallofsound-google-play-music-player
    nightowl
    plug
    postman
    psequel
    sequel-pro
    smcfancontrol
    soundnode
    spectacle
    sublime-text
    transmission
    transmit4
    tunnelblick
    visual-studio-code
    vlc
    whatsapp
)

for app in ${apps[@]}; do
    brew cask info $app 2>&1 > /dev/null
done

# echo ${apps[@]};
