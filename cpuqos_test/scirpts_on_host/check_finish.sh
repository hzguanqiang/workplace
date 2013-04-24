#!/bin/bash
if [ "$#" != "1" ]
then
   echo "please input the ecu_nums as argument"
   exit
fi

target=$1
test_12=10.120.37.172
test_16=10.120.37.168
test_1=10.120.37.179
test_24=10.120.37.163
test_2=10.120.37.176
test_32=10.120.37.162
test_4=10.120.37.178
test_6=10.120.37.177
test_8=10.120.37.175

host=test_$target
echo $host

eval ip="$"$host
echo ip: $ip

key=opstest_cpuqos.private

ssh -i ${key} root@${ip} "hostname; cd /root/cpu2006; ./check_finish.sh"
