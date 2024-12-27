#!/bin/bash

# Get the window ID of the currently focused window
window_id=$(xprop -root | grep "_NET_ACTIVE_WINDOW(WINDOW)" | awk '{print $5}')

# Get the window geometry
geometry=$(xwininfo -id "$window_id")

x=$(echo "$geometry" | grep "Absolute upper-left X:" | awk '{print $4}')
y=$(echo "$geometry" | grep "Absolute upper-left Y:" | awk '{print $4}')

# Calculate the center of the window
width=$(echo "$geometry" | grep "Width:" | awk '{print $2}')
height=$(echo "$geometry" | grep "Height:" | awk '{print $2}')

center_x=$(echo "$x + $width / 2" | bc)
center_y=$(echo "$y + $height / 2" | bc)

xdotool mousemove "$center_x" "$center_y"
