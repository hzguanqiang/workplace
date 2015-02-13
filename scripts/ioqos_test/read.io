test-read: (g=0): rw=read, bs=32K-32K/32K-32K, ioengine=sync, iodepth=32
2.0.8
Starting 1 process
test-read: Laying out IO file(s) (1 file(s) / 10240MB)

fio: terminating on signal 2

fio: terminating on signal 2

fio: terminating on signal 2

fio: terminating on signal 2

fio: terminating on signal 15

fio: terminating on signal 2

fio: terminating on signal 2


Run status group 0 (all jobs):
test-read: (g=0): rw=read, bs=32K-32K/32K-32K, ioengine=sync, iodepth=32
2.0.8
Starting 1 process

test-read: (groupid=0, jobs=1): err= 0: pid=4143
  read : io=5710.7MB, bw=97459KB/s, iops=3045 , runt= 60001msec
    clat (usec): min=82 , max=60409 , avg=324.96, stdev=332.32
     lat (usec): min=82 , max=60409 , avg=325.22, stdev=332.33
    clat percentiles (usec):
     |  1.00th=[   84],  5.00th=[  258], 10.00th=[  270], 20.00th=[  282],
     | 30.00th=[  302], 40.00th=[  322], 50.00th=[  330], 60.00th=[  334],
     | 70.00th=[  338], 80.00th=[  346], 90.00th=[  354], 95.00th=[  362],
     | 99.00th=[  390], 99.50th=[  418], 99.90th=[ 1752], 99.95th=[ 8640],
     | 99.99th=[12736]
    bw (KB/s)  : min=54592, max=161216, per=100.00%, avg=97502.27, stdev=9941.00
    lat (usec) : 100=1.55%, 250=2.24%, 500=95.97%, 750=0.13%, 1000=0.01%
    lat (msec) : 2=0.01%, 4=0.01%, 10=0.07%, 20=0.01%, 50=0.01%
    lat (msec) : 100=0.01%
  cpu          : usr=1.69%, sys=6.07%, ctx=182772, majf=0, minf=34
  IO depths    : 1=100.0%, 2=0.0%, 4=0.0%, 8=0.0%, 16=0.0%, 32=0.0%, >=64=0.0%
     submit    : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     complete  : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     issued    : total=r=182739/w=0/d=0, short=r=0/w=0/d=0

Run status group 0 (all jobs):
   READ: io=5710.7MB, aggrb=97459KB/s, minb=97459KB/s, maxb=97459KB/s, mint=60001msec, maxt=60001msec

Disk stats (read/write):
  sda: ios=184212/49, merge=2848/28, ticks=54056/2576, in_queue=56456, util=88.87%
test-read: (g=0): rw=read, bs=32K-32K/32K-32K, ioengine=sync, iodepth=32
2.0.8
Starting 1 process

test-read: (groupid=0, jobs=1): err= 0: pid=4153
  read : io=5522.8MB, bw=94253KB/s, iops=2945 , runt= 60001msec
    clat (usec): min=82 , max=33107 , avg=336.11, stdev=305.47
     lat (usec): min=82 , max=33108 , avg=336.36, stdev=305.47
    clat percentiles (usec):
     |  1.00th=[  120],  5.00th=[  266], 10.00th=[  274], 20.00th=[  294],
     | 30.00th=[  318], 40.00th=[  326], 50.00th=[  334], 60.00th=[  338],
     | 70.00th=[  350], 80.00th=[  362], 90.00th=[  378], 95.00th=[  390],
     | 99.00th=[  414], 99.50th=[  442], 99.90th=[ 2640], 99.95th=[ 8640],
     | 99.99th=[16192]
    bw (KB/s)  : min=50368, max=141221, per=99.99%, avg=94241.83, stdev=10215.59
    lat (usec) : 100=0.81%, 250=2.24%, 500=96.68%, 750=0.14%, 1000=0.01%
    lat (msec) : 2=0.01%, 4=0.01%, 10=0.08%, 20=0.01%, 50=0.01%
  cpu          : usr=1.51%, sys=6.11%, ctx=176757, majf=0, minf=33
  IO depths    : 1=100.0%, 2=0.0%, 4=0.0%, 8=0.0%, 16=0.0%, 32=0.0%, >=64=0.0%
     submit    : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     complete  : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     issued    : total=r=176728/w=0/d=0, short=r=0/w=0/d=0

Run status group 0 (all jobs):
   READ: io=5522.8MB, aggrb=94253KB/s, minb=94253KB/s, maxb=94253KB/s, mint=60001msec, maxt=60001msec

Disk stats (read/write):
  sda: ios=178171/47, merge=2756/25, ticks=53940/2264, in_queue=55964, util=88.72%
test-read: (g=0): rw=read, bs=32K-32K/32K-32K, ioengine=sync, iodepth=32
2.0.8
Starting 1 process

test-read: (groupid=0, jobs=1): err= 0: pid=4251
  read : io=5627.9MB, bw=96046KB/s, iops=3001 , runt= 60001msec
    clat (usec): min=80 , max=46411 , avg=329.81, stdev=303.16
     lat (usec): min=80 , max=46411 , avg=330.06, stdev=303.17
    clat percentiles (usec):
     |  1.00th=[   84],  5.00th=[  258], 10.00th=[  270], 20.00th=[  286],
     | 30.00th=[  310], 40.00th=[  326], 50.00th=[  330], 60.00th=[  334],
     | 70.00th=[  342], 80.00th=[  354], 90.00th=[  370], 95.00th=[  382],
     | 99.00th=[  406], 99.50th=[  446], 99.90th=[ 2352], 99.95th=[ 8640],
     | 99.99th=[ 9664]
    bw (KB/s)  : min=55360, max=159552, per=100.00%, avg=96066.58, stdev=11357.09
    lat (usec) : 100=1.55%, 250=2.69%, 500=95.45%, 750=0.19%, 1000=0.01%
    lat (msec) : 2=0.01%, 4=0.02%, 10=0.08%, 20=0.01%, 50=0.01%
  cpu          : usr=1.44%, sys=6.26%, ctx=180121, majf=0, minf=33
  IO depths    : 1=100.0%, 2=0.0%, 4=0.0%, 8=0.0%, 16=0.0%, 32=0.0%, >=64=0.0%
     submit    : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     complete  : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     issued    : total=r=180090/w=0/d=0, short=r=0/w=0/d=0

Run status group 0 (all jobs):
   READ: io=5627.9MB, aggrb=96046KB/s, minb=96046KB/s, maxb=96046KB/s, mint=60001msec, maxt=60001msec

Disk stats (read/write):
  sda: ios=181566/63, merge=2808/37, ticks=54300/3544, in_queue=57652, util=89.44%
