#!/bin/bash

tenant_id=`keystone token-get | grep tenant_id | awk '{print $4}'`
token=`keystone token-get | grep id | grep -v tenant_id | grep -v user_id| awk '{print $4}'`

curl  114.113.199.8:8774/v2/$tenant_id/servers/detail  -X GET -H "X-Auth-Token:$token"
