# Monodots
Personal dotfiles for a simple and monochrome Hyprland setup.

## Installation
> ⚠️ This setup is intended for **Arch Linux or Arch-based distributions only**

**For the best experience, i highly recommend installing CachyOS without a desktop environment or Arch linux with archinstall script. This configurations includes some essential packages required to get started.**

Install dependencies:

```bash
sudo pacman -S --needed git base-devel
```

Clone the repository:

```bash
git clone https://github.com/Arch-Pitt/Monodots.git
cd Monodots
```

Make the installer executable and run it:

```bash
chmod +x install.sh
./install.sh
```

And finally, reboot the system:

   ```bash
   sudo reboot
   ```


## Features
* Preconfigured **Kitty**, **Waybar**, **Rofi** and **Swaync**
* **Fish shell** for a faster terminal
* Lockscreen with **Hyprlock**
* Basic firewall and networking setup with **UFW** and **networkmanager**
* **CachyOS Gaming Meta** and **Gamemode** for seamless gaming compatibility and required libraries.
* Custom scripts like **Cleaner** and **Wallpicker**
* **Orchis Grey Dark** GTK theme and **Papirus** icon theme for minimal UI*

## Preview
![Desktop](/previews/desktop.png)
![Rofi](/previews/rofi.png)
![Wallpicker](/previews/wallpicker.png)
![Power menu](/previews/powermenu.png)
![Swaync](/previews/swaync.png)
![Terminal](/previews/terminal.png)
![GTK](/previews/gtktheme.png)

## What the install script does

### System update
* Updates all system packages using `pacman`

### Fonts
Installs:
* ttf-dejavu
* noto-fonts
* noto-fonts-emoji
* ttf-jetbrains-mono-nerd

### Media support
Installs:
* gst-libav
* gst-plugins-bad
* gst-plugins-ugly
* gst-plugins-pipewire
* ffmpeg
* gstreamer

### Hyprland ecosystem
Installs:
* hyprland
* kitty
* fish
* waybar
* rofi-wayland
* awww
* nwg-look
* hyprshot
* hypridle
* hyprsunset
* hyprlock
* swaync

### Portals
Installs:
* xdg-desktop-portal
* xdg-desktop-portal-hyprland

### System utilities
Installs:
* fastfetch
* vim
* nano
* unzip / zip / unrar / p7zip
* nemo
* btop
* gvfs
* gvfs-mtp
* gvfs-afc
* pipewire
* pipewire-audio
* pipewire-alsa
* pipewire-pulse
* wireplumber
* usbutils
* android-udev
* gamemode
* cachyos-gaming-meta
* sddm
* powerprofilesctl

### Network and system
Installs and enables:
* networkmanager
* ufw
* polkit-gnome

### Applications
Installs:
* firefox
* pavucontrol
* file-roller
* nemo-fileroller
* mpv
* vscodium

### Wine support
Installs:
* wine
* wine-gecko
* wine-mono
* winetricks

### User directories
Creates:

```
~/Documents
~/Downloads
~/Games
~/Music
~/Public
~/Templates
~/Videos
~/.themes
~/.script
~/.config
```

### Services
Enables:
* NetworkManager
* ufw
* sddm

---

## Keybindings
> Main modifier: `SUPER` (Windows key)

### General
| Key | Action |
|-----|--------|
| SUPER + Q | Open terminal |
| SUPER + E | Open file manager |
| SUPER + R | Open app launcher |
| SUPER + C | Close active window |
| SUPER + V | Toggle floating |
| SUPER + F | Fullscreen |
| SUPER + L | Lockscreen |
| SUPER + P | Power menu |
| SUPER + N | Notification center |
| SUPER + H | Toggle waybar |
| SUPER + SHIFT + W | Wallpicker |
| SUPER + SHIFT + S | Screenshot (region) |
| SUPER + SHIFT + P | Screenshot (output) |
| SUPER + F1 | Toggle mute |
| SUPER + F2 | Increase volume by 5% |
| SUPER + F3 | Decrease volume by 5% |
| SUPER + F11 | Increase brightness by 5% |
| SUPER + F12 | Decrease brightness by 5% |

---

### Window Management
| Key | Action |
|-----|--------|
| SUPER + ←/→/↑/↓ | Move focus |
| SUPER + SHIFT + ←/→/↑/↓ | Move window |
| SUPER + J | Toggle split layout |

---

### Workspaces
| Key | Action |
|-----|--------|
| SUPER + 1-0 | Switch workspace |
| SUPER + SHIFT + 1-0 | Move window to workspace |

---

## Notes
* This setup assumes a **simple Arch installation**, so some things may be missing, such as GPU drivers
* Feel free to modify the script to fit your needs
