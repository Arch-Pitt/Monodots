#!/bin/bash

DIR_WALLPAPERS="$HOME/Pictures/Wallpapers"
LINK_HYPRLOCK="$HOME/.cache/current_wallpaper"

if [ ! -d "$DIR_WALLPAPERS" ]; then
    echo "Directory not found: $DIR_WALLPAPERS"
    exit 1
fi

ROFI_THEME="
* {
    wbg-color: rgba(0, 0, 0, 0.9);
    w-border-color: rgba(68, 68, 68, 0.3);
    hl-color: #FFFFFFFF;
}

window { 
    width: 70%; 
    height: 45%; 
    anchor: center; 
    location: center; 
    border-radius: 4px; 
    background-color: @wbg-color;
    border: 1px solid;
    border-color: @w-border-color;
    padding: 14px;
}

mainbox {
    background-color: transparent;
    children: [ \"inputbar\", \"listview\" ];
    spacing: 15px;
}

inputbar {
    background-color: transparent;
    text-color: @fg-color;
    children: [ \"prompt\", \"entry\" ];
    padding: 8px;
}

prompt {
    background-color: transparent;
    text-color: @fg-color;
    padding: 0px 8px 0px 0px;
}

entry {
    background-color: transparent;
    text-color: @fg-color;
    placeholder: \"Search wallpapers...\";
    placeholder-color: @fgp-color;
}

listview { 
    columns: 4; 
    lines: 3; 
    spacing: 25px; 
    fixed-columns: true;
    fixed-height: true;
    background-color: transparent;
}

element { 
    orientation: vertical; 
    padding: 5px; 
    border-radius: 2px; 
    background-color: transparent;
}

element selected.normal {
    background-color: @hl-color;
}

element-icon { 
    size: 220px; 
    horizontal-align: 0.5; 
    vertical-align: 0.5;
    background-color: transparent;
}

element-text { 
    enabled: false; 
}
"

CHOICE=$(for img in "$DIR_WALLPAPERS"/*.{jpg,jpeg,png,webp}; do
    [ -e "$img" ] || continue 
    name=$(basename "$img")
    echo -e "${name}\0icon\x1f${img}"
done | rofi -dmenu -i -show-icons -p " " -theme-str "$ROFI_THEME")

if [ -n "$CHOICE" ]; then
    FULL_PATH="$DIR_WALLPAPERS/$CHOICE"
    ln -sf "$FULL_PATH" "$LINK_HYPRLOCK"

    awww img "$FULL_PATH" \
        --transition-fps 144 \
        --transition-type wipe \
        --transition-angle 30 \
        --transition-step 90

    NAME_CLEAN=$(basename "$CHOICE" | cut -d. -f1)
    notify-send "Wallpicker" "[$NAME_CLEAN] was selected" -i "$FULL_PATH"
fi