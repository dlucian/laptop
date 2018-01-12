#!/bin/bash

# Disable AutoCorrect
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false

# Expand Save & Print Panels by Default
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode2 -bool true
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint -bool true
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint2 -bool true

# Prevent Safari from Opening Safe Files Automatically
defaults write com.apple.Safari AutoOpenSafeDownloads -bool false

# Enable Safari Develop Menu & Web Inspector
defaults write com.apple.Safari IncludeInternalDebugMenu -bool true && \
defaults write com.apple.Safari IncludeDevelopMenu -bool true && \
defaults write com.apple.Safari WebKitDeveloperExtrasEnabledPreferenceKey -bool true && \
defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled -bool true && \
defaults write -g WebKitDeveloperExtras -bool true

# Keyboard Repeat
defaults write -g InitialKeyRepeat -int 10 # normal minimum is 15 (225 ms)
defaults write -g KeyRepeat -int 1 # normal minimum is 2 (30 ms)

# TextEdit: Use plain text mode as default
defaults write com.apple.TextEdit RichText -int 0

# Add a Dock with recent applications
defaults write com.apple.dock persistent-others -array-add '{ "tile-data" = { "list-type" = 1; }; "tile-type" = "recents-tile"; }'

# Dock show/hide delay in ms
defaults write com.apple.Dock autohide-delay -float 0

# Save screenshots in Downloads folder
defaults write com.apple.screencapture location ~/Downloads

# Restart Dock
killall Dock

# Show Finder status bar
defaults write com.apple.finder ShowStatusBar -bool true
