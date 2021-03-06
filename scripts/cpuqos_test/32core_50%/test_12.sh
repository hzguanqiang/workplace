#!/bin/bash
port=22

name=test_12

nohup ./start_test.sh 12 &
nohup ./cpu_rate.sh $name &

nohup ./start_pressure.sh 32 4 &
nohup ./start_pressure.sh 24 4 &
nohup ./start_pressure.sh 16 2 &
nohup ./start_pressure.sh 8 2 &
nohup ./start_pressure.sh 6 1 &
nohup ./start_pressure.sh 4 1 &
nohup ./start_pressure.sh 2 1 &
nohup ./start_pressure.sh 1 1 &

while (true)
do
  result=`./check_finish.sh 12`
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
done
