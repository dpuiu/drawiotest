#!/usr/bin/env python3

import json
from pathlib import Path
from html import escape
import base64

svg_dir = Path.home() / "bioart"
output = Path.home() / "NIH-BioArt.xml"

items = []

for svg_file in sorted(svg_dir.glob("*.svg")):
    svg = svg_file.read_bytes()
    encoded = base64.b64encode(svg).decode("ascii")

    title = svg_file.stem.replace("_", " ").replace("-", " ").title()

    xml = (
        '<mxGraphModel><root>'
        '<mxCell id="0"/>'
        '<mxCell id="1" parent="0"/>'
        f'<mxCell id="2" value="{escape(title)}" '
        'style="shape=image;html=1;aspect=fixed;'
        f'image=data:image/svg+xml;base64,{encoded};" '
        'vertex="1" parent="1">'
        '<mxGeometry width="200" height="200" as="geometry"/>'
        '</mxCell>'
        '</root></mxGraphModel>'
    )

    items.append({
        "xml": xml,
        "w": 200,
        "h": 200,
        "title": title
    })

# JSON must be inside the mxlibrary element
library = "<mxlibrary>" + json.dumps(items, separators=(",", ":")) + "</mxlibrary>"

output.write_text(library, encoding="utf-8")

print(f"Created {output}")
print(f"Icons: {len(items)}")
