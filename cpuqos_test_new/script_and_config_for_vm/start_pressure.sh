#!/bin/bash
if [ $# != 1 ]
then
    echo input copy num
    exit
fi
echo nohup ./N_test.sh $1 &
nohup ./N_test.sh $1 &
