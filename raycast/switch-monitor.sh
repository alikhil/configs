#!/bin/bash

# See full documentation here: https://github.com/raycast/script-commands
#
# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Switch Monitor Input Source
# @raycast.mode silent
#
# Optional parameters:
# @raycast.️alias switch-monitor
# @raycast.icon 🖥️
# @raycast.packageName Raycast Scripts

DEST_ID=18
DEST_NAME="Home Mac Mini"

if [ `whoami` == "alikkhilazhev" ]; then
  DEST_ID=25
  DEST_NAME="Work Macbook Air"
fi

echo "Switching monitor input source to $DEST_NAME"
/Applications/BetterDisplay.app/Contents/MacOS/BetterDisplay set -ddc=$DEST_ID -vcp=inputSelect
