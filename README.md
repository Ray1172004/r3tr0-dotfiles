<div align="center">

# 🌙 R3TR0 Dotfiles

**A minimal, purple-themed Hyprland rice for Arch Linux, powered by Lua.**

[![Arch Linux](https://img.shields.io/badge/Arch_Linux-1793D1?style=flat-square&logo=archlinux&logoColor=white)](https://archlinux.org/)
[![Hyprland](https://img.shields.io/badge/Hyprland-Wayland-B49AFF?style=flat-square)](https://hypr.land/)
[![Status](https://img.shields.io/badge/Status-Work_in_Progress-aaaaaa?style=flat-square)](#project-status)

*Dark surfaces · lavender accents · rounded corners · practical keyboard-driven workflows*

</div>

## ✨ Overview

R3TR0 is my personal Arch Linux desktop setup built around **Hyprland with Lua configuration**. It combines a clean, dark interface with custom Rofi menus and keyboard-focused workflows.

> [!NOTE]
> **Project status — documentation stage.** The original configuration files and screenshots have not been uploaded yet. This repository is **not ready for installation**. The lists below describe the setup intended for this repository, not files already available to clone.

## 🧩 Desktop stack

| Component | Purpose |
| --- | --- |
| **Hyprland (Lua)** | Window management, rules, bindings, animations |
| **Waybar** | Top status bar and system modules |
| **Rofi** | App launcher, power menu, wallpaper picker, control center |
| **Hyprlock + Hypridle** | Lock screen and idle handling |
| **Hyprpaper** | Wallpaper management |
| **SwayNC** | Notifications |
| **SwayOSD** | Volume and brightness on-screen feedback |
| **Hyprsunset** | Scheduled night-light profiles |
| **Kitty** | Terminal |
| **Fastfetch** | System summary |
| **Satty** | Screenshot annotation |
| **SDDM Astronaut** | Login screen theme (third-party dependency, not bundled) |

## ⌨️ Keybindings

The following are from my current setup; mappings may change as I publish the actual files.

| Shortcut | Action |
| --- | --- |
| `SUPER + A` | Application launcher |
| `SUPER + T` | Kitty terminal |
| `SUPER + E` | File manager |
| `SUPER + M` | Power menu |
| `SUPER + D` | Rofi control center |
| `SUPER + W` | Wallpaper picker |
| `SUPER + V` | Clipboard picker |
| `SUPER + SHIFT + V` | Toggle floating |
| `SUPER + SHIFT + C` | Screenshot and annotation |
| `SUPER + SPACE` | Toggle US / Latin American keyboard layouts |
| `SUPER + L` | Lock screen |

## 🗂️ Planned layout

```text
r3tr0-dotfiles/
├── .config/
│   ├── hypr/
│   │   ├── hyprland.lua
│   │   ├── hyprlock.conf
│   │   ├── hypridle.conf
│   │   ├── hyprsunset.conf
│   │   └── scripts/
│   ├── waybar/
│   ├── rofi/
│   ├── swaync/
│   ├── kitty/
│   └── fastfetch/
├── screenshots/
├── wallpapers/
└── docs/
    └── SETUP.md
```

## 📦 Installation

**Not available yet.** Once the configurations have been reviewed and uploaded, see [setup notes](docs/SETUP.md). No automatic installer is provided at this stage.

## 🔐 Privacy and safety

Dotfiles can contain device-specific paths, network names, personal details, API keys, and secrets. Files will be reviewed before publication. **Never commit your home-directory secrets or Wi-Fi credentials.**

Third-party themes, icons, fonts, and wallpapers remain subject to their original licenses and should be installed or attributed separately. They are not automatically included in this repository.

## 📸 Screenshots

*Coming soon — screenshots will be added once the repository matches the running desktop.*

## 🛠️ Roadmap

- [x] Create repository and project documentation
- [ ] Review and publish real desktop configurations
- [ ] Add screenshots and wallpaper credits
- [ ] Document dependencies and manual installation
- [ ] Test installation in a clean user account / virtual machine
- [ ] Optional dashboard and music widgets

---

<div align="center">

Made with 💜 on Arch Linux · [@Ray1172004](https://github.com/Ray1172004)

</div>
