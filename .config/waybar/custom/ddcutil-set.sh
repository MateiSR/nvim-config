#!/bin/bash

if [ $# -ne 2 ]; then
    echo "Usage: $0 <UP/DN> <increment>"
    exit 1
fi

num_monitors=$(wayland-info | grep -c "interface: 'wl_output'")
echo $1
# get current brightness
output=$(ddcutil -t getvcp 10 2>/dev/null)
if [ $? -ne 0 ]; then
    exit 1
fi

trimmed=${output#* * * }
brightness=${trimmed%% *}
echo $brightness

if [ $1 = "UP" ]; then
    increment=$2
    if [ $brightness -ge 100 ]; then
        exit 1
    fi
    # increment
    ((brightness += increment))
    if [ $brightness -gt 100 ]; then
        brightness=100
    fi
elif [ $1 = "DN" ]; then
    increment=$2
    if [ $brightness -le 0 ]; then
        exit 1
    fi
    # decrement
    ((brightness -= increment))
    if [ $brightness -lt 0 ]; then
        brightness=0
    fi
fi

if [ -f /tmp/waybar_ddcutil_executing ]; then
    if [ $(cat /tmp/waybar_ddcutil_executing) -eq 1 ]; then
        exit 1
    fi 
fi

echo 1 > /tmp/waybar_ddcutil_executing


for (( display=1; display<=$num_monitors; display++ )); do
  ddcutil --noverify --sleep-multiplier .02 setvcp 10 $brightness --display $display
done

echo 0 > /tmp/waybar_ddcutil_executing
