#!/bin/bash

set -eo pipefail

if [ "$USER" != "shoma2da" ]; then
  echo 'User name is not shoma2da.'
  exit 1
fi

echo "copy setup agent files."
cp ./files/setup.plist $HOME/Library/LaunchAgents/
cp ./files/setup.sh $HOME
