#!/bin/bash
if [ $# != 1 ]
then
    echo input copy num
    exit
fi
cfg=$1

source shrc

pkill runspec
pkill runspec
pkill runspec
echo runspec --rate=${cfg} --action clean --iterations=1 --config=${cfg}.cfg 401 403 429 464 473 483 482
nohup runspec --rate=${cfg} --action clean --iterations=1 --config=${cfg}.cfg 401 403 429 464 473 483 482 &
