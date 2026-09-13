#!/bin/bash

POWEROFF="⏻"
REBOOT=""
LOCK=""
LOGOUT=""

ROFI_THEME="
window {
    anchor: center; 
    location: center;
    width: 500px;
    border-radius: 4px;
    border: 1px solid;
    padding: 12px;
}

mainbox { children: [ \"listview\" ]; }

listview { 
    columns: 4;
    lines: 1; 
    spacing: 10px; 
}

element { 
    padding: 15px 0px;
    border-radius: 4px; 
    text-color: #FFFFFFFF;
    children: [ \"element-text\" ]; 
}

element selected.normal {
    background-color: #FFFFFFFF;
    text-color: #000000FF;
}

element-text { 
    text-color: inherit;
    font: \"JetBrainsMono Nerd Font Propo 24\"; 
    horizontal-align: 0.5; 
    vertical-align: 0.5;
}
"

CHOICE=$(printf "%s\n%s\n%s\n%s" "$POWEROFF" "$REBOOT" "$LOCK" "$LOGOUT" | rofi -dmenu -i -theme-str "$ROFI_THEME")

case "$CHOICE" in
    "$POWEROFF") systemctl poweroff ;;
    "$REBOOT")   systemctl reboot ;;
    "$LOCK")     hyprlock ;;
    "$LOGOUT")   killall Hyprland ;;
esac