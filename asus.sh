#!/bin/bash

# guia completa para la instalación: https://asus-linux.org/guides/arch-guide/

# se sale si en algún momento algún comando devuelve un código de error (distinto de 0)
set -euo pipefail

sudo -v || { echo "Se requieren privilegios de sudo. Abortando."; exit 1; }

# mantiene abierta la sesión mientras el script se ejecuta para no volver a pedir la contraseña de sudo
(
  while true; do
    sudo -n true
    sleep 60
    # si el PID del padre ya no existe, salir
    kill -0 "$$" 2>/dev/null || exit
  done
) 2>/dev/null &

sudo pacman-key --recv-keys 8F654886F17D497FEFE3DB448B15A6B0E9A3FA35
sudo pacman-key --finger 8F654886F17D497FEFE3DB448B15A6B0E9A3FA35
sudo pacman-key --lsign-key 8F654886F17D497FEFE3DB448B15A6B0E9A3FA35
sudo pacman-key --finger 8F654886F17D497FEFE3DB448B15A6B0E9A3FA35

wget "https://keyserver.ubuntu.com/pks/lookup?op=get&search=0x8b15a6b0e9a3fa35" -O g14.sec

sudo pacman-key -a g14.sec

rm g14.sec

cat << 'EOF' | sudo tee -a /etc/pacman.conf > /dev/null

[g14]
Server = https://arch.asus-linux.org
EOF

sudo pacman -Suy

sudo pacman -S --needed --noconfirm \
    asusctl \
    rog-control-center \
    power-profiles-daemon 

sudo systemctl enable --now power-profiles-daemon.service
