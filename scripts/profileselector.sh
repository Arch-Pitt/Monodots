#!/bin/bash

PERFORMANCE=""   
BALANCED=""      
POWERSAVER=""    

ROFI_THEME="
window {
    anchor: center; 
    location: east;
    width: 110px;
    x-offset: 4px;
    border-radius: 16px 0px 0px 16px;
    border: 1px solid;
    padding: 12px;
}

mainbox { children: [ \"listview\" ]; }

listview { 
    lines: 3; 
    spacing: 10px; 
}

element { 
    padding: 25px 0px;
    border-radius: 12px; 
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

CHOICE=$(printf "%s\n%s\n%s" "$PERFORMANCE" "$BALANCED" "$POWERSAVER" | rofi -dmenu -i -theme-str "$ROFI_THEME")

case "$CHOICE" in
    "$PERFORMANCE") powerprofilesctl set performance ;;
    "$BALANCED")    powerprofilesctl set balanced ;;
    "$POWERSAVER")  powerprofilesctl set power-saver ;;
esac