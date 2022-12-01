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

Instalar en Ubuntu:

sudo apt install vim feh picom i3-wm i3blocks i3status i3-gaps i3lock acpi scrot brightnessctl redshift dmenu rofi

Instalar Alacritty:
sudo add-apt-repository ppa:mmstick76/alacritty
sudo apt install alacritty

Instalar i3-gaps:
https://askubuntu.com/questions/1415720/ubuntu-22-04-jammy-jellyfish-cannot-install-i3-gaps
https://github.com/nannou-org/nannou/issues/746

---------------------
 UBUNTU INSTALLATION
---------------------

In order to install i3wm over Ubuntu, begin with the following command:

sudo apt install vim feh picom i3-wm i3blocks i3status i3-gaps i3lock acpi scrot brightnessctl redshift dmenu rofi

Install i3-gaps on Ubuntu to have spaces between tiles. Instructions retrieved from:
- https://askubuntu.com/questions/1415720/ubuntu-22-04-jammy-jellyfish-cannot-install-i3-gaps
- https://github.com/nannou-org/nannou/issues/746

sudo apt install libxcb1-dev libxcb-keysyms1-dev libpango1.0-dev libxcb-util0-dev libxcb-icccm4-dev libyajl-dev libstartup-notification0-dev libxcb-randr0-dev libev-dev libxcb-cursor-dev libxcb-xinerama0-dev libxcb-xkb-dev libxkbcommon-dev libxkbcommon-x11-dev autoconf xutils-dev libtool automake libxcb-render0-dev libxcb-shape0-dev libxcb-xfixes0-dev
mkdir /tmp/build 
cd /tmp/build
git clone https://www.github.com/Airblader/i3 i3-gaps
cd i3-gaps
git checkout gaps && git pull
sudo apt install meson asciidoc
meson -Ddocs=true -Dmans=true ../build
meson compile -C ../build
sudo meson install -C ../build

Now let's install Alacritty

sudo add-apt-repository ppa:mmstick76/alacritty
sudo apt install alacritty

If Alacritty fails with the ncurses programs, add this to the bottom of your .bashrc file:

unset LD_LIBRARY_PATH

