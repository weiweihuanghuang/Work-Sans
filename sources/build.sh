#!/bin/bash
set -e
### WIP macOS build script for Work Sans Upright and Italic VF, based on a build script by Mike LaGuttuta

# Setting the Source and VF name, determine if it's for Italic or Upright source from the argument passed to this script

glyphsSource="WorkSans.glyphs WorkSans-Italic.glyphs"

mkdir -p ../fonts/ ../fonts/static ../fonts/variable

# Generate VFs
VF_ROMAN=../fonts/variable/WorkSans[wght].ttf
VF_ITALIC=../fonts/variable/WorkSans-Italic[wght].ttf
fontmake -g WorkSans.glyphs -o variable --output-path $VF_ROMAN
fontmake -g WorkSans-Italic.glyphs -o variable --output-path $VF_ITALIC

for ttf in ../fonts/variable/*.ttf
do
  ./tools/ttfautohint-vf $ttf $ttf.fix
  mv $ttf.fix $ttf
  gftools fix-dsig -f $ttf
  gftools fix-hinting $ttf
  mv $ttf.fix $ttf
done
# Fix VF Metadata
gftools fix-vf-meta ../fonts/variable/*.ttf

for f in ../fonts/variable/*.ttf
do
	mv $f.fix $f;
done

# Generate Statics
OUT=../fonts/static
fontmake -g WorkSans.glyphs -o ttf -i --output-dir $OUT
fontmake -g WorkSans-Italic.glyphs -o ttf -i --output-dir $OUT

rm -rf master_ufo/ instance_ufo/
for ttf in ../fonts/static/*.ttf
do
  ./tools/ttfautohint-vf $ttf $ttf.fix
  mv $ttf.fix $ttf
  gftools fix-dsig -f $ttf
  gftools fix-hinting $ttf
  mv $ttf.fix $ttf
done

