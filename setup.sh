#!/bin/bash
# install all the things we need for building flatpak & tauri on ubuntu 

curl -fsSL https://deb.nodesource.com/setup_20.x | sudo bash -
curl -fsSL https://get.pnpm.io/install.sh | sh -
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

sudo apt-get update
sudo apt-get install -y libgtk-3-dev libwebkit2gtk-4.0-dev libappindicator3-dev librsvg2-dev patchelf flatpak flatpak-builder build-essential

# setup flatpak
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
flatpak --user install flathub -y --noninteractive org.gnome.Sdk/x86_64/46
