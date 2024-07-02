#!/bin/bash

# options do be displayed
theme="~/.config/rofi/themes/default.rasi"
option0="shutdown"
option1="reboot"
option2="suspend"
option3="logout"
option4="lock"

# options passed to variable
options="$option0\n$option1\n$option2\n$option3\n$option4"

selected="$(echo -e "$options" | rofi -lines 5 -dmenu -theme $theme -p "Power menu")"
case $selected in
    $option0)
      systemctl poweroff
        ;;
    $option1)
      systemctl reboot
        ;;
    $option2)
      systemctl suspend
        ;;
    $option3)
      hyprctl dispatch exit
        ;;
    $option4)
      pidof hyprlock || hyprlock
        ;;
esac
