Mar 2022

En este documento vamos a ver cómo instalar Qtile en Manjaro / Arch.

Primero instalaremos los paquetes que utilizo:

sudo pacman -S qtile alacritty picom feh scrot xclip rofi redshift

# Transparencia de Alacritty
Tras pegar el archivo alacritty.yml en la carpeta .config, hay que añadir en el fichero:

window
    opacity: 0.75

y ya funcionará.


