#!/usr/bin/bash

caps=$(xset q | grep Caps | awk '{print $4}')

if [ "$caps" = "on" ] ; then
    echo "<span background=\"#f99312\" color=\"#333333\"><b> CAPS </b></span>"
fi;

