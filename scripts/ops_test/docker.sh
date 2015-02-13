#!/bin/bash

tenant_id=`keystone token-get | grep tenant_id | awk '{print $4}'`
token=`keystone token-get | grep id | grep -v tenant_id | grep -v user_id| awk '{print $4}'`
#echo http get localhost:4243/containers/ps
#http get localhost:4243/containers/ps
#curl -i localhost:8774/v2/$tenant_id/os-quotas-usage/hosts -X GET -H "X-Auth-Token:$token"

#echo curl localhost:4243/containers/ps -X GET
#curl localhost:4243/containers/ps -X GET

curl localhost:4243/images/search?term=* -X GET
