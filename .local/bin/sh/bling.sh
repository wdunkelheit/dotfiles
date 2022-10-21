#!/bin/bash

## Allows for "defaulting" the shell window / display with a single command instead of manually running each commmand.
# Clear the terminal.
clear

# Bling and notes.
command -v neofetch > /dev/null && neofetch

# Check if notes file present. 
if [[ -e ~/notes.txt ]]
then
	# If notes have content, print.
	if [  "$(wc -l < "$HOME/notes.txt")" -gt 0 ]
	then
		cat "$HOME/notes.txt"
	fi
else
	echo "$(tput setaf 1)No notes.txt file found at ~/notes.txt" 
fi

