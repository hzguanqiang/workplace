#!/bin/bash
port=1046

name=test_6

nohup ./start_test.sh 6 &
nohup ./cpu_rate.sh $name &

nohup ./start_pressure.sh 32 4 &
nohup ./start_pressure.sh 16 2 &
nohup ./start_pressure.sh 12 2 &
nohup ./start_pressure.sh 8 1 &
nohup ./start_pressure.sh 4 2 &
nohup ./start_pressure.sh 2 1 &

sleep 30
while (true)
do
  result=`./check_finish.sh 6`
  echo $result

  ok=`echo $result| grep "runspec finished at"`
  if [ "$ok"s != ""s ]
  then
    echo $result >> ${name}.output
    echo finished
    pkill cpu_rate.sh
    ./stop.sh
    break
  else
    echo not finished
  fi
done
