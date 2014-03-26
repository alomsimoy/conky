#!/bin/sh
vol=`amixer get Master | grep Mono: | awk '{print $4}' | grep -Eo '[0-9]{1,3}'`
mute=`amixer get Master | grep Mono: | awk '{print $6}'`
if [ $mute = [on] ];
then
echo $vol
exit 0
else
echo Mute
exit
fi