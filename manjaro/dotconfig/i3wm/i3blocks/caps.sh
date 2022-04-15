#!/usr/bin/bash

caps=$(xset q | grep Caps | awk '{print $4}')

if [ "$caps" = "on" ] ; then
    echo "<span background=\"#9f5500\"><b>CAPS</b></span>"
fi;

