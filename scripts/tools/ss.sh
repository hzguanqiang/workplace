#! /bin/bash

#sudo pip install shadowsocks gevent       sudo aptitude install tsocks

#ssh -p9999 onlybird@ssh2012.unssh.com -N -D1080 -v
#proxy setting in browser socks 127.0.0.1  1080 SOCKV5

#sslocal -s 192.184.88.98 -p 443 -k ShadowSocks.NET -m AES-256-CFB -b 10.162.81.210 -l 1080 -t 300 --fast-open
sslocal -s 116.251.216.51  -p 2085 -k v2eX -m  AES-256-CFB -b 10.162.81.210 -l 1080 -t 300 --fast-open
#sslocal -s 69.163.37.148 -p 443 -k WOcaoNIMAdeGFW -m AES-256-CFB -b 10.162.81.210 -l 1080 -t 300 --fast-open
#sslocal -s 107.183.14.113 -p 443 -k games -m AES-256-CFB -b 10.162.81.210 -l 1080 -t 300 --fast-open
#sslocal -s 5.231.65.34  -p 888 -k daigenetwork -m AES-256-CFB -b 10.162.81.210 -l 1080 -t 300 --fast-open
#sslocal -s 128.199.206.196  -p 1050 -k martin123 -m AES-256-CFB -b 10.162.81.210 -l 1080 -t 300 --fast-open #slow
