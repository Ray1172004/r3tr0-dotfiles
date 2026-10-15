#!/usr/bin/env python3

from PIL import Image, ImageStat
from pathlib import Path
import re
import sys

LOCK = Path.home() / ".config/hypr/hyprlock.conf"

if len(sys.argv) != 2:
    sys.exit("Uso: adaptive-lock.py RUTA_IMAGEN")

image = Path(sys.argv[1]).expanduser()

if not image.is_file():
    sys.exit(f"No existe la imagen: {image}")

# Analizar una versión pequeña para mayor velocidad
with Image.open(image) as img:
    img = img.convert("RGB")
    img.thumbnail((150, 150))

    stat = ImageStat.Stat(img)
    r, g, b = stat.mean

# Calcular luminosidad aproximada
brightness = 0.2126 * r + 0.7152 * g + 0.0722 * b

if brightness >= 135:
    color = "rgba(25, 25, 35, 1.0)"
    mode = "oscuro"
else:
    color = "rgba(231, 228, 244, 1.0)"
    mode = "claro"

config = LOCK.read_text()

# Cambiar únicamente las etiquetas
def update_label(match):
    block = match.group(0)
    return re.sub(
        r'(?m)^(\s*color\s*=\s*).*$',
        lambda m: m.group(1) + color,
        block
    )

config = re.sub(
    r'label\s*\{[^}]*\}',
    update_label,
    config
)

LOCK.write_text(config)

print(f"Luminosidad: {brightness:.1f}")
print(f"Texto seleccionado: {mode}")
