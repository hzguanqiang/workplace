#!/bin/bash

pkill start_test.sh
pkill cpu_rate.sh
pkill start_pressure.sh

./stop_pressure.sh 32
./stop_pressure.sh 24
./stop_pressure.sh 16
./stop_pressure.sh 12
./stop_pressure.sh 8
./stop_pressure.sh 6
./stop_pressure.sh 4
./stop_pressure.sh 2
./stop_pressure.sh 1
