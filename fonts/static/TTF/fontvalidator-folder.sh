#!/bin/bash

mkdir -p Reports

for i in *.ttf; do
	echo "Processing $i ..."
	# FontValidator -report-in-font-dir -no-raster-tests -only-tables +table 'glyf' -file $i
	FontValidator -report-in-font-dir -no-raster-tests -file $i
	for i in *.html ; do mv $i Reports/${i} ; done
	for i in *.xsl ; do rm $i ; done
	for i in *.xml ; do rm $i ; done
done