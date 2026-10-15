#!/usr/bin/env bash

# R3TR0 - Keyboard Language OSD

# Cambiar distribución de teclado
hyprctl switchxkblayout all next >/dev/null

# Obtener distribución activa
layout=$(hyprctl devices -j | python3 -c '
import json,sys
data=json.load(sys.stdin)
keyboards=data.get("keyboards",[])
main=next((k for k in keyboards if k.get("main")), keyboards[0] if keyboards else {})
print(main.get("active_keymap",""))
')

# Identificar idioma
case "$layout" in
    *English*|*US*)
        label="US"
        ;;
    *Spanish*|*Latin*|*Latam*)
        label="EC"
        ;;
    *)
        label="EC"
        ;;
esac

# Cerrar indicador anterior
pkill -f '^yad --title=Keyboard-OSD' 2>/dev/null || true

# Tema oscuro para el indicador
export GTK_THEME=R3tr0-OSD

# Mostrar indicador durante un segundo
yad \
    --title=Keyboard-OSD \
    --text="<span font='bold 30' foreground='#b49aff'>$label</span>" \
    --text-align=center \
    --width=180 \
    --height=95 \
    --timeout=1 \
    --no-buttons \
    --undecorated \
    --skip-taskbar \
    --on-top \
    --fixed \
    >/dev/null 2>&1 &
