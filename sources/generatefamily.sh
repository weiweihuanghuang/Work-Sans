for i in *.ttf; do
    python process.py "$i"
    echo "Processing $i"
done

for i in ExtraLight Thin; do
    ttfautohint -n -w G -x 0 -f latn AOzoneSans-$i#1.ttf AOzoneSans-$i.ttf
    echo "AOzoneSans-$i.ttf hinted"
done
for i in Light Regular Medium SemiBold Bold ExtraBold Black ; do
    ttfautohint -n -w G -x 0 -f latn --control-file=hinting/WorkSans-$i.ctrl AOzoneSans-$i#1.ttf AOzoneSans-$i.ttf
    echo "AOzoneSans-$i.ttf hinted"
done

for i in *#1.ttf; do
    rm "$i"
done