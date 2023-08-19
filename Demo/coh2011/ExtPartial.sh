#!/bin/bash

./extract_mvs $1/$2 > $2.log.t 2> $2.size.t
echo $2 ours Extraction Done.
cat $2.log.t  | awk -F ',' '{print $1,$3"x"$4,$7,$8,$10,$11}' | grep '16x16' | sed -e 's/16x16//' > log/$2.log
cat $2.size.t | grep yuv420p | awk '{print $7}' | sed -e 's/x/ /' -e 's/,//' > log/$2.size
rm $2.log.t $2.size.t
echo $2 Done.

