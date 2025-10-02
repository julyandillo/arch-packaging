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
    udiskie \
    ssdm

sudo systemctl enable sddm.service
