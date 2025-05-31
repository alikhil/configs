#!/bin/bash

# See full documentation here: https://github.com/raycast/script-commands
#
# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Switch Monitor To uConsole
# @raycast.mode silent
#
# Optional parameters:
# @raycast.️alias switch-monitor-to-uconsole
# @raycast.icon 🖥️
# @raycast.packageName Raycast Scripts

DEST_ID=18
DEST_NAME="uConsole"

echo "Switching monitor input source to $DEST_NAME"
/Applications/BetterDisplay.app/Contents/MacOS/BetterDisplay set -ddc=$DEST_ID -vcp=inputSelect
