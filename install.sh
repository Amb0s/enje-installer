#!/bin/bash

# Removes useless distribution packages.
sudo pacman -Rns --noconfirm baobab cheese eog epiphany gnome-backgrounds \
    gnome-calculator gnome-contacts gnome-logs gnome-maps gnome-music gnome-photos \
    gnome-remote-desktop nautilus gnome-text-editor gnome-console gnome-software \
    gnome-system-monitor gnome-weather simple-scan malcontent orca totem vim htop

# Installs distribution packages.
sudo pacman -S --noconfirm --needed base-devel ufw neofetch firefox exa \
    torbrowser-launcher cmus milkytracker mat2 discord mpv hugo transmission-gtk \
    thunar thunar-archive-plugin neovim pacman-contrib aegisub obs-studio blender \
    gimp inkscape btop weechat profanity qtox keepassxc monero-gui veracrypt gamemode \
    reflector newsboat yt-dlp krita darktable intellij-idea-community-edition mednafen \
    bleachbit shotcut python-pywal tmux gnome-themes-extra alacritty bc maim \
    steam tumbler w3m jdk8-openjdk ffmpegthumbnailer adobe-source-code-pro-fonts \
    awesome-terminal-fonts ttf-bitstream-vera ttf-dejavu  ttf-liberation ttf-opensans \
    ttf-iosevka-nerd ttf-ubuntu-font-family ttf-liberation ttf-cascadia-code \
    ttf-fira-code ttf-hack-nerd terminus-font sxiv #amd-ucode

# Installs AUR helper.
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

# Installs AUR packages
yay -S gnome-browser-connector lf mangohud mednaffe packwiz-git bottles xmrig-cuda \
    xmrig-donateless inxi stagit dosbox-x tmsu-git papirus-folders xcursor-simp1e \
    mpv-sponsorblock-minimal-git protonup-git gradience adw-gtk3 tilde unityhub \
    gnome-shell-extension-vitals czkawka-cli gnome-shell-extension-arc-menu \
    gnome-shell-extension-dash-to-panel gnome-shell-extension-appindicator-git \
    gnome-shell-extension-openweather gallery-dl bombadillo nerd-fonts-go-mono \
    jdk17-temurin nerd-fonts-inconsolata nerd-fonts-jetbrains-mono nerd-fonts-mononoki \
    nerd-fonts-roboto-mono ttf-ms-fonts ttf-vista-fonts ttf-tahoma ttf-segoe-ui-variable

# Removes orphans.
sudo pacman -Rns --noconfirm $(pacman -Qtdq)

# Copies config files.
source ~/enje-installer/configure.sh


