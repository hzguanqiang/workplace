#!/bin/bash
port=1046

name=test_16

nohup ./start_test.sh 16 &
nohup ./cpu_rate.sh $name &

nohup ./start_pressure.sh 8 1 &
nohup ./start_pressure.sh 4 1 &

sleep 30
while (true)
do
  result=`./check_finish.sh 16`
  echo $result

  ok=`echo $result| grep "runspec finished at"`
  if [ "$ok"s != ""s ]
  then
    echo $result >> ${name}.output
    echo finished
    pkill cpu_rate.sh
    ./stop_pressure.sh 8
    ./stop_pressure.sh 4
    break
  else
    echo not finished
  fi
done
