#!/bin/sh

if ! command -v brew &> /dev/null; then
    echo "homebrewをインストールしてください"
    exit 1
fi

brew install --cask arc

brew install --cask karabiner-elements

brew install --cask raycast

brew install --cask 1password
brew install 1password-cli

brew install --cask warp

brew install --cask chatgpt
