#!/usr/bin/env bash

selected=$(cliphist list | rofi -dmenu \
    -i \
    -no-custom \
    -display-columns 2 \
    -p "󰅌 Portapapeles" \
    -theme "$HOME/.config/rofi/clipboard.rasi")

if [[ -n "$selected" ]]; then
    printf '%s\n' "$selected" | cliphist decode | wl-copy
fi
