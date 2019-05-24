#!/bin/sh

lock() { i3lock --image ~/.config/lockscreen.png ;}
locksleep() { lock & sleep 5 && xset dpms force off ;}

case $1 in
	"lock") lock ;;
	"locksleep") locksleep ;;
esac
