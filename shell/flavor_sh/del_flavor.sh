#!/bin/bash
flavor_id=`nova flavor-list | grep ecus| grep -v flavor_ | awk '{print $2}' | sort | tail -n1`
flavor_id=`expr $flavor_id + 1`
max_flavor_id=`expr $flavor_id + 722`
while [ "$flavor_id" -lt "$max_flavor_id" ]
do
    echo nova flavor-delete $flavor_id
    nova flavor-delete $flavor_id
    flavor_id=`expr $flavor_id + 1`
done
