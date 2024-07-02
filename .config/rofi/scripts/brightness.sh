#!/bin/bash

# options do be displayed
theme="~/.config/rofi/themes/default.rasi"
option0="two %"
option1="twenty %"
option2="forty %"
option3="sixty %"
option4="eighty %"
option5="hundred %"

# get number of monitors
num_monitors=$(wayland-info | grep -c "interface: 'wl_output'")
[ $num_monitors -gt 0 ] || [ exit 1 ]

# options passed to variable
options="$option0\n$option1\n$option2\n$option3\n$option4\n$option5"

selected="$(echo -e "$options" | rofi -lines 5 -dmenu -theme $theme -p "brightness")"
case $selected in
    $option0)
        # Set brightness to 20% for all monitors
        for (( display=1; display<=$num_monitors; display++ )); do
            ddcutil setvcp 10 2 --display $display
        done
        ;;
    $option1)
        # Set brightness to 20% for all monitors
        for (( display=1; display<=$num_monitors; display++ )); do
            ddcutil setvcp 10 20 --display $display
        done
        ;;
    $option2)
        # Set brightness to 40% for all monitors
        for (( display=1; display<=$num_monitors; display++ )); do
            ddcutil setvcp 10 40 --display $display
        done
        ;;
    $option3)
        # Set brightness to 60% for all monitors
        for (( display=1; display<=$num_monitors; display++ )); do
            ddcutil setvcp 10 60 --display $display
        done
        ;;
    $option4)
        # Set brightness to 80% for all monitors
        for (( display=1; display<=$num_monitors; display++ )); do
            ddcutil setvcp 10 80 --display $display
        done
        ;;
    $option5)
        # Set brightness to 100% for all monitors
        for (( display=1; display<=$num_monitors; display++ )); do
            ddcutil setvcp 10 100 --display $display
        done
        ;;
esac
