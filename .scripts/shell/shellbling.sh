#!/bin/sh

## Allows for "defaulting" the shell window / display with a single command instead of manually running each commmand.
# Clear the terminal.
clear

# Bling and notes.
command -v neofetch > /dev/null && neofetch

# Check if notes file present. 
if [[ -e ~/notes.txt ]]
then
	# If notes have content, print.
	if [ $(cat ~/notes.txt | wc -l) -gt 0 ]
	then
		cat ~/notes.txt
	fi
else
	echo "$(tput setaf 1)No notes.txt file found at ~/notes.txt" 
fi

