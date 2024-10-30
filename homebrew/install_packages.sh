#!/bin/sh

if ! command -v brew &> /dev/null; then
    echo "homebrewをインストールしてください"
    exit 1
fi

brew install --cask 1password
