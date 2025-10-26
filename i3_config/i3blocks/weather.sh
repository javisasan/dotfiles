#!/usr/bin/env bash

#weather=$(curl -Ss 'https://wttr.in?0&T&Q' | cut -c 16- | head -2 | xargs echo)
weather=$(curl 'wttr.in?format=3' | cut -c 18- | xargs echo)

case $BLOCK_BUTTON in
    1) eval "python3 /home/javi/.config/i3blocks/change_wallpaper.py";;
esac

echo $weather

