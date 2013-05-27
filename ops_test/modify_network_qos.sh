#!/bin/bash
set -x
tenant_id=`keystone token-get | grep tenant_id | awk '{print $4}'`
token=`keystone token-get | grep id | grep -v tenant_id | grep -v user_id| awk '{print $4}'`

#curl 127.0.0.1:8774/v2/$tenant_id/servers/948f7c2d-54af-4979-9ca6-52f7443c8493/network-qos/private -X PUT -H "X-Auth-Token:$token" -H "Content-Type: application/json" -d "{private_rate:200}" | python -m json.tool
curl 127.0.0.1:8774/v2/$tenant_id/servers/948f7c2d-54af-4979-9ca6-52f7443c8493/network-qos/all -X PUT -H "X-Auth-Token:$token" -H "Content-Type: application/json" -d "{private_rate:200,public_rate:200}" -v
