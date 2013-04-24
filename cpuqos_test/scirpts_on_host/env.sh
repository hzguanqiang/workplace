#!/bin/bash
test_12=10.120.37.172
test_16=10.120.37.168
test_1=10.120.37.179
test_24=10.120.37.163
test_2=10.120.37.176
test_32=10.120.37.162
test_4=10.120.37.178
test_6=10.120.37.177
test_8=10.120.37.175
ips=($test_1 $test_2 $test_4 $test_6 $test_8 $test_12 $test_16 $test_24 $test_32)
key=opstest_cpuqos.private
tools=cpu2006.tar

for ip in ${ips[@]}
do
    echo configure $ip:
    ssh -i ${key} root@${ip} "hostname"
    echo begin to send ${tools} :
    scp -i ${key} ./${tools} root@${ip}:/root
    echo begin to configure cpuspec:
    ssh -i ${key} root@${ip} "hostname; rm -rf /root/cpu2006; tar -xf /root/${tools}; apt-get update; apt-get install -y numactl gcc g++ gfortran make; cd /root/cpu2006; ./install.sh; dpkg -l|grep numactl; dpkg -l|grep gcc; dpkg -l|grep g++; dpkg -l|grep gfortran; dpkg -l|grep make"
done
