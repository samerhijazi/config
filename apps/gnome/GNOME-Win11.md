Source: https://www.youtube.com/watch?v=Cy4Zo9-Tn-c&t=497s
Source: https://www.pling.com/p/1670979/

sudo apt install ubuntu-restricted-extras

# Install dconf:
sudo dnf install dconf
dconf dump / > gnome-shell-backup   ### Back dconf
dconf load / < gnome-shell-backup   ### Restore deconf

### GTK Base:
sudo dnf install gnome-themes-extra gtk-murrine-engine sassc optipng inkscape libglib2.0-dev-bin 
sudo apt install gnome-themes-extra gtk-murrine-engine sassc optipng inkscape libglib2.0-dev-bin 

### FLUENT GTK THEME:
git clone https://github.com/vinceliuice/Fluent-gtk-theme.git
./install.sh -n -t default -c light -s compact -i fedora --tweaks solid round square

### Mojave GTK THEME:
git clone https://github.com/vinceliuice/Mojave-gtk-theme.git
./install.sh

### FLUENT ICON THEME:
git clone https://github.com/vinceliuice/Fluent-icon-theme.git
./install.sh -a -r

### WIN11 ICON THEME
git clone https://github.com/yeyushengfan258/Win11-icon-theme.git
./install.sh -blue

### FONTS:
wget https://raw.githubusercontent.com/mrbvrz/segoe-ui-linux/master/install.sh
chmod +x install.sh
./install.sh

### APPLY GTK THEME, ICON, CURSORS, FONTS AND CHANGE WALLPAPERS
Enable User theme extensions
Theme : Fluent-light-compact
Cursors : Fluent-cursors
Icons : Win11-Blue
Shell : Fluent-light-compact
Fonts : Segoe UI Regular:10

### FLATPAK SUPPORT THEME:
sudo dnf install ostree libappstream-glib

### Automatically install your host GTK+ theme as a Flatpak.
git clone https://github.com/refi64/stylepak.git
cd stylepak
./stylepak install-system #whole system
./stylepak install-user   #only for users
./stylepak clear-cache    #to clear the theme storage cache.

### CURSORS THEME:
git clone https://github.com/vinceliuice/Fluent-icon-theme.git
./cursors/install.sh

### WALLPAPER:
git clone -b Wallpaper https://github.com/vinceliuice/Fluent-gtk-theme.git
./install-wallpapers.sh
sudo ./install-gnome-backgrounds.sh

# Install gnome extension integration
sudo dnf install chrome-gnome-shell

### GNOME Extensions:
user themes
https://extensions.gnome.org/extension/1160/dash-to-panel/
https://extensions.gnome.org/extension/3628/arcmenu/
https://extensions.gnome.org/extension/4655/date-menu-formatter/    ### kk:mm\n EEEE\ndd.MM.yyy  '[KW-'ww']'
https://extensions.gnome.org/extension/1319/gsconnect/
https://extensions.gnome.org/extension/4470/media-controls/
https://extensions.gnome.org/extension/3193/blur-my-shell/

### Fix GNOME lock screen:
sudo systemctl disable lightdm.service 
sudo systemctl enable gdm.service 
reboot

### FIREFOX CUSTOM
https://github.com/vinceliuice/Fluent-gtk-theme/tree/master/src/firefox
