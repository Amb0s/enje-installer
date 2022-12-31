#!/bin/bash

# Removes useless distribution packages.
sudo pacman -Rns --noconfirm baobab cheese eog epiphany gnome-backgrounds \
    gnome-calculator gnome-contacts gnome-logs gnome-maps gnome-music gnome-photos \
    gnome-remote-desktop nautilus gnome-text-editor gnome-software gnome-console \
    gnome-system-monitor gnome-weather simple-scan malcontent orca totem vim htop

# Installs distribution packages.
sudo pacman -S --noconfirm --needed base-devel gnome-terminal ufw neofetch \
    torbrowser-launcher cmus milkytracker mat2 discord mpv hugo transmission-gtk \
    thunar thunar-archive-plugin neovim pacman-contrib aegisub obs-studio blender \
    gimp inkscape btop weechat profanity qtox keepassxc monero-gui veracrypt gamemode \
    reflector newsboat ueberzug aerc yt-dlp intellij-idea-community-edition mednafen \
    bleachbit fwupd man-db man-pages shotcut python-pywal tmux gnome-themes-extra bc \
    steam tumbler lynx jdk8-openjdk ffmpegthumbnailer adobe-source-code-pro-fonts \
    awesome-terminal-fonts ttf-bitstream-vera ttf-dejavu ttf-liberation ttf-opensans \
    docker ttf-iosevka-nerd ttf-ubuntu-font-family ttf-liberation ttf-cascadia-code \
    ttf-fira-code ttf-hack-nerd terminus-font task sxiv amd-ucode nvidia-dkms #gamescope

# Installs AUR helper.
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

# Installs AUR packages
yay -S --noconfirm --sudoloop --answerclean All --answerdiff None --removemake \
    --mflags "--skipchecksums --skippgpcheck" librewolf-bin unityhub gnome-browser-connector-git \
    lf-git sc-im packwiz-git xmrig-cuda tilde xmrig-donateless stagit dosbox-x tmsu \
    mpv-sponsorblock-minimal-git protonup-git gradience papirus-folders xcursor-simp1e \
    gnome-shell-extension-disable-unredirect-git gnome-shell-extension-simply-workspaces-git \
    gnome-shell-extension-vitals-git mangohud mednaffe gnome-shell-extension-arc-menu \
    gnome-shell-extension-dash-to-panel bottles gnome-shell-extension-appindicator-git \
    gnome-shell-extension-openweather-git gallery-dl bombadillo adw-gtk3 nerd-fonts-go-mono \
    jdk17-temurin nerd-fonts-inconsolata nerd-fonts-jetbrains-mono nerd-fonts-mononoki \
    nerd-fonts-roboto-mono ttf-ms-fonts ttf-vista-fonts ttf-tahoma ttf-segoe-ui-variable \
    inxi-git vopono pyload-ng gnome-shell-extension-rounded-window-corners-git tenacity-git

# Removes orphans.
sudo pacman -Rns --noconfirm $(pacman -Qtdq)

# Copies config files.
source ~/enje-installer/configure.sh


