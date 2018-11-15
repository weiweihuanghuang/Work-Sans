#!/bin/bash
set -e

# Fix VF Metadata
VFfonts=""
for i in *.ttf; do
	VFfonts+="$i "
done
echo "\tFixing VF Family Metadata..."
python tools/gftools-fix-vf-meta.py $VFfonts


# Clean up VFs
for i in $VFfonts; do
	rm "$i"
done


# Rename VFs
for i in *.fix; do
	mv $i ${i/".ttf.fix"/".ttf"}
done


# Fix DSIG
for i in *.ttf; do
	echo "\tFixing DSIG $i..."
	# Fix DSIG
	gftools fix-dsig --autofix "$i"
done