#!/usr/bin/env python3

import json
import re
import subprocess
import sys
from pathlib import Path

HOME = Path.home()
FOLDER = HOME / "Pictures/Wallpappers/wallpapers"
THEME = HOME / ".config/rofi/wallpaper/theme.rasi"
PAPER_CONFIG = HOME / ".config/hypr/hyprpaper.conf"
LOCK_CONFIG = HOME / ".config/hypr/hyprlock.conf"

EXTENSIONS = {".jpg", ".jpeg", ".png", ".webp"}

# Buscar fondos
if not FOLDER.is_dir():
    sys.exit(f"No existe la carpeta: {FOLDER}")

images = sorted(
    (p for p in FOLDER.iterdir()
     if p.is_file() and p.suffix.lower() in EXTENSIONS),
    key=lambda p: p.name.lower()
)

if not images:
    sys.exit("No se encontraron wallpapers.")

# Crear entradas con miniaturas para Rofi
entries = bytearray()

for n, image in enumerate(images, 1):
    label = f"{n:02d}  {image.stem[:18]}"
    label = label.replace("\n", " ")

    entries.extend(
        label.encode("utf-8")
        + b"\0icon\x1f"
        + str(image).encode("utf-8")
        + b"\n"
    )

# Abrir selector horizontal
result = subprocess.run(
    [
        "rofi",
        "-dmenu",
        "-no-custom",
        "-format", "i",
        "-theme", str(THEME),
        "-p", "󰸉  WALLPAPERS",
    ],
    input=bytes(entries),
    stdout=subprocess.PIPE
)

if result.returncode != 0:
    sys.exit(0)

try:
    index = int(result.stdout.decode().strip())
    selected = images[index]
except (ValueError, IndexError):
    sys.exit("Selección inválida.")

# Detectar monitores activos
monitors = subprocess.run(
    ["hyprctl", "-j", "monitors"],
    capture_output=True,
    text=True,
    check=True
)

monitor_names = [
    monitor["name"]
    for monitor in json.loads(monitors.stdout)
]

if not monitor_names:
    sys.exit("No se detectaron monitores activos.")

# Aplicar el fondo usando Hyprpaper
for monitor in monitor_names:
    subprocess.run(
        [
            "hyprctl", "hyprpaper", "wallpaper",
            f"{monitor},{selected},cover"
        ],
        check=True
    )

# Guardar el fondo para futuros inicios
PAPER_CONFIG.write_text(
    "splash = false\n"
    "ipc = true\n\n"
    + "".join(
        "wallpaper {\n"
        f"    monitor = {monitor}\n"
        f"    path = {selected}\n"
        "    fit_mode = cover\n"
        "}\n\n"
        for monitor in monitor_names
    )
    + "wallpaper {\n"
    "    monitor =\n"
    f"    path = {selected}\n"
    "    fit_mode = cover\n"
    "}\n"
)

# Sincronizar el wallpaper de Hyprlock
if LOCK_CONFIG.exists():
    content = LOCK_CONFIG.read_text()

    pattern = r"(?m)(^\s*background\s*\{[^}]*?^\s*path\s*=\s*)[^\n]*"

    updated, count = re.subn(
        pattern,
        lambda match: match.group(1) + str(selected),
        content,
        count=1,
        flags=re.DOTALL
    )

    if count:
        LOCK_CONFIG.write_text(updated)
    else:
        print("Aviso: no se encontró el fondo de Hyprlock.")

print(f"Wallpaper aplicado: {selected.name}")


# Actualizar automáticamente colores de Hyprlock
subprocess.run(
    [
        "python3",
        str(Path.home() / ".config/hypr/scripts/adaptive-lock.py"),
        str(selected)
    ],
    check=True
)
