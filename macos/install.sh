#!/usr/bin/env bash

# Close any open System Preferences panes, to prevent them from overriding
# settings we’re about to change
osascript -e 'tell application "System Preferences" to quit'

# Disable "natural" scrolling
defaults write NSGlobalDomain com.apple.swipescrolldirection -bool false

for app in "Activity Monitor" \
	"cfprefsd" \
	"Finder"; do
	killall "${app}" &> /dev/null
done
