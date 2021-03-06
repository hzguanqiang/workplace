#!/bin/bash
port=1046
if [ "$#" != "1" ]
then
   echo "please input the ecu_nums as argument"
   exit
fi
ipList=./ipList
target=$1
test_1=`grep test_1= $ipList | awk -F '=' '{print $2}'`
test_2=`grep test_2= $ipList | awk -F '=' '{print $2}'`
test_4=`grep test_4= $ipList | awk -F '=' '{print $2}'`
test_6=`grep test_6= $ipList | awk -F '=' '{print $2}'`
test_8=`grep test_8= $ipList | awk -F '=' '{print $2}'`
test_12=`grep test_12= $ipList | awk -F '=' '{print $2}'`
test_16=`grep test_16= $ipList | awk -F '=' '{print $2}'`
test_24=`grep test_24= $ipList | awk -F '=' '{print $2}'`
test_32=`grep test_32= $ipList | awk -F '=' '{print $2}'`

host=test_$target
echo $host

eval ip="$"$host
echo ip: $ip

key=new_id_rsa

ssh -p${port} -i ${key} root@${ip} "hostname; cd /root/cpu2006; ./check_finish.sh"
