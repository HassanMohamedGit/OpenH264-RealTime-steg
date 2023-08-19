#!/bin/bash
rm log/* activity/*

Files=$(ls vid/)
for i in $Files
do
./extract_mvs vid/$i > $i.log.t 2> $i.size.t
echo $i MV extraction Done.
cat $i.log.t  | grep -v fram | awk -F ',' '{print $10,$11}' | awk '{print $1,$2}' | sed -e 's/^/scale=4;sqrt(/' -e 's/ /^2 + /' -e 's/$/^2)/' | bc > $i.t.mv
cat $i.log.t  | grep -v fram | awk -F ',' '{print $1}' > $i.t.fr
paste $i.t.fr $i.t.mv > log/$i.log
#cat $i.size.t | grep yuv420p | awk '{print $7}' | sed -e 's/x/ /' -e 's/,//' > log/$i.size
echo $i Done.
rm $i.log.t $i.size.t $i.t.fr $i.t.mv
done

echo ALL Extraction Done !

