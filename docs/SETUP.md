# Setup notes

> **Current status:** This repository contains documentation only. Do not follow these notes as installation instructions until the real configuration files have been uploaded and verified.

## Requirements (planned)

- Arch Linux, a compatible Wayland session and Hyprland with the same Lua configuration interface used by these dotfiles.
- Rofi, Waybar, Kitty, Hyprlock, Hypridle, Hyprpaper, SwayNC, SwayOSD, Hyprsunset, Satty, Fastfetch, and required fonts/icons.
- Additional optional integrations such as NetworkManager (`nmcli`), Blueman, `brightnessctl`, `wpctl`, `cliphist`, and `playerctl`.

**Compatibility warning:** Not every Hyprland release supports the same Lua configuration syntax or window-rule API. Check versions before using any published config.

## Before copying any dotfiles

1. Back up `~/.config` (or at minimum each target application folder).
2. Review paths, monitor settings, installed apps, binaries, and shell scripts.
3. Never overwrite your current config blindly.
4. Apply components individually, validating each one.
5. Review the repository's scripts before running them.

## For contributors / local backups

The author's working configurations will be added from a reviewed, sanitized export of the actual machine. Do **not** upload all of `~/.config` recursively: it often includes application databases, saved sessions, tokens, and private information.

## Third-party assets

SDDM Astronaut, fonts, icon packs, and wallpapers must be acquired from their original sources according to their licenses. This repository does not claim ownership of those resources.
