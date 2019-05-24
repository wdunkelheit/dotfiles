#!/bin/sh

fullscreen(){
	bspc config window_gap 0
	bspc config top_padding 0
	killall -q polybar
}


[ "$(pgrep polybar)" ]  && fullscreen && notify-send "Fullscreen tiling." "Enabled." && exit
[ ! "$(pgrep polybar)" ] && bspc wm -r && notify-send "Fullscreen tiling." "Disabled." && exit
