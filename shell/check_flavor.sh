#!/bin/bash

nova flavor-list > nova_flavor_list

grep flavor_ nova_flavor_list > new_flavor
cat new_flavor |awk '{print $2","$4","$6","$8","$10","$13","$20}' > format_flavor

sed -i "s/u'//g" format_flavor
sed -i "s/'}//g" format_flavor

#sort -r -t"," -n -k1 format_flavor > new_flavor_add_from_db

echo id,name,mem,disk,ephr,vcpu,ecu > flavor_list
sort -t"," -n -k1 format_flavor >> flavor_list

diff=`diff flavor_list add_flavor_list`
if [ "${diff}s" != "s" ]
then 
    echo nova flavor-create failed!
else
    echo nova flavor-create succeed!
fi

rm -f format_flavor
rm -f new_flavor
