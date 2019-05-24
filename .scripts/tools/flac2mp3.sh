#!/bin/sh
# Create directory to store mp3s.
mkdir -pv mp3
# Iterate through all .flac format files in directory and convert to mp3.
for i in *.flac; do
	ffmpeg -i "$i" -acodec libmp3lame "mp3/""$(basename "${i/.flac}").mp3" & 
	# Do all files at once.
done
