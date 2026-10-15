
#!/usr/bin/env bash

# ==========================================
# R3TR0 - CONTROL CENTER
# Arch Linux + Hyprland
# ==========================================

THEME="$HOME/.config/rofi/control-center/theme.rasi"

menu() {
    rofi -dmenu -i -no-custom \
        -theme "$THEME" -p "$1"
}

# ==========================================
# WIFI
# ==========================================

wifi_menu() {
    local option
    option=$(printf '%s\n' \
        "󰖩  Buscar redes Wi-Fi" \
        "󰤭  Activar / desactivar Wi-Fi" \
        "󰑓  Actualizar redes" |
        menu "󰖩 Wi-Fi")

    case "$option" in
        *"Buscar redes Wi-Fi"*)
            network_list
            ;;
        *"Activar / desactivar Wi-Fi"*)
            if [[ $(nmcli radio wifi) == "enabled" ]]; then
                nmcli radio wifi off
            else
                nmcli radio wifi on
            fi
            ;;
        *"Actualizar redes"*)
            nmcli device wifi rescan
            network_list
            ;;
    esac
}

network_list() {
    local ssid

    ssid=$(nmcli -t -f SSID device wifi list |
        sed 's/\\:/:/g' |
        sed '/^$/d' |
        sort -u |
        menu "Redes Wi-Fi")

    [[ -n "$ssid" ]] || return

    if ! nmcli connection up id "$ssid" 2>/dev/null; then
        kitty -e sh -c \
            'nmcli --ask device wifi connect "$1"; printf "\nPresiona Enter..."; read x' \
            sh "$ssid"
    fi
}

# ==========================================
# BLUETOOTH
# ==========================================

bluetooth_menu() {
    local option

    option=$(printf '%s\n' \
        "󰂯  Abrir dispositivos" \
        "󰂲  Activar / desactivar Bluetooth" |
        menu "󰂯 Bluetooth")

    case "$option" in
        *"Abrir dispositivos"*)
            blueman-manager &
            ;;
        *"Activar / desactivar Bluetooth"*)
            if bluetoothctl show | grep -q "Powered: yes"; then
                bluetoothctl power off
            else
                bluetoothctl power on
            fi
            ;;
    esac
}

# ==========================================
# VOLUMEN
# ==========================================

volume_menu() {
    local option

    option=$(printf '%s\n' \
        "󰝝  Subir volumen +5%" \
        "󰝞  Bajar volumen -5%" \
        "󰝟  Silenciar / activar" \
        "󰕾  Control avanzado de audio" |
        menu "󰕾 Volumen")

    case "$option" in
        *"Subir volumen"*)
            swayosd-client --output-volume +5
            ;;
        *"Bajar volumen"*)
            swayosd-client --output-volume -5
            ;;
        *"Silenciar"*)
            swayosd-client --output-volume mute-toggle
            ;;
        *"Control avanzado"*)
            pavucontrol &
            ;;
    esac
}

# ==========================================
# NIGHT LIGHT - HYPRSUNSET
# ==========================================

night_light_menu() {
    local option

    option=$(printf '%s\n' \
        "󰖨  Automático (según horario)" \
        "󰖔  Desactivar Night Light" \
        "󰖚  Suave - 5000K" \
        "󰖚  Medio - 4000K" \
        "󰖚  Intenso - 3500K" |
        menu "󰖔 Night Light")

    case "$option" in
        *"Automático"*)
            hyprctl hyprsunset reset
            ;;
        *"Desactivar"*)
            hyprctl hyprsunset identity
            ;;
        *"5000K"*)
            hyprctl hyprsunset temperature 5000
            ;;
        *"4000K"*)
            hyprctl hyprsunset temperature 4000
            ;;
        *"3500K"*)
            hyprctl hyprsunset temperature 3500
            ;;
    esac
}

# ==========================================
# MENU PRINCIPAL
# ==========================================

main_menu() {
    local option

    option=$(printf '%s\n' \
        "󰖩  Wi-Fi" \
        "󰂯  Bluetooth" \
        "󰕾  Volumen" \
        "󰖔  Night Light" |
        menu "󰣇 CONTROL CENTER")

    case "$option" in
        *"Wi-Fi"*)
            wifi_menu
            ;;
        *"Bluetooth"*)
            bluetooth_menu
            ;;
        *"Volumen"*)
            volume_menu
            ;;
        *"Night Light"*)
            night_light_menu
            ;;
    esac
}

main_menu

