#!/bin/bash

POWEROFF=""
REBOOT=""
LOCK=""
LOGOUT=""

ROFI_THEME="
window {
    anchor: center; 
    location: center;
    width: 500px;
    border-radius: 12px;
    border: 1px solid;
    padding: 12px;
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
    padding: 20px 0px;
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
    font: \"JetBrainsMono Nerd Font Propo 28\"; 
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