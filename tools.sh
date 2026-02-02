#!/bin/bash

yay -S --needed --noconfirm \
    git \
    eza \
    fzf \
    caligula \
    ventoy-bin \
    xarchiver \
    ripgrep \
    bat \
    filezilla \
    tailspin \
    remmina \
    freerdp \
    rustdesk-bin \
    tailtray \
    anydesk-bin \
    tailscale \
    tail-tray \
    stow \
    starship \
    okular \
    fish \
    wl-clipboard \
    btop \
    zapzap \
    rsync \
    vlc

sudo systemctl enable --now tailscaled
