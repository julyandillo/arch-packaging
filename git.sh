#!/bin/bash
set -euo pipefail

mkdir -p ~/.config/git
touch ~/.config/git/config

# Pedir datos
read -rp "Nombre de usuario para git: " git_name
read -rp "Email para git: " git_email

git config --global user.name "$git_name"
git config --global user.email "$git_email"

echo "✅ Configuración aplicada:"
git config --global --get user.name
git config --global --get user.email

git config --global alias.s status
git config --global alias.c commit
git config --global alias.ck checkout

git config --global init.defaultBranch main

