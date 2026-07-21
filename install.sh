#!/bin/bash

set -e

cat << 'EOF'
  __  __                       _       _       
 |  \/  | ___  _ __   ___   __| | ___ | |_ ___ 
 | |\/| |/ _ \| '_ \ / _ \ / _` |/ _ \| __/ __|
 | |  | | (_) | | | | (_) | (_| | (_) | |_\__ \
 |_|  |_|\___/|_| |_|\___/ \__,_|\___/ \__|___/

EOF

echo "System update"
sudo pacman -Syyuu --noconfirm

cd ~

echo "Installing fonts"
sudo pacman -S --needed --noconfirm \
	ttf-dejavu \
	noto-fonts \
	noto-fonts-emoji \
	ttf-jetbrains-mono-nerd

echo "Installing media codecs"
sudo pacman -S --needed --noconfirm \
	gst-libav \
	gst-plugins-bad \
	gst-plugins-ugly \
	gst-plugins-pipewire \
	ffmpeg \
	gstreamer

echo "Installing Hyprland ecosystem"
sudo pacman -S --needed --noconfirm \
	hyprland \
	kitty \
	fish \
	waybar \
	rofi-wayland \
	awww \
	nwg-look \
	hyprshot \
	hyprlock \
	hypridle \
	hyprsunset \
	swaync \
	xdg-desktop-portal \
	xdg-desktop-portal-hyprland \
	qt5-wayland \
	qt6-wayland \
	wl-clipboard \
	cliphist \
	powerprofilesctl \
	brightnessctl

echo "Installing system utilities"
sudo pacman -S --needed --noconfirm \
	fastfetch \
	vim \
	nano \
	vscodium \
	unzip \
	unrar \
	zip \
	p7zip \
	nemo-fileroller \
	btop \
	gvfs \
	gvfs-mtp \
	gvfs-afc \
	usbutils \
	android-udev \
	cachyos-gaming-meta \
	gamemode \
	networkmanager \
	network-manager-applet \
	pipewire \
	pipewire-audio \
	pipewire-alsa \
	pipewire-pulse \
	wireplumber \
	ufw \
	polkit-gnome \
	sddm \
	wine \
	wine-gecko \
	wine-mono \
	winetricks

echo "Installing applications"
sudo pacman -S --needed --noconfirm \
	firefox \
	pavucontrol \
	mpv \
	nemo \
	file-roller

echo "Creating user directories"
mkdir -p \
	~/Documents \
	~/Downloads \
	~/Music \
	~/Templates \
	~/Videos \
	~/.themes \
	~/.icons \
	~/.config \
	~/.scripts \
	~/Pictures \
	~/Projects

echo "Copying dotfiles to user directories"
if cp -r config/* "$HOME/.config/" && \
	 cp -r themes/* "$HOME/.themes/" && \
	 cp -r icons/* "$HOME/.icons/" && \
	 cp -r scripts/* "$HOME/.scripts/" && \
	 cp -r Wallpapers "$HOME/Pictures/"; then
		echo "Success! All dotfiles were successfully copied."
else
		echo "ERROR: Failed to copy the dotfiles."
fi

echo "Copying SDDM theme and configuration..."
theme="$HOME/Monodots/sddm/monochrome"
themedir="/usr/share/sddm/themes/"

configfile="$HOME/Monodots/sddm/sddm.conf"
configdir="/etc/"

if sudo cp -r "$theme" "$themedir" && sudo cp "$configfile" "$configdir"; then
		echo "Success! Theme and configuration were successfully copied."
else
		echo "ERROR: Failed to copy the files."
fi

echo "Making custom scripts executable..."
cleaner_script="$HOME/.scripts/cleaner.sh"
wallpicker_script="$HOME/.scripts/wallpicker.sh"
logout_script="$HOME/.scripts/logoutmenu.sh"

if sudo chmod +x "$cleaner_script" && sudo chmod +x "$wallpicker_script" && sudo chmod +x "$logout_script"; then
		echo "Success! Scripts are now executable."
else
		echo "ERROR: Failed to make the scripts executable."
fi

echo "Enabling services"
sudo systemctl enable NetworkManager
sudo systemctl start NetworkManager

sudo systemctl enable ufw
sudo systemctl start ufw

sudo systemctl enable sddm

systemctl --user daemon-reexec

echo "Dependencies are installed. Please follow the post-installation steps to complete the setup"