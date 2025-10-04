#!/bin/sh
mpv "$(yt-dlp --flat-playlist --playlist-end 1 -J "https://www.tiktok.com/@officialvarg" | jq -r '.entries[0].url')" &

