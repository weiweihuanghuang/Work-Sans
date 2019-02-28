#!/usr/bin/env python
from argparse import ArgumentParser
from fontTools.ttLib import TTFont, TTLibError

def main(fontTargetPath, fontBracePath, braceGlyphsString):
    try:
        fontTarget = TTFont(fontTargetPath)
        fontBrace = TTFont(fontBracePath)
    except IOError as e:
        print e
        exit()
    except TTLibError as e:
        print e
        exit()

    braceGlyphsList = braceGlyphsString.split(",")
    print braceGlyphsList
    # print "Replacing brace glyphs in " + fontTargetPath + " with those from " + fontBracePath

    for glyphVariationsName in fontBrace['gvar'].variations:
        if glyphVariationsName in braceGlyphsList:
            fontTarget['gvar'].variations[glyphVariationsName] = fontBrace['gvar'].variations[glyphVariationsName]
            print "Replaced glyphVariation " + glyphVariationsName

    # We replace TTGlyphs after as updating glyphVariations otherwise an erorr is raised
    for TTGlyphName in fontBrace['glyf'].glyphs:
        if glyphVariationsName in braceGlyphsList:
            fontTarget['glyf'].glyphs[TTGlyphName] = fontBrace['glyf'].glyphs[TTGlyphName]
            print "Replaced TTGlyph " + TTGlyphName

    if __name__ == "__main__":
        fontTarget.save(fontTargetPath)

if __name__ == "__main__":
    parser = ArgumentParser(description=__doc__)
    parser.add_argument("fontFileTarget", help="Input font file to receive brace layers", metavar="FONT_FILE_TARGET")
    parser.add_argument("fontFileBrace", help="Input font file with brace layers", metavar="FONT_FILE_BRACE")
    parser.add_argument("braceGlyphs", help="Input list of brace glyphs", metavar="BRACE_GLYPHS")
    args = parser.parse_args()
    main(args.fontFileTarget, args.fontFileBrace, args.braceGlyphs)
