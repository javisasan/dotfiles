#!/usr/bin/python3
import os
import random

# Path to wallpapers folder
wallpaperPath = "/home/javi/Imágenes/Wallpapers/"

# List of wallpapers in folder
wallpapers = os.listdir(wallpaperPath)

# Choose a random wallpaper in list
randomWallpaper = random.randint(0, len(wallpapers))

# Set the new wallpaper
os.system("feh --bg-fill " + wallpaperPath + wallpapers[randomWallpaper])

# notify-osd
#os.system("notify-send --icon=gtk-info \"Wallpaper changed: \" + wallpapers[randomWallpaper]")

