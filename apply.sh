#!/bin/bash

set -eo pipefail

launchctl unload $HOME/Library/LaunchAgents/setup.plist
launchctl load $HOME/Library/LaunchAgents/setup.plist
