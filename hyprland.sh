#!/bin/bash

yay -S --needed --noconfirm \
    hyprland \
    waybar \
    hyprpaper \
    wofi \
    hyprpolkitagent \
    swaync \
    swayosd \
    hyprutils \
    nwg-look \
    nwg-bar \
    udiskie \
    wl-clip-persist \
    ssdm

sudo systemctl enable sddm.service
