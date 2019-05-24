#!/bin/bash

# Kill all polybars
killall -q polybar

# Wait until kill confirmed.
while pgrep -u $UID -x polybar >dev/null; do sleep 1; done

# Launch Polybar
# Check for hostname to get machine specific bar.
[ $(hostname) = "Thunderbolt" ] && polybar monitor &
[ ! $(hostname) = "Thunderbolt" ] && polybar mybar &

echo "Polybar launched..."

