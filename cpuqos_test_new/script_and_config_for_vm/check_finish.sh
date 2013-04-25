#!/bin/bash

#path='/home/hzguanqiang/cpuqos/cpu2006/result'
path='/root/cpu2006/result'

log_file=`ls -l -rt ${path}/*.log | tail -n1 |awk '{print $9}'`
echo $log_file

test_num=`ls -l -rt ${path}/*.log | tail -n1 |awk '{print $9}'| awk -F '.' '{print $2}'`

CINT=${path}/CINT2006.${test_num}.ref.txt
CFP=${path}/CFP2006.${test_num}.ref.txt

start_time=`grep 'started at' ${log_file} | grep runspec`
echo $start_time
while (true)
do
  finish_time=`grep 'runspec finished at' ${log_file}`
  if [ "${finish_time}s" != "s" ]
  then
    cint_score=`grep "Cint(R)_rate_base2006" ${CINT} | awk '{print $3}'`
    cfp_score=`grep "Cfp(R)_rate_base2006" ${CFP} | awk '{print $3}'`
    echo $start_time
    echo $finish_time
    echo result: int: ${cint_score} float: ${cfp_score}
    break
  else
    echo $start_time
    echo The cpuspec has not finished!!
  fi
  sleep 120
done
