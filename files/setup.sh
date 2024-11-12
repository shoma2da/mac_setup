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

# キーリピートの設定
KEY_REPEAT=$(defaults read NSGlobalDomain KeyRepeat)
if [ "$KEY_REPEAT" != "1" ]; then
    echo "Setting KeyRepeat to fastest (1)..."
    defaults write NSGlobalDomain KeyRepeat -int 1
    echo "New KeyRepeat: $(defaults read NSGlobalDomain KeyRepeat)"
fi

# 初期リピートの設定
INITIAL_KEY_REPEAT=$(defaults read NSGlobalDomain InitialKeyRepeat)
if [ "$INITIAL_KEY_REPEAT" != "10" ]; then
    echo "Setting InitialKeyRepeat to 10..."
    defaults write NSGlobalDomain InitialKeyRepeat -int 10
    echo "New InitialKeyRepeat: $(defaults read NSGlobalDomain InitialKeyRepeat)"
fi
