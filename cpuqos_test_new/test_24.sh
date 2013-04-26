#!/bin/bash
port=22

name=test_24

nohup ./start_test.sh 24 &
nohup ./cpu_rate.sh $name &


while (true)
do
  result=`./check_finish.sh 24`
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
done
