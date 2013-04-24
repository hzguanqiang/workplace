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

    case $target in
        1)    vcpu=1
              ecus_per_vcpu=1;;
        2)    vcpu=1
              ecus_per_vcpu=2;;
        4)    vcpu=2
              ecus_per_vcpu=2;;
        6)    vcpu=2
              ecus_per_vcpu=3;;
        8)    vcpu=4
              ecus_per_vcpu=2;;
        12)   vcpu=4
              ecus_per_vcpu=3;;
        16)   vcpu=4
              ecus_per_vcpu=4;;
        24)   vcpu=6
              ecus_per_vcpu=4;;
        32)   vcpu=8
              ecus_per_vcpu=4
    esac

echo ssh -i ${key} root@${ip} "hostname; cd /root/cpu2006; nohup ./1_test.sh ${vcpu} &"
ssh -i ${key} root@${ip} "hostname; cd /root/cpu2006; nohup ./1_test.sh ${vcpu} &"
