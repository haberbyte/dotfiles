#!/bin/bash

# Use current directory as default search scope in Finder
defaults write com.apple.finder "FXDefaultSearchScope" -string "SCcf"

# Set a shorter Delay until key repeat
defaults write NSGlobalDomain InitialKeyRepeat -int 20

# Set a fast keyboard repeat rate
defaults write NSGlobalDomain KeyRepeat -int 2

# Turn on keyboard navigation to move focus between controls
defaults write NSGlobalDomain AppleKeyboardUIMode -int 2

# Set dock tile size to 42px
defaults write com.apple.dock tilesize -int 42

# Disable save to cloud as default
defaults write NSGlobalDomain "NSDocumentSaveNewDocumentsToCloud" -bool "false"

# Disable writing .DS_Store files on USB drives
defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true

# Disable writing .DS_Store files on network drives
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
