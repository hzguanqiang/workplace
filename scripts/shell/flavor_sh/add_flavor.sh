#!/bin/bash
ecus=(1 2 4 6 8 12 16 24 32)
mems=(512 1024 2048 4096 6144 8192 12288 16384 24576 32768)
ephemeral_disks=(0 10 20 30 40 60 80 120 160 200)
local_disk=20
id=1
flavor_id=`nova flavor-list | grep ecus | awk '{print $2}' | sort -n | tail -n1`
if [ "${flavor_id}s" == "s" ]
then
    flavor_id=0
fi
flavor_id=`expr $flavor_id + 1`

echo id,name,mem,disk,ephemeral_disk,vcpu,ecu > add_flavor_list

for ecu in ${ecus[@]}
do
    case $ecu in
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
    for mem in ${mems[@]}
    do
        for ephemeral_disk in ${ephemeral_disks[@]}
        do
            ecus_per_128Mmem=`expr $ecu \* 8192 / $mem`
            if [ "$ecus_per_128Mmem" -lt "1" -o "$ecus_per_128Mmem" -gt "64" ]
            then
                continue
            fi

            echo ${flavor_id},flavor_${id},${mem},20,${ephemeral_disk},${vcpu},${ecus_per_vcpu} >> add_flavor_list
            echo nova flavor-create flavor_${id} $flavor_id $mem $local_disk $vcpu --ephemeral $ephemeral_disk
            nova flavor-create flavor_${id} $flavor_id $mem $local_disk $vcpu --ephemeral $ephemeral_disk
            echo nova-manage flavor set_key --name flavor_${id} --key ecus_per_vcpu: --value $ecus_per_vcpu
            nova-manage flavor set_key --name flavor_${id} --key ecus_per_vcpu: --value $ecus_per_vcpu
            echo
            id=`expr $id + 1`
            flavor_id=`expr $flavor_id + 1`
        done
    done
done
