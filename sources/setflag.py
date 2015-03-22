# This python script finds and replaces the flags="0x0" with flags="0x4" to set the ROUND_XY_TO_GRID bit in a TTF.
import os
import sys
from fontTools.ttLib import TTFont
from fontTools.ttx import makeOutputFileName

inputTTF = sys.argv[1]

# set the working directory for a shortcut
# os.chdir('/Users/weihuang/Google Drive/Type Design/Google/Outputs/Test/Hinting')

# open the source file and read it
font = TTFont(inputTTF)
extension = os.path.splitext(inputTTF)[1]
if 'glyf' in font:
    glyf = font['glyf']
    for glyphname in glyf.glyphs:
        glyph = glyf.glyphs[glyphname]
        if glyph.isComposite():
            glyph.expand(glyf)
            for component in  glyph.components:
                component.flags |= 0x4
            glyph.compact(glyf)
outputTTF = makeOutputFileName(inputTTF, '', extension)
font.save(outputTTF)
