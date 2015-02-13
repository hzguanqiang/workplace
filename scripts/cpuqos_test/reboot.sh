#!/bin/bash
port=1046

vms=(test_1 test_2 test_4 test_6 test_8 test_12 test_16 test_24 test_32)

for vm in ${vms[@]}
do
    echo nova stop $vm
    nova stop $vm
done

sleep 10

for vm in ${vms[@]}
do
    echo nova start $vm
    nova start $vm
done

