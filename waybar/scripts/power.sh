#!/bin/bash

options="⏻ Desligar\n Reiniciar"

chosen=$(echo -e "$options" | rofi -dmenu -i -p "Sistema")

case "$chosen" in
    *Desligar)
        systemctl poweroff
        ;;
    *Reiniciar)
        systemctl reboot
        ;;
esac
