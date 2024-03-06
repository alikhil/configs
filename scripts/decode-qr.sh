#!/bin/bash

FILENAME="$TMPDIR$RANDOM.png"   # Generates a file name
pngpaste "$FILENAME"            # Paste screenshot into file
zbarimg -q --raw "$FILENAME"    # Will try to decode QR-code
rm -rf "$FILENAME"
