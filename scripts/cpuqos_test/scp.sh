#!/bin/bash
port=1046
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
#files=sources.list
#dest=/etc/apt/
files=script_and_config_for_vm/*
dest=/root/cpu2006/

for ip in ${ips[@]}
do
    echo configure $ip:
    ssh -p${port} -i ${key} root@${ip} "hostname"
    echo begin to send ${files} :
    scp -r -P${port} -i ${key} ${files} root@${ip}:${dest}
done


