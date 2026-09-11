#!/bin/bash

PERFORMANCE=""   
BALANCED=""      
POWERSAVER=""    

ROFI_THEME="
window {
    anchor: center; 
    location: south;
    width: 500px;
    y-offset: 4px;
    border-radius: 8px 8px 0px 0px;
    border: 1px solid;
    padding: 12px;
}

mainbox { children: [ \"listview\" ]; }

listview { 
    columns: 3;
    lines: 1; 
    spacing: 10px; 
}

element { 
    padding: 15px 0px;
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

CHOICE=$(printf "%s\n%s\n%s" "$PERFORMANCE" "$BALANCED" "$POWERSAVER" | rofi -dmenu -i -theme-str "$ROFI_THEME")

case "$CHOICE" in
    "$PERFORMANCE") powerprofilesctl set performance && notify-send "Performance" "Power profile mode set to Performance" ;;
    "$BALANCED")    powerprofilesctl set balanced && notify-send "Balanced" "Power profile mode set to Balanced";;
    "$POWERSAVER")  powerprofilesctl set power-saver && notify-send "Power Saver" "Power profile mode set to Power saver";;
esac