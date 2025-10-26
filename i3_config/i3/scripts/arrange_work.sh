#!/usr/bin/env bash

#xrandr --auto;xrandr --output eDP-1 --auto --mode 1680x1050 --right-of DP-1
#xrandr --auto;xrandr --output eDP-1 --auto --mode 1680x1050 --dpi 96 --right-of DP-1
#xrandr --auto;xrandr --output eDP-1 --auto --mode 1680x1050 --right-of DP-1;xrandr --output DP-1 --auto --mode 2560x1440 --left-of eDP-1
xrandr --auto;xrandr --output eDP-1 --auto --mode 1680x1050 --right-of DP-1;xrandr --output DP-1 --dpi 150 --mode 2560x1440 --left-of eDP-1

i3-msg '[workspace="1"]' move workspace to output DP-1
i3-msg '[workspace="2"]' move workspace to output DP-1
i3-msg '[workspace="3"]' move workspace to output DP-1
i3-msg '[workspace="4"]' move workspace to output DP-1
i3-msg '[workspace="5"]' move workspace to output DP-1
i3-msg '[workspace="6"]' move workspace to output DP-1
i3-msg '[workspace="7"]' move workspace to output DP-1
i3-msg '[workspace="8"]' move workspace to output eDP-1
i3-msg '[workspace="9"]' move workspace to output eDP-1
i3-msg '[workspace="0"]' move workspace to output eDP-1
