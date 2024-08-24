#!/bin/bash

set -eo pipefail

echo "remove setup agent files."
rm $HOME/Library/LaunchAgents/setup.plist
rm $HOME/setup.sh

