cp WorkSans-Upright.glyphs WorkSans-UprightBuild.glyphs

fontmake -o variable -g WorkSans-UprightBuild.glyphs

mv variable_ttf/WorkSans-VF.ttf WorkSans-VF.ttf

rm -rf WorkSans-UprightBuild.glyphs
rm -rf master_ufo
rm -rf variable_ttf

python ./addItalics.py WorkSans-VF.ttf

gftools fix-nonhinting WorkSans-VF.ttf WorkSans-VF.ttf
gftools fix-dsig --autofix WorkSans-VF.ttf
gftools fix-gasp WorkSans-VF.ttf
ttfautohint WorkSans-VF.ttf WorkSans-VF-Hinted.ttf --verbose

python ./gftools-fix-vf-meta.py WorkSans-VF-Hinted.ttf

## move font into folder of dist/, with timestamp, then fontbake the font
    python3 ./distdate-and-fontbake.py WorkSans-VF-Hinted.ttf
    rm -rf variable_ttf

# ttx WorkSans-VF.ttf

# rm -rf WorkSans-VF.ttf
# rm -rf WorkSans-Upright-VF-backup-fonttools-prep-gasp.ttf

# cat WorkSans-Upright-VF.ttx | tr '\n' '\r' | sed -e "s,<STAT>.*<\/STAT>,$(cat tools/patch1.xml | tr '\n' '\r')," | tr '\r' '\n' > WorkSans-Upright-VF-STAT.ttx

# rm -rf WorkSans-Upright-VF.ttx

# ttx WorkSans-Upright-VF-STAT.ttx

# rm -rf WorkSans-Upright-VF-STAT.ttx

# mv WorkSans-Upright-VF-STAT.ttf WorkSans-UprightBeta-VF.ttf