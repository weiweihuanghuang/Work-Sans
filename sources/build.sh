#!/bin/bash
set -e
### WIP macOS build script for Work Sans Upright and Italic VF, based on a build script by Mike LaGuttuta

# Setting the Source and VF name, determine if it's for Italic or Upright source from the argument passed to this script

glyphsSource="WorkSans.glyphs WorkSans-Italic.glyphs"

mkdir -p ../fonts/ ../fonts/ttf ../fonts/otf ../fonts/vf ../fonts/woff ../fonts/woff2

# Generate VFs
VF_ROMAN=../fonts/vf/WorkSans[wght].ttf
VF_ITALIC=../fonts/vf/WorkSans-Italic[wght].ttf
fontmake -g WorkSans.glyphs -o variable --output-path $VF_ROMAN
fontmake -g WorkSans-Italic.glyphs -o variable --output-path $VF_ITALIC

for ttf in ../fonts/vf/*.ttf
do
  ./tools/ttfautohint-vf $ttf $ttf.fix
  mv $ttf.fix $ttf
  gftools fix-dsig -f $ttf
  gftools fix-hinting $ttf
  mv $ttf.fix $ttf
done
# Fix VF Metadata
gftools fix-vf-meta ../fonts/vf/*.ttf

for f in ../fonts/vf/*.ttf
do
	mv $f.fix $f;
done

# Generate TTFs
TTF_OUT=../fonts/ttf
fontmake -g WorkSans.glyphs -o ttf -i --output-dir $TTF_OUT
fontmake -g WorkSans-Italic.glyphs -o ttf -i --output-dir $TTF_OUT
# Generate OTFS
OTF_OUT=../fonts/otf
fontmake -g WorkSans.glyphs -o ttf -i --output-dir $OTF_OUT
fontmake -g WorkSans-Italic.glyphs -o ttf -i --output-dir $OTF_OUT

rm -rf master_ufo/ instance_ufo/
for ttf in ../fonts/ttf/*.ttf
do
  ./tools/ttfautohint-vf $ttf $ttf.fix
  mv $ttf.fix $ttf
  gftools fix-dsig -f $ttf
  gftools fix-hinting $ttf
  mv $ttf.fix $ttf
done
# Generate woff
for ttf in ../fonts/ttf/*.ttf
do
  sfnt2woff $ttf
  mv ${ttf/.ttf/.woff} ../fonts/woff
done
# Generate woff2
for ttf in ../fonts/ttf/*.ttf
do
  woff2_compress $ttf
  mv ${ttf/.ttf/.woff2} ../fonts/woff2
done
