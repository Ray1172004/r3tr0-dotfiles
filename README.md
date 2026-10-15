<div align="center">

# 🌙 R3TR0 Dotfiles
**Minimal purple-themed Hyprland desktop for Arch Linux — configured in Lua.**

[English](README.md) · [Español](README.es.md)

![Arch Linux](https://img.shields.io/badge/Arch%20Linux-1793D1?logo=archlinux&logoColor=white) ![Hyprland](https://img.shields.io/badge/Hyprland-Wayland-B49AFF) ![Status](https://img.shields.io/badge/Status-Beta-orange)

*Dark surfaces · lavender accents · custom menus · keyboard-driven workflow*

</div>

## About

R3TR0 is my personal Arch Linux desktop customization (rice). It uses **Hyprland's Lua configuration** rather than the usual hyprlang configuration and includes an integrated Rofi control center.

**Current status: Beta / personal setup.** The actual configuration files are now published, but this export **has not been verified on a clean installation**. Review compatibility and paths before trying it.

## Components

| Component | Purpose |
|---|---|
| Hyprland (Lua) | Window manager, bindings and rules |
| Waybar | Top bar, workspaces and system information |
| Rofi | App launcher, power menu, wallpaper and clipboard pickers, control center |
| Hyprlock + Hypridle | Lock screen and idle management |
| Hyprpaper | Wallpapers |
| SwayNC + SwayOSD | Notifications, volume and brightness OSD |
| Hyprsunset | Night light |
| Kitty + Fastfetch | Terminal and system summary |
| Satty | Screenshot annotation |

The Control Center (`SUPER + D`) includes **Wi-Fi, Bluetooth, volume and Night Light**. Brightness uses multimedia keys with SwayOSD.

## Preview

Screenshots will be added soon. Real wallpapers, SDDM Astronaut, fonts, and third-party assets are not bundled.

## Shortcuts

| Shortcut | Action |
|---|---|
| `SUPER + A` | App launcher |
| `SUPER + T` | Kitty |
| `SUPER + E` | File manager (Dolphin) |
| `SUPER + M` | Power menu |
| `SUPER + D` | Control center |
| `SUPER + W` | Wallpaper picker |
| `SUPER + V` | Clipboard picker |
| `SUPER + SHIFT + V` | Toggle floating |
| `SUPER + SHIFT + C` | Screenshot editor |
| `SUPER + SPACE` | US / Latin American keyboard switch |
| `SUPER + L` | Lock screen |

## Repository structure

```text
.config/
├── fastfetch/
├── hypr/             # Lua config, lock, idle, sunset, scripts
├── kitty/
├── rofi/             # Launcher, Control Center, wallpaper, clipboard, power
├── swaync/
└── waybar/
docs/
├── SETUP.md
└── INSTALACION.md
README.md
README.es.md
```

## Installation / requirements

Read [Setup (English)](docs/SETUP.md) before copying files. **Do not blindly replace your existing `~/.config`.** You must adapt wallpaper paths, font names, external dependencies and the Hyprland Lua API version.

## Known limitations

- Some paths contain `/home/YOUR_USER/`; adjust them for your account.
- Wallpapers are not included. The wallpaper picker currently looks in `~/Pictures/Wallpappers/wallpapers` (note the folder spelling).
- Font/icon dependencies and the third-party SDDM theme are not bundled.
- No verified automated installer or clean-system test yet.
- `.gitignore` reduces accidental uploads but is **not** a credential scanner; review changes before pushing.

## Roadmap

- [x] Publish sanitized desktop configurations
- [x] English and Spanish project documentation
- [ ] Screenshots and wallpaper credits
- [ ] Clean-system installation test
- [ ] Dependency validation and optional installer
- [ ] Optional widgets and further UI polish

## Credits

Built with 💜 on Arch Linux by [@Ray1172004](https://github.com/Ray1172004). External themes, icons and fonts belong to their respective authors and licenses. See [LICENSE](LICENSE) for this repository's license.

