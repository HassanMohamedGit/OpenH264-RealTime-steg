#!/bin/bash
VID='/media/hassan/Windows/Zsteg/New/Steg/Zfeatures_25/New/vid/mvmplo_coh'

Files=$(ls $VID)
for i in $Files
do
./ExtPartial.sh $VID $i &
done

VID='/media/hassan/Windows/Zsteg/New/Steg/Zfeatures_25/New/vid/x264'

Files=$(ls $VID)
for i in $Files
do
./ExtPartial.sh $VID $i &
done

#Files=$(ls $VID/ours)
#for i in $Files
#do
#./extract_mvs $VID/ours/$i > $i.log.t 2> $i.size.t
#echo $i ours Extraction Done.
#cat $i.log.t  | awk -F ',' '{print $1,$3"x"$4,$7,$8,$10,$11}' | grep '16x16' | sed -e 's/16x16//' > log/ours/$i.log
#cat $i.size.t | grep yuv420p | awk '{print $7}' | sed -e 's/x/ /' -e 's/,//' > log/ours/$i.size
#rm $i.log.t $i.size.t
#echo $i ours Done.
#done

#Files=$(ls $VID/orig_openh264)
#for i in $Files
#do
#./extract_mvs $VID/orig_openh264/$i > $i.log.t 2> $i.size.t
#echo $i ours Extraction Done.
#cat $i.log.t  | awk -F ',' '{print $1,$3"x"$4,$7,$8,$10,$11}' | grep '16x16' | sed -e 's/16x16//' > log/orig/$i.log
#cat $i.size.t | grep yuv420p | awk '{print $7}' | sed -e 's/x/ /' -e 's/,//' > log/orig/$i.size
#rm $i.log.t $i.size.t
#echo $i ours Done.
#done

#Files=$(ls $VID/mvmplo)
#for i in $Files
#do
#./extract_mvs $VID/mvmplo/$i > $i.log.t 2> $i.size.t
#echo $i mvmplo Extraction Done.
#cat $i.log.t  | awk -F ',' '{print $1,$3"x"$4,$7,$8,$10,$11}' | grep '16x16' | sed -e 's/16x16//' > log/mvmplo/$i.log
#cat $i.size.t | grep yuv420p | awk '{print $7}' | sed -e 's/x/ /' -e 's/,//' > log/mvmplo/$i.size
#rm $i.log.t $i.size.t
#echo $i mvmplo Done.
#done

#Files=$(ls $VID/x264)
#for i in $Files
#do
#./extract_mvs $VID/x264/$i > $i.log.t 2> $i.size.t
#echo $i x264 Extraction Done.
#cat $i.log.t  | awk -F ',' '{print $1,$3"x"$4,$7,$8,$10,$11}' | grep '16x16' | sed -e 's/16x16//' > log/x264/$i.log
#cat $i.size.t | grep yuv420p | awk '{print $7}' | sed -e 's/x/ /' -e 's/,//' > log/x264/$i.size
#rm $i.log.t $i.size.t
#echo $i x264 Done.
#done

echo Extraction Done !

