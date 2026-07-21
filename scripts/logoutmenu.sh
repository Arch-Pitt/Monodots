#!/bin/bash

POWEROFF=""
REBOOT=""
LOCK=""
LOGOUT=""

ROFI_THEME="
window { 
    width: 600px;
    border-radius: 4px; 
    background-color: rgba(0, 0, 0, 0.9);
    border: 1px solid;
    border-color: rgba(68, 68, 68, 0.3);
    padding: 30px;
}

mainbox {
    background-color: transparent;
    children: [ \"listview\" ];
}

listview { 
    columns: 4; 
    lines: 1; 
    spacing: 10px; 
    fixed-columns: true;
    fixed-height: true;
    background-color: transparent;
}

element { 
    orientation: horizontal;
    padding: 25px 0px;
    border-radius: 4px; 
    background-color: transparent;
    text-color: #FFFFFFFF;
    children: [ \"element-text\" ]; 
}

element selected.normal {
    background-color: #FFFFFFFF;
    text-color: #000000FF;
}

element-text { 
    background-color: transparent;
    text-color: inherit;
    font: \"JetBrainsMono Nerd Font Propo 32\"; 
    horizontal-align: 0.5; 
    vertical-align: 0.5;
}
"

CHOICE=$(printf "%s\n%s\n%s\n%s" "$POWEROFF" "$REBOOT" "$LOCK" "$LOGOUT" | rofi -dmenu -i -theme-str "$ROFI_THEME")

case "$CHOICE" in
    "$POWEROFF")
        systemctl poweroff
        ;;
    "$REBOOT")
        systemctl reboot
        ;;
    "$LOCK")
        hyprlock
        ;;
    "$LOGOUT")
        killall Hyprland
        ;;
esac