#!/bin/bash
# Verifica si Waybar ya está en ejecución
if ! pgrep -x "waybar" > /dev/null
then
    waybar & disown
fi
