#!/bin/sh

echo "Hello my mac!! Start setup from ", `date`

# カーソルスピードを変更
CURSOR_SPEED=`defaults read NSGlobalDomain com.apple.mouse.scaling`
if [ "$CURSOR_SPEED" != "3" ]; then
    echo "Setting cursor speed to 3..."
    defaults write NSGlobalDomain com.apple.mouse.scaling -int 3

    # 変更後の速度を確認
    NEW_CURSOR_SPEED=$(defaults read NSGlobalDomain com.apple.mouse.scaling)
    echo "New cursor speed: $NEW_CURSOR_SPEED"
fi
