INSTALAR

sudo pacman qtile picom feh scrot xclip

sudo pamac build google-chrome
sudo pamac build spotify

Si falla la instalación de Spotify, probar con el comando
curl -sS https://download.spotify.com/debian/pubkey_0D811D58.gpg | gpg --import -
antes de instalar. (si sigue fallando, probar con sudo)
Si no ejecuta Spotify, probar con el comando
spotify --no-zygote



BLUETOOTH
Revisar esta guía:
https://wiki.archlinux.org/title/Bluetooth#Console

Para agregar un dispositivo por Bluetooth, lo primero que tenemos que hacer es conseguir
el programa bluetoothctl, que se puede conseguir instalando el paquete

sudo pacman -S bluez-utils

Tenemos que asegurarnos que el bluetooth no esté bloqueado con el comando

rfkill list

se puede desbloquear (si el bloqueo es por software) con el comando

rfkill unblock bluetooth  (revisar este comando)

Ahora abrimos el configurador cli de bluetooth

bluetoothctl

Encendemos el controlador con el comando

power on

Listamos los dispositivos con el comando 

devices

Si el dispositivo no aparece, activaremos el modo descubrimiento de dispositivos con el comando

scan on

Activamos el agente con el comando (si hacemos agent tab tab nos saldrá un listado de agentes
activos, el default-agent debería ser suficiente en la mayoría de los casos)

agent on  |  agent tab tab

Emparejamos la mac del dispositivo que queramos con el comando

pair <mac address>

Si no nos pide pin, deberemos confiar manualmente en el disposisivo con el comando

trust <mac address>

Finalmente, nos conectaremos con el dispositivo con el comando

connect <mac address>

Ahora, al reiniciar perderemos el emparejamiento. Para evitar esto, deberemos encender
el controlador automáticamente en el inicio.
https://wiki.archlinux.org/title/Bluetooth#Auto_power-on_after_boot
Para lograrlo, editaremos el fichero /etc/bluetooth/main.conf y añadiremos al final
de la sección [Policy] la siguiente línea:

AutoEnable=true

NOTA: El Drevo Calibur no me ha pedido contraseña al emparejar ni al conectar. Pero en cada rearranque
tengo que entrar en bluetoothctl y me pide autorización, por lo que lo soluciono con el comando trust.


