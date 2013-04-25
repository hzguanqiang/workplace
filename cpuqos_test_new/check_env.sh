#!/bin/bash
port=22
ipList=./ipList
test_1=`grep test_1= $ipList | awk -F '=' '{print $2}'`
test_2=`grep test_2= $ipList | awk -F '=' '{print $2}'`
test_4=`grep test_4= $ipList | awk -F '=' '{print $2}'`
test_6=`grep test_6= $ipList | awk -F '=' '{print $2}'`
test_8=`grep test_8= $ipList | awk -F '=' '{print $2}'`
test_12=`grep test_12= $ipList | awk -F '=' '{print $2}'`
test_16=`grep test_16= $ipList | awk -F '=' '{print $2}'`
test_24=`grep test_24= $ipList | awk -F '=' '{print $2}'`
test_32=`grep test_32= $ipList | awk -F '=' '{print $2}'`

ips=($test_1 $test_2 $test_4 $test_6 $test_8 $test_12 $test_16 $test_24 $test_32)
key=new_id_rsa
tools=cpu2006.tar

for ip in ${ips[@]}
do
    echo check $ip:
    ssh -p${port} -i ${key} root@${ip} "hostname; ls -l /root/;  dpkg -l|grep numactl; dpkg -l|grep gcc; dpkg -l|grep g++; dpkg -l|grep gfortran; dpkg -l|grep make"
done
