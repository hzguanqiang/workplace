#!/bin/sh

while [ 1 ]
do
mem=`cat /proc/meminfo | grep MemFree | awk '{print $2}'`
echo $mem
if [ $mem -lt 102400 ]
then
    zenity --error --text='Out of Memory, mem: '$mem --title=’Warning‘
else
    echo 'Memory has '$mem 'remaining, more than 100MB' > /dev/null
fi

sleep 3

load=`cat /proc/loadavg | awk '{print $2}'`
echo $load
if [ $(echo "$load >= 2"|bc) = 1 ]
then
    # kill the program which has the highest cpu usage
    pid=`top -b -n1 | sed -n 8p | awk '{print $1}'`
    process_name=`top -b -n1 | sed -n 8p | awk '{print $12}'`
    sudo kill -9 $pid
    zenity --error --text='load more than 2, kill process '$process_name --title='Warning'
else
    echo 'load: '$load ', little than 2' > /dev/null
fi

sleep 30
done
