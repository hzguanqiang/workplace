#!/bin/bash
port=1046

name=test_32

nohup ./start_test.sh 32 &
nohup ./cpu_rate.sh $name &

nohup ./start_pressure.sh 24 2 &
nohup ./start_pressure.sh 16 2 &

sleep 30
while (true)
do
  result=`./check_finish.sh 32`
  echo $result

  ok=`echo $result| grep "runspec finished at"`
  if [ "$ok"s != ""s ]
  then
    echo $result >> ${name}.output
    echo finished
    pkill cpu_rate.sh
    ./stop_pressure.sh 24
    ./stop_pressure.sh 16
    break
  else
    echo not finished
  fi
  sleep 300
done
