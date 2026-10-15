# Notas de instalación (español)

[English](SETUP.md) · [Español](INSTALACION.md)

> **Beta:** Los archivos de configuración ya están publicados, pero aún no se han probado en una instalación limpia de Arch Linux. Esta es una guía para **revisar e instalar manualmente por componentes**, no un instalador automático verificado.

## Dependencias

Base: Arch Linux, una versión de Hyprland que admita la API Lua usada en `.config/hypr/hyprland.lua`, Waybar, Rofi, Kitty, Hyprlock, Hypridle, Hyprpaper, Hyprsunset, SwayNC, SwayOSD, Satty y Fastfetch.

Los scripts también utilizan `nmcli` (NetworkManager), `bluetoothctl`, `blueman-manager`, `pavucontrol`, `swayosd-client`, `playerctl`, `wl-clipboard`, `cliphist`, `python3` y otras herramientas. Revisa los scripts para identificar dependencias. Se recomienda una Nerd Font (Hyprlock referencia JetBrainsMono Nerd Font).

## Descargar y revisar

```bash
git clone https://github.com/Ray1172004/r3tr0-dotfiles.git
cd r3tr0-dotfiles
find .config -type f | sort
```

Antes de copiar **cualquier archivo**, respalda tu `~/.config`. Revisa los scripts e incorpora **cada componente por separado**, sin sobrescribir toda la configuración.

## Adaptar a tu equipo

1. Sustituye `/home/YOUR_USER/` en las configuraciones de Hyprpaper, Hyprlock y Waybar.
2. Coloca tus wallpapers y actualiza sus rutas en `hyprpaper.conf` y `hyprlock.conf`.
3. El selector de fondos busca `~/Pictures/Wallpappers/wallpapers`. Si tu directorio es distinto, modifica `.config/rofi/wallpaper/wallpaper_picker.py`.
4. Comprueba monitores, aplicaciones predeterminadas y distribución de teclado.
5. Verifica que tu versión de Hyprland sea compatible con **Lua** y las reglas utilizadas; no confundas esta sintaxis con hyprlang.
6. Configura por separado las fuentes, iconos, temas Rofi externos y SDDM.

## Verificar

Tras copiar componentes de forma selectiva, revisa scripts Bash con `bash -n`, Python con `python -m py_compile` y Lua con `luac -p`. Que la sintaxis sea válida no garantiza compatibilidad en ejecución.

## Privacidad y licencias

Nunca publiques claves, contraseñas, tokens, perfiles de conexión ni todo tu `~/.config` sin revisar. Los wallpapers, fuentes y temas de terceros no están incluidos y mantienen sus respectivas licencias.
