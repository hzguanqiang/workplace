#!/bin/sh

while [ 1 ]
do
mem=`cat /proc/meminfo | grep MemFree | awk '{print $2}'`
echo $mem
if [ $mem -lt 102400 ]
then
    zenity --error --text='Out of Memory, mem: '$mem --title=’Warning‘
else
    echo 'Memory has '$mem 'remaining, more than 100MB'
fi

sleep 3

load=`cat /proc/loadavg | awk '{print $2}'`
echo $load
if [ $(echo "$load >= 2"|bc) = 1 ]
then
    zenity --error --text='load more than 2' --title='Warning'
else
    echo 'load: '$load
fi

sleep 30
done
