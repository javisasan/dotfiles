#!/usr/bin/env bash

# Needs i3lock installed
icon="$HOME/Pictures/icon.png"
#tmpbg='/tmp/screen.png'
tmpbg="$HOME/.config/i3/screen.png"

(( $# )) && { icon=$1; }

scrot "$tmpbg"
convert "$tmpbg" -scale 10% -scale 1000% "$tmpbg"
convert "$tmpbg" "$icon" -gravity center -composite -matte "$tmpbg"
i3lock -u -i "$tmpbg"

