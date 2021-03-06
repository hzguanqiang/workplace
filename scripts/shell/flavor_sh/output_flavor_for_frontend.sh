#!/bin/bash

# author: hzguanqiang
# date  : 2013-05-16
# Outputting all flavors from nova DB by nova-manage in an specified format to
# file 'all_flavor_for_frontend.csv'

echo name,id,memory_mb,vcpus,swap,vcpu_weight,flavorid,rxtx_factor,root_gb,ephemeral_gb,disable,is_public,ecus_per_cpu > temp.csv
sudo nova-manage flavor list | sed "s/:\|,\|MB\|GB\|Gb\|u'\|'}//g" |awk '{print $1",,"$3","$5","$13",null,"$11","$16","$7","$9",0,"$17","$20}' >> temp.csv

sort -t"," -n -k7 temp.csv > all_flavor_for_frontend.csv

rm -f temp.csv
