#!/bin/bash
fio --filename=/home/hzguanqiang/test.io --direct=1 --rw=randread -ioengine=sync --bs=32k --size=10G --numjobs=1 --runtime=60 --iodepth=32 --group_reporting --name=test-randread >> randread.io

