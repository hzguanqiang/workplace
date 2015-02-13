#!/bin/bash
fio --filename=/home/hzguanqiang/test.io --direct=1 --rw=read -ioengine=sync --bs=32k --size=10G --numjobs=1 --runtime=60 --iodepth=32 --group_reporting --name=test-read >> read.io
