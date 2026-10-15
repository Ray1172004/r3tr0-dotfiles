#!/usr/bin/env bash

command -v playerctl >/dev/null || exit 0

while IFS= read -r player; do
    status=$(playerctl -p "$player" status 2>/dev/null)

    [[ "$status" == "Playing" ]] || continue

    title=$(playerctl -p "$player" metadata title 2>/dev/null)
    artist=$(playerctl -p "$player" metadata artist 2>/dev/null)

    [[ -n "$title" ]] || continue

    # Evitar caracteres de marcado en Hyprlock
    title=${title//&/&amp;}
    title=${title//</&lt;}
    title=${title//>/&gt;}

    artist=${artist//&/&amp;}
    artist=${artist//</&lt;}
    artist=${artist//>/&gt;}

    if [[ -n "$artist" ]]; then
        printf '♫  %.28s - %.40s\n' "$artist" "$title"
    else
        printf '♫  %.55s\n' "$title"
    fi

    exit 0
done < <(playerctl -l 2>/dev/null)

exit 0
