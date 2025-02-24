#!/usr/bin/env bash

wallpaper_path="$HOME/Pictures/wallpapers"
wallpapers_folder="$HOME/Pictures/wallpapers/others"

current_wallpaper=$(readlink "$wallpaper_path/wallpaper" 2> /dev/null)
current_wallpaper_name="$(basename "$current_wallpaper")"

# Création de la liste de wallpapers avec find
wallpaper_list=($(find -L "$wallpapers_folder" -maxdepth 3 -type f 2>/dev/null))
wallpaper_count=${#wallpaper_list[@]}

# Vérification qu'on a trouvé au moins un wallpaper
if [ $wallpaper_count -eq 0 ]; then
    echo "Aucun wallpaper trouvé"
    exit 1
fi

while true; do
    selected_wallpaper="${wallpaper_list[RANDOM % wallpaper_count]}"
    selected_wallpaper_name="$(basename "$selected_wallpaper")"

    if [[ "$selected_wallpaper_name" != "$current_wallpaper_name" ]]; then
        break
    fi
done

ln -sf "$selected_wallpaper" "$wallpaper_path/wallpaper"
wall-change "$wallpaper_path/wallpaper" &
