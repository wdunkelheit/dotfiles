#!/bin/bash

# Kill all polybars
while [ "$(pgrep waybar)" ]
do
    killall -q waybar
done

# Wait until kill confirmed.
while pgrep -u $UID -x waybar >dev/null; do sleep 1; done

# Launch Polybar
waybar

echo "Waybar launched..."

