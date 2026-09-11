#!/bin/bash

POWEROFF="⏻"
REBOOT=""
LOCK=""
LOGOUT=""

ROFI_THEME="
window {
    anchor: center; 
    location: east;
    width: 110px;
    x-offset: 4px;
    border-radius: 8px 0px 0px 8px;
    border: 1px solid;
    padding: 12px;
}

mainbox { children: [ \"listview\" ]; }

listview { 
    lines: 4; 
    spacing: 10px; 
}

element { 
    padding: 25px 0px;
    border-radius: 6px; 
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