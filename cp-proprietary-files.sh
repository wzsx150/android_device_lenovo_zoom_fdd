#!/bin/sh

VENDOR=lenovo
DEVICE=zoom_fdd
INDIR=/media/wzsx150/57f8f4bc-abf4-655f-bf67-946fc0f9f25b
OUTDIR=../../../vendor/$VENDOR/$DEVICE/proprietary

COUNT=`cat proprietary-files.txt | grep -v ^# | grep -v ^$ | wc -l | awk {'print $1'}`
for FILE in `cat proprietary-files.txt | grep -v ^# | grep -v ^$`; do
#    COUNT=`expr $COUNT - 1`
    NEWFILE=`echo ${FILE}|sed 's/^\-//g;'`
    mkdir -p `dirname $OUTDIR/$NEWFILE` 2>/dev/null
    cp $INDIR/$NEWFILE $OUTDIR/$NEWFILE
done

INDIR2=/home/wzsx150/cyanogenmod-CM12.1/device/lenovo/zoom_fdd/system
OUTDIR=../../../vendor/$VENDOR/$DEVICE/proprietary

COUNT=`cat proprietary-files-other.txt | grep -v ^# | grep -v ^$ | wc -l | awk {'print $1'}`
for FILE in `cat proprietary-files-other.txt | grep -v ^# | grep -v ^$`; do
#    COUNT=`expr $COUNT - 1`
    NEWFILE=`echo ${FILE}|sed 's/^\-//g;'`
    mkdir -p `dirname $OUTDIR/$NEWFILE` 2>/dev/null
    cp $INDIR2/$NEWFILE $OUTDIR/$NEWFILE
done
