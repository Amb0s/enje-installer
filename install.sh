#!/bin/bash

# Installs distribution packages
pacman -S --noconfirm --needed base-devel git ufw neofetch firefox \
    torbrowser-launcher firefox torbrowser-launcher cmus mpv transmission-gtk \
    thunar thunar-archive-plugin neovim pacman-contrib aegisub obs-studio blender \
    gimp inkscape btop weechat profanity qtox keepassxc monero-gui veracrypt gamemode \
    reflector newsboat yt-dlp jdk8-openjdk intellij-idea-community-edition exa mednafen
    bleachbit python-pywal tmux gnome-themes-extra bc adw-gtk3 lm_sensors scrot maim \
    steam sxiv tumbler ffmpegthumbnailer adobe-source-code-pro-fonts \
    awesome-terminal-fonts ttf-bitstream-vera ttf-dejavu ttf-liberation ttf-opensans \
    ttf-iosevka-nerd ttf-ubuntu-font-family ttf-liberation terminus-font ttf-cascadia-code

# Add jp_JP to LOCALES

# Installs yay (AUR helper)
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

# Installs AUR packages
yay -S gnome-browser-connector lf mangohud mednaffe packwiz-git bottles xmrig-cuda \
    xmrig-donateless inxi dosbox-x tmsu-git papirus-folders xcursor-simp1e \
    mpv-sponsorblock-minimal-git protonup-git gradience adw-gtk3 tilde unityhub \
    gnome-shell-extension-vitals gnome-shell-extension-arc-menu \
    gnome-shell-extension-dash-to-panel gnome-shell-extension-appindicator-git \
    gnome-shell-extension-openweather nerd-fonts-fira-code nerd-fonts-go-mono \
    nerd-fonts-hack nerd-fonts-inconsolata nerd-fonts-jetbrains-mono nerd-fonts-mononoki \
    nerd-fonts-roboto-mono ttf-ms-fonts ttf-vista-fonts ttf-tahoma ttf-segoe-ui-variable

# fc-cache -fsv

# Copies config files
source ~/enje-installer/configure.sh

# Remove useless distribution packages
pacman -Rns --noconfirm baobab cheese eog epiphany gedit gnome-boxes gnome-backgrounds \
    gnome-calculator gnome-contacts gnome-logs gnome-maps gnome-music gnome-photos \
    gnome-remote-desktop gnome-software gnome-software-packagekit-plugin \
    gnome-system-monitor gnome-weather simple-scan malcontent orca vino totem vim htop

# Remove orphans
pacman -Rns --noconfirm $(pacman -Qtdq)

# Exit message
printf "\x1b[31mYou can now reboot! See you again, have a nice day!\x1b[0m\n"
