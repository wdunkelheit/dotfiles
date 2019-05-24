#!/bin/sh

up() { sudo xbacklight -inc 10 ;}
down() { sudo xbacklight -dec 10 ;}

case "$1" in
	"-u") up ;;
	"-d") down ;;
esac
