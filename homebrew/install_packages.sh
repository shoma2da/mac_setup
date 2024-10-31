#!/bin/sh

if ! command -v brew &> /dev/null; then
    echo "homebrewをインストールしてください"
    exit 1
fi

brew install --cask 1password
brew install --cask arc
brew install --cask karabiner-elements
brew install --cask raycast
