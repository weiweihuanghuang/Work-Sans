#Work Sans

A SIL Open Font project titled 'Work Sans' (former working title 'Alice') for Latin.

Work Sans is a 9 weight typeface family based loosely on early Grotesques — i.e. [Stephenson Blake](https://www.flickr.com/photos/stewf/14444337254/), [Miller & Richard](https://archive.org/stream/printingtypespec00millrich#page/226/mode/2up/) and [Bauerschen Giesserei](https://archive.org/stream/hauptprobeingedr00baue#page/109/mode/1up). The core of the fonts are optimised for on-screen medium-sized text usage (14px-48px) – but still can be used in print well. The fonts at the extreme weights are designed more for display use. Overall, features are simplified and optimised for screen resolutions – for example, diacritic marks are larger than how they would be in print.

The fonts under **/fonts/desktop** are OTF fonts for desktop programs such as the Adobe Suite or Office (Office fonts are only styled linked for Regular and Bold). The metrics are set so that they are more consistent across desktop programs.

The fonts under **/fonts/webfonts** contain TTF, WOFF, and WOFF2 formats for web use. They have been autohinted with ttfautohint and manually corrected (see Notes below).

This typeface was funded by Google and is distributed by Google Fonts – many thanks to Dave Crossland for the commission.

### 10 weights → 9 weights
Previous to September 2015, Work Sans had 10 weights, now it has 9 due to Google Fonts engineer's recommendations. 'Hairline' has been removed. The new 'Thin' is the same as 'HairLine' in previous versions. 'Light' and 'ExtraLight' also changed accordingly. **Reflow will occur from previous versions on these weights.**

## [Work Sans at Google Fonts,](https://www.google.com/fonts/specimen/Work+Sans)

## [Or download (Source, OTF, TTF, WOFF, WOFF2)](https://github.com/weiweihuanghuang/Work-Sans/archive/v1.51.zip)

## [View the webfont specimen](http://weiweihuanghuang.github.io/Work-Sans/).

## [Print out the PDF specimen](https://github.com/weiweihuanghuang/Work-Sans/raw/master/documentation/Work-Sans-Print-Specimen.pdf).

<a href="http://weiweihuanghuang.github.io/Work-Sans/">![Thin to Regular](https://github.com/weiweihuanghuang/Work-Sans/raw/master/documentation/images/waterfall.png)

![Screenshot of a test](https://github.com/weiweihuanghuang/Work-Sans/raw/master/documentation/images/preview.png)</a>

## Suggestion, Comments, Contributions
If you spot any errors or have any suggestions for improvements you can fork this project, create an [Issue](../../issues) or email me at <a href="mailto:wweeiihhuuaanngg@gmail.com">wweeiihhuuaanngg@gmail.com</a>.


##Notes

Source files were partly prepared for use in [Metapolator](http://www.metapolator.com). 

The project started in June 2014 and the brief was to have a [minimum viable product](http://en.wikipedia.org/wiki/Minimum_viable_product) (alpha release with 9 weights) by December 2014. Work Sans was first available on Google fonts in July 2015.

There was a Telugu glyph set in a previous [commit](https://github.com/weiweihuanghuang/Work-Sans/tree/622700a5d00c49c0d1aefbe4e321fd0c3667aa45) (Work Sans-Telugu.glyphs) that comes from [Ramabhadra](http://teluguvijayam.org/fonts.html) by Silicon Andhra. Glyphs marked red in the file are those that have been manually cleaned up, the rest were automatically cleaned up with FontForge from Ramabhadra. The Latin glyphs in Work Sans-Telugu.glyphs are out of date.

*Note: There are no UFOs as UFOs exported from Glyphs App will currently not generate in Robofont and so on due to using Glyphs 2 features '[Bracket trick](http://www.glyphsapp.com/tutorials/alternating-glyph-shapes)' and '[Brace trick](http://www.glyphsapp.com/tutorials/additional-masters-for-individual-glyphs-the-brace-trick)' to solve interpolation bumps. Glyphs marked orange are bracket layers and glyphs marked yellow are using brace layers.*

Refer to [BUILD.txt](/sources/BUILD.txt) for documentation on my process for hinting and generating webfonts.


## License

Work Sans is licensed under the SIL Open Font License v1.1 (<http://scripts.sil.org/OFL>)

To view the copyright and specific terms and conditions please refer to [LICENSE.txt](LICENSE.txt).

## Repository Layout

This font repository follows the Unified Font Repository v2.0, 
a standard way to organize font project source files. Learn more at 
https://github.com/raphaelbastide/Unified-Font-Repository
