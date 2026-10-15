# Installation notes (English)

[English](SETUP.md) · [Español](INSTALACION.md)

> **Beta:** The real dotfiles are published, but they have not been tested on a clean Arch Linux installation. These instructions describe a **manual, selective review**, not a verified automatic installer.

## Dependencies

Main stack: Arch Linux, a Hyprland release supporting the Lua configuration API used in `.config/hypr/hyprland.lua`, Waybar, Rofi, Kitty, Hyprlock, Hypridle, Hyprpaper, Hyprsunset, SwayNC, SwayOSD, Satty and Fastfetch.

The scripts also reference `nmcli` (NetworkManager), `bluetoothctl`, `blueman-manager`, `pavucontrol`, `swayosd-client`, `playerctl`, `wl-clipboard`, `cliphist`, `python3` and other command-line tools. Check the scripts for the full dependency list. Use a Nerd Font (the lock screen refers to JetBrainsMono Nerd Font).

## Clone and inspect

```bash
git clone https://github.com/Ray1172004/r3tr0-dotfiles.git
cd r3tr0-dotfiles
find .config -type f | sort
```

Before copying **anything**, back up your existing `~/.config`. Inspect each script and copy **one component at a time**.

## Adapt your environment

1. Replace the literal `/home/YOUR_USER/` values in the Hyprpaper, Hyprlock and Waybar files.
2. Supply your own wallpaper files and update `hyprpaper.conf` and `hyprlock.conf`.
3. The picker expects `~/Pictures/Wallpappers/wallpapers`. Change that path in `.config/rofi/wallpaper/wallpaper_picker.py` if yours differs.
4. Check monitor names, preferred applications and keyboard layout.
5. Verify your Hyprland build supports **Lua** and the window rules used here; do not assume standard hyprlang syntax works.
6. Review third-party Rofi themes, SDDM theme, fonts, and icons separately.

## Validate

After **selective** copying, check Bash scripts with `bash -n`, Python scripts with `python -m py_compile` and Lua syntax with `luac -p`. Syntax checks do not guarantee runtime compatibility.

## Privacy and licenses

Never copy private keys, passwords, tokens, connection profiles, or unreviewed `~/.config` folders into a public repository. External wallpapers, fonts and themes are not provided and retain their own authorship/licensing.
