#!/bin/sh

# Declare screenshot path.
TARGET="pix/Screenshots/screenshot-$(date '+%Y.%m.%d-%H:%M:%S')"

# Check if already occupied.
if [ -e "$TARGET" ]
then
	# If occupied append an underscore.
	TARGET="$TARGET+_"
fi

# Add .png extension
TARGET="$TARGET.png"

# Save screenshot.
maim "$TARGET"

# Notify of screenshot.
notify-send "Screenshot saved" "$TARGET" 

