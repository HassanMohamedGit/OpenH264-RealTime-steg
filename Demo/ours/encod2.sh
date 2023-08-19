#!/bin/bash
A=`ls ../YUV/cif/   | sed -e 's/.yuv//'`
B=`ls ../YUV/720p/  | sed -e 's/.yuv//'`
C=`ls ../YUV/1080p/ | sed -e 's/.yuv//'`

rm -rf vid/* log/*

for i in $A
do
bash encod2Partial.sh bin/zwelsench.cfg ../YUV/cif/$i.yuv vid/$i.orig h264enc.orig &
sleep .1
done

for i in $A
do
bash encod2Partial.sh bin/zwelsench.cfg ../YUV/cif/$i.yuv vid/$i.Full h264enc.steg &
echo $i.Full Done.
done


###############################################################################################

for i in $B
do
bash encod2Partial.sh bin/zwelsench3.cfg ../YUV/720p/$i.yuv vid/$i.orig h264enc.orig &
sleep .1
done

for i in $B
do
bash encod2Partial.sh bin/zwelsench3.cfg ../YUV/720p/$i.yuv vid/$i.Full h264enc.steg &
echo $i.Full Done.
done

###############################################################################################

for i in $C
do
bash encod2Partial.sh bin/zwelsench4.cfg ../YUV/1080p/$i.yuv vid/$i.orig h264enc.orig &
sleep .1
done

for i in $C
do
bash encod2Partial.sh bin/zwelsench4.cfg ../YUV/1080p/$i.yuv vid/$i.Full h264enc.steg &
echo $i.Full Done.
done

rm bin/.welsench.cfg


