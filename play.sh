#!/bin/bash

hour=`date +"%I"`

if [ `date +"%M"` -lt 10 ];
then # 1-9
    minFirst=00
    minSecond=`date +"%M" | sed -e 's/^.*\(.\)$/\1/'`
elif [ `date +"%M"` -eq 0 ];
then # o clock
    minFirst=0
    minSecond=0
elif [ `date +"%M"` -gt 19 ];
then # 20-60
    minFirst=`date +"%M" | sed 's/\B\w*//g;s/\s//g'`
    minFirst=`echo $minFirst\0`
    minSecond=`date +"%M" | sed -e 's/^.*\(.\)$/\1/'`
else # 10-19
    minFirst=`date +"%M"`
    minSecond=0
fi

minAmPm=`date +"%P"`
    aplay sound/its.wav
    aplay sound/$hour.wav
    aplay sound/$minFirst.wav
    aplay sound/$minSecond.wav
    aplay sound/$minAmPm.wav

