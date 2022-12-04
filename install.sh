#!/bin/bash

# Tools
sudo pacman -S --noconfirm --needed base-devel git ufw

# Neofetch
sudo pacman -S --noconfirm neofetch

# Terminal
sudo pacman -S --noconfirm alacritty

# Firefox & tor browser
sudo pacman -S --noconfirm firefox torbrowser-launcher

# cmus & mpv
sudo pacman -S --noconfirm cmus mpv

# Transmission
sudo pacman -S --noconfirm transmission-gtk

# thunar
sudo pacman -S --noconfirm thunar thunar-archive-plugin

# neovim
sudo pacman -S --noconfirm neovim

# pacman-contrib
sudo pacman -S --noconfirm pacman-contrib

# aegisub, obs-studio, gimp & inkscape
sudo pacman -S --noconfirm aegisub obs-studio blender gimp inkscape

# btop
sudo pacman -S --noconfirm btop

# weechat, profanity & qtox
sudo pacman -S --noconfirm weechat profanity qtox

# keepassxc
sudo pacman -S --noconfirm keepassxc

# monero-gui
sudo pacman -S --noconfirm monero-gui

# veracrypt
sudo pacman -S --noconfirm veracrypt

# gamemode
sudo pacman -S --noconfirm gamemode

# reflector
sudo pacman -S --noconfirm reflector

# newsboat
sudo pacman -S --noconfirm newsboat

# yt-dlp
sudo pacman -S --noconfirm yt-dlp

# jdk-openjdk & intellij-idea-community-edition
sudo pacman -S --noconfirm jdk8-openjdk intellij-idea-community-edition 

# Modern ls replacement
sudo pacman -S --noconfirm exa

# mednafen
sudo pacman -S --noconfirm mednafen

# bleachbit
sudo pacman -S --noconfirm bleachbit

# pywal
sudo pacman -S --noconfirm python-pywal

# tmux
sudo pacman -S --noconfirm tmux

# extra Gnome themes
sudo pacman -S --noconfirm gnome-themes-extra

# bc
sudo pacman -S --noconfirm bc

#
sudo pacman -S --noconfirm adw-gtk3

# lm_sensors
sudo pacman -S --noconfirm lm_sensors

# scrot & maim
sudo pacman -S --noconfirm scrot maim

# steam (ENABLE MULTILIB REPO)
sudo pacman -S --noconfirm steam

# sxiv
sudo pacman -S --noconfirm sxiv

#
sudo pacman -S --noconfirm tumbler ffmpegthumbnailer

# yay
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

# gnome-browser-connector
yay -S gnome-browser-connector

#
yay -S lf

#
yay -S mangohud 


#
yay -S mednaffe

#
yay -S packwiz-git

# (ADD jp_JP to LOCALES)
yay -S bottles

#
yay -S xmrig-cuda

#
yay -S xmrig-donateless

#
yay -S inxi

#
yay -S dosbox-x

#
yay -S tmsu-git

#
yay -S papirus-folders

#
yay -S xcursor-simp1e

#
yay -S mpv-sponsorblock-minimal-git

#
yay -S protonup-git

#
yay -S gradience

#
yay -S adw-gtk3

#
yay -S tilde

#
yay -S unityhub

# + krypto, pop-shell, date menu format, gamemode
yay -S gnome-shell-extension-vitals gnome-shell-extension-arc-menu gnome-shell-extension-dash-to-panel gnome-shell-extension-appindicator-git gnome-shell-extension-openweather

# Nerd Fonts
yay -S nerd-fonts-fira-code nerd-fonts-go-mono nerd-fonts-hack nerd-fonts-inconsolata nerd-fonts-jetbrains-mono nerd-fonts-mononoki nerd-fonts-roboto-mono

# Microsoft fonts
yay -S ttf-ms-fonts ttf-vista-fonts ttf-tahoma ttf-segoe-ui-variable

# Other fonts
sudo pacman -S --noconfirm adobe-source-code-pro-fonts awesome-terminal-fonts ttf-bitstream-vera ttf-dejavu ttf-liberation ttf-opensans ttf-iosevka-nerd ttf-ubuntu-font-family 
sudo pacman -S --noconfirm ttf-liberation terminus-font ttf-cascadia-code

# fc-cache -fsv

# Copies config files
source ~/enje-installer/configure.sh

# Remove useless packages
sudo pacman -Rns --noconfirm baobab cheese eog epiphany gedit gnome-boxes gnome-backgrounds gnome-calculator gnome-contacts gnome-logs gnome-maps gnome-music gnome-photos
sudo pacman -Rns --noconfirm gnome-remote-desktop gnome-software gnome-software-packagekit-plugin gnome-system-monitor gnome-weather
sudo pacman -Rns --noconfirm simple-scan malcontent orca vino totem vim htop

# Remove orphans
sudo pacman -Rns --noconfirm $(pacman -Qtdq)

# Exit message
printf "\x1b[31mYou can now reboot! See you again, have a nice day!\x1b[0m\n"
