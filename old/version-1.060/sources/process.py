# This python script finds and replaces the flags="0x0" with flags="0x4" to set the ROUND_XY_TO_GRID bit in a TTF. It then removes any NAME table IDs with a PlatformID="1" attribute

import os
import sys
from fontTools.ttLib import TTFont
from fontTools.ttx import makeOutputFileName

inputTTF = sys.argv[1]

# open the source file and read it
font = TTFont(inputTTF)
extension = os.path.splitext(inputTTF)[1]

# Set ROUND_XY_TO_GRID flag
if 'glyf' in font:
    glyf = font['glyf']
    for glyphname in glyf.glyphs:
        glyph = glyf.glyphs[glyphname]
        if glyph.isComposite():
            glyph.expand(glyf)
            for component in  glyph.components:
                component.flags |= 0x4
            glyph.compact(glyf)

# Remove NAME table IDs with a PlatformID="1" attribute
records = []
for record in font['name'].names:
    if record.platformID == 1:
        continue
    records.append(record)
font['name'].names = records

outputTTF = makeOutputFileName(inputTTF, '', extension)
font.save(outputTTF)