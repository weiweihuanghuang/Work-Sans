#!/bin/bash
set -e

glyphsSource="WorkSans.glyphs WorkSans-Italic.glyphs"

for i in $glyphsSource; do
	if [ $i == "WorkSans.glyphs" ]; then
		echo $i
	elif [ $i == "WorkSans-Italic.glyphs" ]; then
		echo $i
	fi

done