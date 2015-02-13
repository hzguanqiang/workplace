#!/bin/bash
port=22

name=test_2

nohup ./start_test.sh 2 &
nohup ./cpu_rate.sh $name &

nohup ./start_pressure.sh 32 4 &
nohup ./start_pressure.sh 24 4 &
nohup ./start_pressure.sh 16 2 &
nohup ./start_pressure.sh 12 2 &
nohup ./start_pressure.sh 8 2 &
nohup ./start_pressure.sh 6 2 &
nohup ./start_pressure.sh 4 2 &
nohup ./start_pressure.sh 1 1 &

while (true)
do
  result=`./check_finish.sh 2`
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
