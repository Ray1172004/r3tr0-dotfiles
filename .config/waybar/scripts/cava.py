#!/usr/bin/env python3

import subprocess
import os
import sys
import time

config = os.path.expanduser("~/.config/cava/waybar.conf")
levels = "▁▂▃▄▅▆▇█"

while True:
    try:
        process = subprocess.Popen(
            ["cava", "-p", config],
            stdout=subprocess.PIPE,
            stderr=subprocess.DEVNULL,
            text=True,
            bufsize=1
        )

        for line in process.stdout:
            try:
                values = [
                    int(v) for v in line.strip().split(";")
                    if v.strip()
                ]

                if not values:
                    continue

                visual = "".join(
                    levels[max(0, min(v, 7))]
                    for v in values
                )

                print(visual, flush=True)

            except ValueError:
                continue

        process.wait()

    except (OSError, KeyboardInterrupt):
        sys.exit(0)

    time.sleep(2)
