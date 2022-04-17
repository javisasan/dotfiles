Documentación provisional para instalar i3wm

Instalar la base de i3:
- i3-wm
- i3blocks
- i3status
- i3-gaps

En Arch lo instalamos con:
$> sudo pacman -S i3 y elegir los programas de arriba.

Para instalar en Ubuntu / Mint i3-gaps, seguiremos los pasos indicados en https://blog.elreydetoda.site/minimal-i3-gaps-install-ubuntu/ :
$> sudo add-apt-repository -y ppa:regolith-linux/stable
$> sudo apt install i3-gaps

En Manjaro no sale el tray bar, pero para conectarnos a vpn podemos hacerlo por nmcli o lanzando "plasmashell"

* Otros programas que hay que instalar
- acpi  (control de batería)
- scrot (capturas de pantalla)
- brightnessctl (control del brillo)
- redshift (temperatura del color)
- dmenu
- rofi

