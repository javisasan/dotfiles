#!/usr/bin/bash

caps=$(xset q | grep Caps | awk '{print $4}')

if [ "$caps" = "on" ] ; then
    echo "<span background=\"#f99312\"><b>CAPS</b></span>"
fi;

