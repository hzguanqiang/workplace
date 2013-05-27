#!/bin/bash
port=1046

name=test_4

nohup ./start_test.sh 4 &
nohup ./cpu_rate.sh $name &

nohup ./start_pressure.sh 32 1 &
nohup ./start_pressure.sh 16 1 &
nohup ./start_pressure.sh 12 1 &
nohup ./start_pressure.sh 8 2 &
nohup ./start_pressure.sh 6 1 &

sleep 30
while (true)
do
  result=`./check_finish.sh 4`
  echo $result

  ok=`echo $result| grep "runspec finished at"`
  if [ "$ok"s != ""s ]
  then
    echo $result >> ${name}.output
    echo finished
    pkill cpu_rate.sh
    ./stop_pressure.sh 32
    ./stop_pressure.sh 16
    ./stop_pressure.sh 12
    ./stop_pressure.sh 8
    ./stop_pressure.sh 6
    break
  else
    echo not finished
  fi
done
