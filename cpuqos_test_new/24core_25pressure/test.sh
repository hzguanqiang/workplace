#!/bin/sh
nova stop test_24
nova stop test_1
sleep 60
echo run cpuspec for test_32
./test_32.sh
sleep 60

echo run cpuspec for test_16
./test_16.sh
sleep 60

echo run cpuspec for test_12
./test_12.sh
sleep 60

echo run cpuspec for test_8
./test_8.sh
sleep 60

echo run cpuspec for test_6
./test_6.sh
sleep 60

echo run cpuspec for test_4
./test_4.sh
sleep 60

echo run cpuspec for test_2
./test_2.sh
sleep 60

nova start test_1
nova stop test_2
sleep 300

echo run cpuspec for test_1
./test_1.sh
sleep 60


nova start test_24 
nova stop test_8
nova stop test_16
sleep 300

echo run cpuspec for test_24
./test_24.sh
