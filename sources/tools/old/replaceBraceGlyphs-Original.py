#!/usr/bin/env python
from argparse import ArgumentParser
from fontTools.ttLib import TTFont, TTLibError

def main(fontTargetPath, fontBracePath):
    try:
        fontTarget = TTFont(fontTargetPath)
        fontBrace = TTFont(fontBracePath)
    except IOError as e:
        print e
        exit()
    except TTLibError as e:
        print e
        exit()

    print "Replacing brace glyphs in " + fontTargetPath + " with those from " + fontBracePath

    excludedGlyphs = ['.notdef', 'space']

    for glyphVariationsName in fontBrace['gvar'].variations:
        if glyphVariationsName in excludedGlyphs: continue
        fontTarget['gvar'].variations[glyphVariationsName] = fontBrace['gvar'].variations[glyphVariationsName]
        print "Replaced glyphVariation " + glyphVariationsName

    # We replace TTGlyphs after as updating glyphVariations otherwise an erorr is raised
    for TTGlyphName in fontBrace['glyf'].glyphs:
        if TTGlyphName in excludedGlyphs: continue
        fontTarget['glyf'].glyphs[TTGlyphName] = fontBrace['glyf'].glyphs[TTGlyphName]
        print "Replaced TTGlyph " + TTGlyphName

    if __name__ == "__main__":
        fontTarget.save(fontTargetPath)

if __name__ == "__main__":
    parser = ArgumentParser(description=__doc__)
    parser.add_argument("fontFileTarget", help="Input font file to receive brace layers", metavar="FONT_FILE_TARGET")
    parser.add_argument("fontFileBrace", help="Input font file with brace layers", metavar="FONT_FILE_BRACE")
    args = parser.parse_args()
    main(args.fontFileTarget, args.fontFileBrace)
