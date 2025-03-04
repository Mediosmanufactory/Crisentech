#!/bin/bash

# Ścieżki
factorio_path="/home/Bartek/Factorio/factorio"
mods_folder="$factorio_path/mods"
curr_path="$(pwd)"


# Modname
mods=("crisentech" "crisentech-assets")

for modname in "${mods[@]}"; do
    link="$mods_folder/$modname"
    src="$curr_path/$modname"

    if [ ! -e "$link" ]; then
        ln -s "$src" "$link"
        echo "Symlink for $modname has been created."
    else
        echo "Symlink for $modname already exists."
    fi
done