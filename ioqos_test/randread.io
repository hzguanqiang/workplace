test-randread: (g=0): rw=randread, bs=32K-32K/32K-32K, ioengine=sync, iodepth=32
2.0.8
Starting 1 process

test-randread: (groupid=0, jobs=1): err= 0: pid=5299
  read : io=294784KB, bw=4912.9KB/s, iops=153 , runt= 60003msec
    clat (usec): min=167 , max=35490 , avg=6507.65, stdev=3050.33
     lat (usec): min=167 , max=35490 , avg=6508.03, stdev=3050.33
    clat percentiles (usec):
     |  1.00th=[  225],  5.00th=[ 2224], 10.00th=[ 2896], 20.00th=[ 3824],
     | 30.00th=[ 4704], 40.00th=[ 5600], 50.00th=[ 6368], 60.00th=[ 7264],
     | 70.00th=[ 8160], 80.00th=[ 9024], 90.00th=[ 9920], 95.00th=[10560],
     | 99.00th=[16768], 99.50th=[18304], 99.90th=[19584], 99.95th=[29312],
     | 99.99th=[35584]
    bw (KB/s)  : min= 3842, max= 5864, per=100.00%, avg=4916.82, stdev=296.94
    lat (usec) : 250=1.68%, 500=0.73%, 750=0.09%
    lat (msec) : 2=1.48%, 4=18.18%, 10=68.19%, 20=9.55%, 50=0.10%
  cpu          : usr=0.10%, sys=0.47%, ctx=9213, majf=0, minf=32
  IO depths    : 1=100.0%, 2=0.0%, 4=0.0%, 8=0.0%, 16=0.0%, 32=0.0%, >=64=0.0%
     submit    : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     complete  : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     issued    : total=r=9212/w=0/d=0, short=r=0/w=0/d=0

Run status group 0 (all jobs):
   READ: io=294784KB, aggrb=4912KB/s, minb=4912KB/s, maxb=4912KB/s, mint=60003msec, maxt=60003msec

Disk stats (read/write):
  sda: ios=9316/61, merge=134/51, ticks=60200/876, in_queue=61056, util=99.13%
test-randread: (g=0): rw=randread, bs=32K-32K/32K-32K, ioengine=sync, iodepth=32
2.0.8
Starting 1 process

test-randread: (groupid=0, jobs=1): err= 0: pid=5398
  read : io=297568KB, bw=4959.4KB/s, iops=154 , runt= 60002msec
    clat (usec): min=164 , max=55135 , avg=6446.55, stdev=2972.74
     lat (usec): min=164 , max=55135 , avg=6446.95, stdev=2972.73
    clat percentiles (usec):
     |  1.00th=[  231],  5.00th=[ 2224], 10.00th=[ 2896], 20.00th=[ 3824],
     | 30.00th=[ 4640], 40.00th=[ 5536], 50.00th=[ 6368], 60.00th=[ 7264],
     | 70.00th=[ 8096], 80.00th=[ 9024], 90.00th=[ 9920], 95.00th=[10432],
     | 99.00th=[15040], 99.50th=[17024], 99.90th=[23680], 99.95th=[30080],
     | 99.99th=[55040]
    bw (KB/s)  : min= 3760, max= 6007, per=100.00%, avg=4963.67, stdev=299.62
    lat (usec) : 250=1.61%, 500=0.85%, 750=0.08%
    lat (msec) : 2=1.51%, 4=18.20%, 10=68.77%, 20=8.88%, 50=0.10%
    lat (msec) : 100=0.01%
  cpu          : usr=0.09%, sys=0.49%, ctx=9300, majf=0, minf=32
  IO depths    : 1=100.0%, 2=0.0%, 4=0.0%, 8=0.0%, 16=0.0%, 32=0.0%, >=64=0.0%
     submit    : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     complete  : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     issued    : total=r=9299/w=0/d=0, short=r=0/w=0/d=0

Run status group 0 (all jobs):
   READ: io=297568KB, aggrb=4959KB/s, minb=4959KB/s, maxb=4959KB/s, mint=60002msec, maxt=60002msec

Disk stats (read/write):
  sda: ios=9405/53, merge=134/30, ticks=60232/648, in_queue=60868, util=99.14%
test-randread: (g=0): rw=randread, bs=32K-32K/32K-32K, ioengine=sync, iodepth=32
2.0.8
Starting 1 process

test-randread: (groupid=0, jobs=1): err= 0: pid=5478
  read : io=296928KB, bw=4948.5KB/s, iops=154 , runt= 60004msec
    clat (usec): min=142 , max=43943 , avg=6460.62, stdev=2991.00
     lat (usec): min=143 , max=43943 , avg=6461.03, stdev=2991.01
    clat percentiles (usec):
     |  1.00th=[  227],  5.00th=[ 2256], 10.00th=[ 2896], 20.00th=[ 3824],
     | 30.00th=[ 4640], 40.00th=[ 5536], 50.00th=[ 6368], 60.00th=[ 7264],
     | 70.00th=[ 8096], 80.00th=[ 9024], 90.00th=[ 9920], 95.00th=[10560],
     | 99.00th=[15680], 99.50th=[17536], 99.90th=[21376], 99.95th=[26752],
     | 99.99th=[43776]
    bw (KB/s)  : min= 4087, max= 6031, per=100.00%, avg=4952.50, stdev=305.73
    lat (usec) : 250=1.49%, 500=0.93%, 750=0.09%
    lat (msec) : 2=1.33%, 4=18.50%, 10=68.73%, 20=8.82%, 50=0.13%
  cpu          : usr=0.11%, sys=0.47%, ctx=9281, majf=0, minf=32
  IO depths    : 1=100.0%, 2=0.0%, 4=0.0%, 8=0.0%, 16=0.0%, 32=0.0%, >=64=0.0%
     submit    : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     complete  : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     issued    : total=r=9279/w=0/d=0, short=r=0/w=0/d=0

Run status group 0 (all jobs):
   READ: io=296928KB, aggrb=4948KB/s, minb=4948KB/s, maxb=4948KB/s, mint=60004msec, maxt=60004msec

Disk stats (read/write):
  sda: ios=9381/56, merge=134/27, ticks=60192/796, in_queue=60976, util=99.07%
