#!/bin/bash
cp ~/.cache/wal/gtk32 ~/.local/share/themes/FlatColor/gtk-3.20/gtk.css
cp ~/.cache/wal/gtk3 ~/.local/share/themes/FlatColor/gtk-3.0/gtk.css
cp ~/.cache/wal/gtk2 ~/.local/share/themes/FlatColor/gtk-2.0/gtkrc

# scuffed icon theme change...
rm -rf ~/.local/share/icons/flattrcolor

cp ~/.cache/wal/icon_replace_script.sh ~/.local/share/icons/flattrcolor.base/scripts/replace_folder_file.sh
cp -r ~/.local/share/icons/flattrcolor.base/ ~/.local/share/icons/flattrcolor/

sh ~/.local/share/icons/flattrcolor/scripts/replace_script.sh

cp ~/.cache/wal/pywal-colors.ini ~/.config/spicetify/Themes/Pywal/color.ini

command -v spicetify >/dev/null 2>&1 && { spicetify apply -n; }

# alacritty
cp ~/.cache/wal/colors-alacritty.yml ~/.config/alacritty/colors-alacritty.yml

# dunst
cp ~/.cache/wal/dunstrc.base ~/.config/dunst/dunstrc
killall dunst
dunst -config ~/.config/dunst/dunstrc &
