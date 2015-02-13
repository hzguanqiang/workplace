test-randwrite: (g=0): rw=randwrite, bs=32K-32K/32K-32K, ioengine=sync, iodepth=32
2.0.8
Starting 1 process

test-randwrite: (groupid=0, jobs=1): err= 0: pid=5509
  write: io=771200KB, bw=12853KB/s, iops=401 , runt= 60003msec
    clat (usec): min=106 , max=853079 , avg=2482.82, stdev=8747.51
     lat (usec): min=106 , max=853080 , avg=2484.67, stdev=8747.52
    clat percentiles (usec):
     |  1.00th=[  113],  5.00th=[  118], 10.00th=[  215], 20.00th=[  302],
     | 30.00th=[  580], 40.00th=[ 1400], 50.00th=[ 1832], 60.00th=[ 2256],
     | 70.00th=[ 2832], 80.00th=[ 3856], 90.00th=[ 5408], 95.00th=[ 7072],
     | 99.00th=[10944], 99.50th=[12736], 99.90th=[19072], 99.95th=[28544],
     | 99.99th=[528384]
    bw (KB/s)  : min=  137, max=73612, per=100.00%, avg=12997.34, stdev=6638.23
    lat (usec) : 250=14.04%, 500=15.02%, 750=2.84%, 1000=2.84%
    lat (msec) : 2=19.84%, 4=26.74%, 10=17.22%, 20=1.37%, 50=0.04%
    lat (msec) : 100=0.02%, 250=0.01%, 500=0.01%, 750=0.01%, 1000=0.01%
  cpu          : usr=0.32%, sys=1.09%, ctx=24110, majf=0, minf=23
  IO depths    : 1=100.0%, 2=0.0%, 4=0.0%, 8=0.0%, 16=0.0%, 32=0.0%, >=64=0.0%
     submit    : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     complete  : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     issued    : total=r=0/w=24100/d=0, short=r=0/w=0/d=0

Run status group 0 (all jobs):
  WRITE: io=771200KB, aggrb=12852KB/s, minb=12852KB/s, maxb=12852KB/s, mint=60003msec, maxt=60003msec

Disk stats (read/write):
  sda: ios=0/24470, merge=0/389, ticks=0/62120, in_queue=62084, util=97.94%
test-randwrite: (g=0): rw=randwrite, bs=32K-32K/32K-32K, ioengine=sync, iodepth=32
2.0.8
Starting 1 process

test-randwrite: (groupid=0, jobs=1): err= 0: pid=5683
  write: io=763840KB, bw=12730KB/s, iops=397 , runt= 60001msec
    clat (usec): min=110 , max=1033.4K, avg=2506.80, stdev=11265.10
     lat (usec): min=112 , max=1033.4K, avg=2508.69, stdev=11265.10
    clat percentiles (usec):
     |  1.00th=[  115],  5.00th=[  149], 10.00th=[  205], 20.00th=[  294],
     | 30.00th=[  540], 40.00th=[ 1416], 50.00th=[ 1832], 60.00th=[ 2224],
     | 70.00th=[ 2800], 80.00th=[ 3792], 90.00th=[ 5408], 95.00th=[ 7072],
     | 99.00th=[11328], 99.50th=[13120], 99.90th=[20096], 99.95th=[30592],
     | 99.99th=[921600]
    bw (KB/s)  : min= 2904, max=73370, per=100.00%, avg=13159.07, stdev=7069.63
    lat (usec) : 250=14.76%, 500=14.87%, 750=2.58%, 1000=2.56%
    lat (msec) : 2=20.05%, 4=26.89%, 10=16.67%, 20=1.51%, 50=0.07%
    lat (msec) : 100=0.01%, 250=0.01%, 1000=0.01%, 2000=0.01%
  cpu          : usr=0.39%, sys=0.98%, ctx=23877, majf=0, minf=23
  IO depths    : 1=100.0%, 2=0.0%, 4=0.0%, 8=0.0%, 16=0.0%, 32=0.0%, >=64=0.0%
     submit    : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     complete  : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     issued    : total=r=0/w=23870/d=0, short=r=0/w=0/d=0

Run status group 0 (all jobs):
  WRITE: io=763840KB, aggrb=12730KB/s, minb=12730KB/s, maxb=12730KB/s, mint=60001msec, maxt=60001msec

Disk stats (read/write):
  sda: ios=0/24233, merge=0/378, ticks=0/61392, in_queue=61360, util=98.25%
test-randwrite: (g=0): rw=randwrite, bs=32K-32K/32K-32K, ioengine=sync, iodepth=32
2.0.8
Starting 1 process

test-randwrite: (groupid=0, jobs=1): err= 0: pid=5721
  write: io=777376KB, bw=12955KB/s, iops=404 , runt= 60004msec
    clat (usec): min=106 , max=1186.2K, avg=2463.09, stdev=8374.69
     lat (usec): min=107 , max=1186.3K, avg=2464.96, stdev=8374.70
    clat percentiles (usec):
     |  1.00th=[  114],  5.00th=[  153], 10.00th=[  235], 20.00th=[  314],
     | 30.00th=[  716], 40.00th=[ 1512], 50.00th=[ 1880], 60.00th=[ 2256],
     | 70.00th=[ 2864], 80.00th=[ 3824], 90.00th=[ 5280], 95.00th=[ 6880],
     | 99.00th=[10816], 99.50th=[12480], 99.90th=[19584], 99.95th=[29312],
     | 99.99th=[228352]
    bw (KB/s)  : min= 1849, max=72454, per=100.00%, avg=13149.04, stdev=6383.87
    lat (usec) : 250=11.93%, 500=15.69%, 750=2.76%, 1000=2.76%
    lat (msec) : 2=20.47%, 4=28.02%, 10=16.94%, 20=1.33%, 50=0.06%
    lat (msec) : 100=0.01%, 250=0.01%, 500=0.01%, 2000=0.01%
  cpu          : usr=0.35%, sys=1.09%, ctx=24296, majf=0, minf=23
  IO depths    : 1=100.0%, 2=0.0%, 4=0.0%, 8=0.0%, 16=0.0%, 32=0.0%, >=64=0.0%
     submit    : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     complete  : 0=0.0%, 4=100.0%, 8=0.0%, 16=0.0%, 32=0.0%, 64=0.0%, >=64=0.0%
     issued    : total=r=0/w=24293/d=0, short=r=0/w=0/d=0

Run status group 0 (all jobs):
  WRITE: io=777376KB, aggrb=12955KB/s, minb=12955KB/s, maxb=12955KB/s, mint=60004msec, maxt=60004msec

Disk stats (read/write):
  sda: ios=0/24648, merge=0/379, ticks=0/64452, in_queue=64432, util=98.15%
