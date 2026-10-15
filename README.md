<div align="center">

# 🌙 R3TR0 Dotfiles
**Un rice minimalista morado para Arch Linux con Hyprland configurado en Lua.**

**Español** · [English](README.en.md)

![Arch Linux](https://img.shields.io/badge/Arch%20Linux-1793D1?logo=archlinux&logoColor=white) ![Hyprland](https://img.shields.io/badge/Hyprland-Wayland-B49AFF) ![Estado](https://img.shields.io/badge/Estado-Beta-orange)

*Colores oscuros · acentos lavanda · menús personalizados · control por teclado*

</div>

## Acerca del proyecto

R3TR0 es mi personalización (rice) de Arch Linux, basada en **Hyprland con configuración Lua**. Incluye menús Rofi personalizados y un centro de control integrado.

**Estado: Beta / configuración personal.** Ya están publicados los archivos reales de configuración, pero la exportación **no se ha probado en una instalación limpia**. Es necesario revisar rutas y compatibilidad antes de utilizarla.

## Componentes

| Componente | Función |
|---|---|
| Hyprland (Lua) | Ventanas, atajos y reglas |
| Waybar | Barra superior y módulos |
| Rofi | Lanzador, apagado, fondos, portapapeles y centro de control |
| Hyprlock + Hypridle | Bloqueo y gestión de inactividad |
| Hyprpaper | Fondos de pantalla |
| SwayNC + SwayOSD | Notificaciones, indicadores de volumen y brillo |
| Hyprsunset | Luz nocturna |
| Kitty + Fastfetch | Terminal e información del sistema |
| Satty | Edición de capturas |

El Centro de Control (`SUPER + D`) incluye **Wi-Fi, Bluetooth, volumen y Night Light**. El brillo se controla mediante las teclas multimedia con SwayOSD.

## Capturas

Próximamente. Los wallpapers, el tema externo SDDM Astronaut, las fuentes y otros recursos de terceros no están incluidos.

## Atajos

| Atajo | Acción |
|---|---|
| `SUPER + A` | Lanzador de aplicaciones |
| `SUPER + T` | Kitty |
| `SUPER + E` | Gestor de archivos (Dolphin) |
| `SUPER + M` | Menú de apagado |
| `SUPER + D` | Centro de control |
| `SUPER + W` | Selector de wallpapers |
| `SUPER + V` | Portapapeles |
| `SUPER + SHIFT + V` | Activar modo flotante |
| `SUPER + SHIFT + C` | Captura de pantalla |
| `SUPER + SPACE` | Alternar teclado US / Latinoamérica |
| `SUPER + L` | Bloquear pantalla |

## Estructura del repositorio

```text
.config/
├── fastfetch/
├── hypr/
├── kitty/
├── rofi/
├── swaync/
└── waybar/
docs/
├── SETUP.md
└── INSTALACION.md
README.md
README.es.md
```

## Instalación

Lee [Instalación (español)](docs/INSTALACION.md) **antes de copiar cualquier archivo**. No sobrescribas directamente tu `~/.config`: debes adaptar las rutas de wallpapers, fuentes, dependencias y la versión de Hyprland compatible con Lua.

## Limitaciones conocidas

- Algunas rutas contienen `/home/YOUR_USER/`; cámbialas por tu usuario.
- Los wallpapers no están incluidos. El selector busca en `~/Pictures/Wallpappers/wallpapers` (respeta esa escritura).
- Faltan los recursos externos: fuentes, iconos y tema SDDM.
- No hay un instalador automatizado probado ni una prueba en una instalación limpia.
- `.gitignore` ayuda a evitar archivos privados, pero no sustituye una revisión de seguridad antes de publicar cambios.

## Próximos pasos

- [x] Publicar las configuraciones revisadas
- [x] Documentación en español e inglés
- [ ] Capturas y créditos de wallpapers
- [ ] Probar instalación limpia
- [ ] Validar dependencias y crear instalador opcional
- [ ] Más widgets y retoques estéticos

## Créditos

Hecho con 💜 sobre Arch Linux por [@Ray1172004](https://github.com/Ray1172004). Los recursos de terceros conservan sus respectivas licencias. Consulta [LICENSE](LICENSE).

