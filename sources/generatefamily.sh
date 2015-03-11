for i in *.ttf; do
    ttx -t glyf "$i"
done
for i in *.ttx; do
    python setflag.py "$i"
done
for i in *.ttx; do
	name=$(basename "$i" .ttx)
	path=$(dirname "$i")
    ttx -m "$path/$name.ttf" "$i"
    rm "$i"
    rm "$path/$name.ttf"
    # mv "$path/$name#1.ttf" "$path/$name.ttf"
done

ttfautohint -n -w G -x 0 -f latn WorkSans-Hairline#1.ttf WorkSans-Hairline.ttf
echo "WorkSans-Hairline.ttf hinted"
ttfautohint -n -w G -x 0 -f latn WorkSans-Thin#1.ttf WorkSans-Thin.ttf
echo "WorkSans-Thin.ttf hinted"
ttfautohint -n -w G -x 0 -f latn --control-file=hinting/WorkSans-ExtraLight.ctrl WorkSans-ExtraLight#1.ttf WorkSans-ExtraLight.ttf
echo "WorkSans-ExtraLight.ttf hinted"
ttfautohint -n -w G -x 0 -f latn --control-file=hinting/WorkSans-Light.ctrl WorkSans-Light#1.ttf WorkSans-Light.ttf
echo "WorkSans-Light.ttf hinted"
ttfautohint -n -w G -x 0 -f latn --control-file=hinting/WorkSans-Regular.ctrl WorkSans-Regular#1.ttf WorkSans-Regular.ttf
echo "WorkSans-Regular.ttf hinted"
ttfautohint -n -w G -x 0 -f latn --control-file=hinting/WorkSans-Medium.ctrl WorkSans-Medium#1.ttf WorkSans-Medium.ttf
echo "WorkSans-Medium.ttf hinted"
ttfautohint -n -w G -x 0 -f latn --control-file=hinting/WorkSans-SemiBold.ctrl WorkSans-SemiBold#1.ttf WorkSans-SemiBold.ttf
echo "WorkSans-SemiBold.ttf hinted"
ttfautohint -n -w G -x 0 -f latn --control-file=hinting/WorkSans-Bold.ctrl WorkSans-Bold#1.ttf WorkSans-Bold.ttf
echo "WorkSans-Bold.ttf hinted"
ttfautohint -n -w G -x 0 -f latn --control-file=hinting/WorkSans-ExtraBold.ctrl WorkSans-ExtraBold#1.ttf WorkSans-ExtraBold.ttf
echo "WorkSans-ExtraBold.ttf hinted"
ttfautohint -n -w G -x 0 -f latn --control-file=hinting/WorkSans-Black.ctrl WorkSans-Black#1.ttf WorkSans-Black.ttf
echo "WorkSans-Black.ttf hinted"

for i in *#1.ttf; do
    rm "$i"
done