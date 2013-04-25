#!/bin/bash
if [ $# != 1 ]
then
    echo input copy num
    exit
fi

cfg=$1

source shrc

while (true)
do
    echo runspec --rate=${cfg} --iterations=1 --config=${cfg}.cfg 401 403 429 464 473 483 482
    runspec --rate=${cfg} --iterations=1 --config=${cfg}.cfg 401 403 429 464 473 483 482
done
