sudo dnf install adw-gtk3-theme -y

gsettings set org.gnome.desktop.interface gtk-theme 'adw-gtk3-dark' && gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'

for i in {1..9}; do
  gsettings set "org.gnome.shell.keybindings" "switch-to-application-${i}" "[]"
  gsettings set "org.gnome.desktop.wm.keybindings" "switch-to-workspace-${i}" "['<Super>${i}']"
  gsettings set "org.gnome.desktop.wm.keybindings" "move-to-workspace-${i}" "['<Super><Shift>${i}']"
  gsettings set "org.gnome.shell.extensions.dash-to-dock" "app-hotkey-${i}" "[]"
done

git clone https://github.com/sahibjotsaggu/San-Francisco-Pro-Fonts.git
git clone https://github.com/cancng/fonts.git
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.1/JetBrainsMono.zip
wget https://download.jetbrains.com/fonts/JetBrainsMono-2.304.zip

wget https://code.visualstudio.com/docs/?dv=linux64_rpm
