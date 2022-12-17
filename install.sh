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
    reflector newsboat yt-dlp krita intellij-idea-community-edition mednafen \
    bleachbit shotcut python-pywal tmux gnome-themes-extra alacritty bc maim \
    steam tumbler w3m jdk8-openjdk ffmpegthumbnailer adobe-source-code-pro-fonts \
    awesome-terminal-fonts ttf-bitstream-vera ttf-dejavu ttf-liberation ttf-opensans \
    ttf-iosevka-nerd ttf-ubuntu-font-family ttf-liberation ttf-cascadia-code \
    ttf-fira-code ttf-hack-nerd terminus-font sxiv amd-ucode

# Installs AUR helper.
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

# Installs AUR packages
yay -S --noconfirm --sudoloop --answerclean All --answerdiff None --removemake \
    --mflags "--skipchecksums --skippgpcheck" unityhub gnome-browser-connector-git \
    lf-git sc-im packwiz-git xmrig-cuda tilde xmrig-donateless inxi stagit dosbox-x tmsu \
    mpv-sponsorblock-minimal-git protonup-git gradience papirus-folders xcursor-simp1e \
    gnome-shell-extension-disable-unredirect-git gnome-shell-extension-pop-shell-git \
    gnome-shell-extension-vitals-git mangohud mednaffe gnome-shell-extension-arc-menu \
    gnome-shell-extension-dash-to-panel bottles gnome-shell-extension-appindicator-git \
    gnome-shell-extension-openweather-git gallery-dl bombadillo adw-gtk3 nerd-fonts-go-mono \
    jdk17-temurin nerd-fonts-inconsolata nerd-fonts-jetbrains-mono nerd-fonts-mononoki \
    nerd-fonts-roboto-mono ttf-ms-fonts ttf-vista-fonts ttf-tahoma ttf-segoe-ui-variable

# Removes orphans.
sudo pacman -Rns --noconfirm $(pacman -Qtdq)

# Copies config files.
source ~/enje-installer/configure.sh


