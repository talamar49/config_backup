#!/bin/bash

sudo apt install flatpak
sudo apt install gnome-software-plugin-flatpak
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
flatpak install flathub org.gnome.World.PikaBackup
sudo apt install gedit
cat shortcuts.txt > ~/.config/kglobalshortcutsrc
sudo add-apt-repository ppa:touchegg/stable
sudo apt update -y
sudo apt install touchegg -y
flatpak install flathub com.github.joseexposito.touche
sudo apt install gcc -y
sudo apt install g++ -y