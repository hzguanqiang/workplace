test-write: (g=0): rw=write, bs=32K-32K/32K-32K, ioengine=sync, iodepth=32
2.0.8
Starting 1 process

test-write: (groupid=0, jobs=1): err= 0: pid=4283
  write: io=4685.3MB, bw=79961KB/s, iops=2498 , runt= 60001msec
    clat (usec): min=101 , max=78393 , avg=396.14, stdev=1190.18
     lat (usec): min=102 , max=78395 , avg=397.87, stdev=1190.19
    clat percentiles (usec):
     |  1.00th=[  106],  5.00th=[  111], 10.00th=[  113], 20.00th=[  131],
     | 30.00th=[  149], 40.00th=[  163], 50.00th=[  177], 60.00th=[  205],
     | 70.00th=[  227], 80.00th=[  326], 90.00th=[  692], 95.00th=[  820],
     | 99.00th=[ 6112], 99.50th=[ 8768], 99.90th=[17024], 99.95th=[21376],
     | 99.99th=[31104]
    bw (KB/s)  : min=64832, max=274240, per=100.00%, avg=80017.26, stdev=18804.17
    lat (usec) : 250=75.37%, 500=7.62%, 750=9.80%, 1000=4.31%
    lat (msec) : 2=1.06%, 4=0.46%, 10=1.16%, 20=0.16%, 50=0.06%
    lat (msec) : 100=0.01%
  cpu          : usr=1.23%, sys=4.09%, ctx=149956, majf=0, minf=24
  IO depths    : 1=100.0%, 2=0.0%, 4=0.0%, 8=0.0%, 16=0.0%, 32=0.0%, >=64=0.0%
     submit    : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     complete  : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     issued    : total=r=0/w=149929/d=0, short=r=0/w=0/d=0

Run status group 0 (all jobs):
  WRITE: io=4685.3MB, aggrb=79960KB/s, minb=79960KB/s, maxb=79960KB/s, mint=60001msec, maxt=60001msec

Disk stats (read/write):
  sda: ios=0/151234, merge=0/2384, ticks=0/59424, in_queue=59340, util=93.47%
test-write: (g=0): rw=write, bs=32K-32K/32K-32K, ioengine=sync, iodepth=32
2.0.8
Starting 1 process

test-write: (groupid=0, jobs=1): err= 0: pid=4458
  write: io=4671.8MB, bw=79730KB/s, iops=2491 , runt= 60001msec
    clat (usec): min=105 , max=38402 , avg=397.25, stdev=1204.31
     lat (usec): min=106 , max=38404 , avg=399.01, stdev=1204.31
    clat percentiles (usec):
     |  1.00th=[  110],  5.00th=[  111], 10.00th=[  113], 20.00th=[  126],
     | 30.00th=[  145], 40.00th=[  161], 50.00th=[  173], 60.00th=[  191],
     | 70.00th=[  215], 80.00th=[  326], 90.00th=[  716], 95.00th=[  836],
     | 99.00th=[ 6304], 99.50th=[ 8768], 99.90th=[17792], 99.95th=[21888],
     | 99.99th=[29056]
    bw (KB/s)  : min=70976, max=217856, per=100.00%, avg=79789.03, stdev=15466.76
    lat (usec) : 250=76.49%, 500=6.07%, 750=9.17%, 1000=5.19%
    lat (msec) : 2=1.27%, 4=0.43%, 10=1.15%, 20=0.18%, 50=0.07%
  cpu          : usr=1.51%, sys=3.82%, ctx=149524, majf=0, minf=24
  IO depths    : 1=100.0%, 2=0.0%, 4=0.0%, 8=0.0%, 16=0.0%, 32=0.0%, >=64=0.0%
     submit    : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     complete  : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     issued    : total=r=0/w=149496/d=0, short=r=0/w=0/d=0

Run status group 0 (all jobs):
  WRITE: io=4671.8MB, aggrb=79729KB/s, minb=79729KB/s, maxb=79729KB/s, mint=60001msec, maxt=60001msec

Disk stats (read/write):
  sda: ios=0/150869, merge=0/2380, ticks=0/59272, in_queue=59136, util=92.94%
test-write: (g=0): rw=write, bs=32K-32K/32K-32K, ioengine=sync, iodepth=32
2.0.8
Starting 1 process

test-write: (groupid=0, jobs=1): err= 0: pid=5283
  write: io=4708.2MB, bw=80351KB/s, iops=2510 , runt= 60001msec
    clat (usec): min=100 , max=36856 , avg=394.27, stdev=1160.40
     lat (usec): min=101 , max=36858 , avg=396.04, stdev=1160.40
    clat percentiles (usec):
     |  1.00th=[  106],  5.00th=[  111], 10.00th=[  114], 20.00th=[  143],
     | 30.00th=[  151], 40.00th=[  163], 50.00th=[  179], 60.00th=[  207],
     | 70.00th=[  229], 80.00th=[  326], 90.00th=[  684], 95.00th=[  820],
     | 99.00th=[ 6112], 99.50th=[ 8768], 99.90th=[17024], 99.95th=[20864],
     | 99.99th=[27520]
    bw (KB/s)  : min=71296, max=275904, per=100.00%, avg=80405.64, stdev=18749.74
    lat (usec) : 250=74.98%, 500=8.26%, 750=9.87%, 1000=4.11%
    lat (msec) : 2=0.95%, 4=0.47%, 10=1.12%, 20=0.18%, 50=0.06%
  cpu          : usr=1.32%, sys=3.92%, ctx=150695, majf=0, minf=24
  IO depths    : 1=100.0%, 2=0.0%, 4=0.0%, 8=0.0%, 16=0.0%, 32=0.0%, >=64=0.0%
     submit    : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     complete  : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     issued    : total=r=0/w=150660/d=0, short=r=0/w=0/d=0

Run status group 0 (all jobs):
  WRITE: io=4708.2MB, aggrb=80350KB/s, minb=80350KB/s, maxb=80350KB/s, mint=60001msec, maxt=60001msec

Disk stats (read/write):
  sda: ios=0/151990, merge=0/2398, ticks=0/60440, in_queue=60312, util=93.42%
