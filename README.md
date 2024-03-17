# Fedora linux Setup

Script ini akan menginstall semua package Fedora Linux saya

## Package Yang diinstall

- LAMPP Stack (Apache,MariaDB,PhpMyAdmin,PHP)
- Node JS & Composer
- Fish Shell

Cara Install :

```bash
chmod +x install.sh
./install.sh
```

## Gnome Setup (Optional)

- Extension : Blur My Shell,Dash To Dock
- Adwaita Gtk 3 (Source : https://github.com/lassekongo83/adw-gtk3)
- Fonts (San Fransisco,Jetbrains Mono,Mono Lisa)
- I3 WM like Shortcut :

```bash
 for i in {1..9}; do
  gsettings set "org.gnome.shell.keybindings" "switch-to-application-${i}" "[]"
  gsettings set "org.gnome.desktop.wm.keybindings" "switch-to-workspace-${i}" "['<Super>${i}']"
  gsettings set "org.gnome.desktop.wm.keybindings" "move-to-workspace-${i}" "['<Super><Shift>${i}']"
  gsettings set "org.gnome.shell.extensions.dash-to-dock" "app-hotkey-${i}" "[]"
done
```

Atau jalankan langsung scriptnya :

```bash
chmod +x gnome-setup.sh
./gnome-setup.sh
```

Cara Improve Fonts Rendering :

```bash
sudo echo 'FREETYPE_PROPERTIES="cff:no-stem-darkening=0 autofitter:no-stem-darkening=0"' > /etc/environment

```

## Other Packages (Optional)

```bash
flatpak install discord spotify dbeaver io.github.shiftey.Desktop
```
