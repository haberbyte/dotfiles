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

