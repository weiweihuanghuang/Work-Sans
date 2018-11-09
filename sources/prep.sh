# For every .glyphs file in this directory, this script makes a .glyphs file where only the brace glyphs will be exporting, determines the style on whether "Italic" is in the filename

for i in *.glyphs; do
	if [[ "$i" =~ "Italic" ]]; then
		style="Italic"
	else
		style="Upright"
	fi
    python tools/makeGlyphsFileWithOnlyBraceGlyphs.py "$i" "$style"
done