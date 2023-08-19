#!/bin/bash
A=`date +%N%s`
log=$(echo $3 | sed -e 's:vid/::')
cat $1 | sed -e "s:FFFFF:$2:" -e "s:GGGGG:$3:" > bin/.$A.cfg
./bin/$4	bin/.$A.cfg > log/$log.log
rm bin/.$A.cfg
echo $3 Done.

