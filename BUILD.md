## Static Font Build ##

- Export "OTF" option (OTF and TTF will be generated) in Glyphs App Version 2.5.2 (1179)
	- Remove Overlap
	- Autohint

## Variable Font Build ##

- Run prep.sh (`sh prep.sh` in Terminal)

This script makes new .glyphs file (suffixed with -onlyBraceGlyphs.glyphs) for the upright and italic .glyphs file. Only the brace glyphs will be exporting. This will be used to export a file with the correct brace glyphs.

- Export "Variable Fonts" option for both -onlyBraceGlyphs.glyphs files to the same folder as the .glyphs source.

- Run build.sh (`sh build.sh` in Terminal)

## Dependancies ##
- fontmake
- xmlstarlet