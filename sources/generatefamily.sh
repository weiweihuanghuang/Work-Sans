for i in *.ttf; do
    python process.py "$i"
    echo "Processing $i"
done

for i in ExtraLight Thin; do
    ttfautohint -n -w G -x 0 -f latn WorkSans-$i#1.ttf WorkSans-$i.ttf
    echo "WorkSans-$i.ttf hinted"
done
for i in Light Regular Medium SemiBold Bold ExtraBold Black ; do
    ttfautohint -n -w G -x 0 -f latn --control-file=hinting/WorkSans-$i.ctrl WorkSans-$i#1.ttf WorkSans-$i.ttf
    echo "WorkSans-$i.ttf hinted"
done

for i in *#1.ttf; do
    rm "$i"
done