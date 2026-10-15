#!/usr/bin/env bash

THEME="$HOME/.config/rofi/powermenu-ray/theme.rasi"

lock="󰌾  Bloquear"
suspend="󰤄  Suspender"
logout="󰍃  Salir"
reboot="󰜉  Reiniciar"
shutdown="󰐥  Apagar"

selected=$(printf '%s\n' \
    "$lock" \
    "$suspend" \
    "$logout" \
    "$reboot" \
    "$shutdown" |
    rofi -dmenu \
        -no-custom \
        -theme "$THEME" \
        -p "󰣇  POWER MENU")

case "$selected" in
    "$lock")
        if command -v hyprlock >/dev/null 2>&1; then
            hyprlock
        elif command -v swaylock >/dev/null 2>&1; then
            swaylock
        else
            notify-send "Power Menu" "Instala hyprlock o swaylock."
        fi
        ;;

    "$suspend")
        systemctl suspend
        ;;

    "$logout")
        hyprctl dispatch exit
        ;;

    "$reboot")
        systemctl reboot
        ;;

    "$shutdown")
        systemctl poweroff
        ;;

    *)
        exit 0
        ;;
esac
