#!/bin/bash
port=22
if [ "$#" != "1" ]
then
   echo "please input the ecu_nums as argument"
   exit
fi

target=$1
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

host=test_$target
echo $host

eval ip="$"$host
echo ip: $ip

key=new_id_rsa

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

echo ssh -p${port} -i ${key} root@${ip} "hostname; cd /root/cpu2006;  ./1_test.sh ${vcpu}"
ssh -p${port} -i ${key} root@${ip} "hostname; cd /root/cpu2006;  ./1_test.sh ${vcpu} "
