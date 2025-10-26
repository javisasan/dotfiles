#!/usr/bin/bash

layout=$(setxkbmap -query | grep layout | awk '{print $2}')

echo "<span background=\"#A4C2F4\" color=\"#333333\"><b> ${layout^^} </b></span>"
