#!/bin/bash
port=22

name=test_32

nohup ./start_test.sh 32 &
nohup ./cpu_rate.sh $name &

nohup ./start_pressure.sh 24 2 &
nohup ./start_pressure.sh 16 2 &
nohup ./start_pressure.sh 12 2 &
nohup ./start_pressure.sh 8 2 &
nohup ./start_pressure.sh 6 1 &
nohup ./start_pressure.sh 4 1 &
nohup ./start_pressure.sh 1 1 &

while (true)
do
  result=`./check_finish.sh 32`
  echo $result

  ok=`echo $result| grep "runspec finished at"`
  if [ "$ok"s != ""s ]
  then
    echo $result >> ${name}.output
    echo finished
    ./stop.sh
    break
  else
    echo not finished
  fi
  sleep 300
done
