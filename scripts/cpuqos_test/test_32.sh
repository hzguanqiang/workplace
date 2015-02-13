#!/bin/bash
port=1046

name=test_32

nohup ./start_test.sh 32 &
nohup ./cpu_rate.sh $name &

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
    break
  else
    echo not finished
  fi
  sleep 300
done
