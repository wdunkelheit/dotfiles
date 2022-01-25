#!/bin/bash

# Kill all polybars
while [ "$(pgrep polybar)" ]
	do
		killall -q polybar
	done

# Wait until kill confirmed.
while pgrep -u $UID -x polybar >dev/null; do sleep 1; done

# Launch Polybar
polybar mybar

echo "Polybar launched..."

