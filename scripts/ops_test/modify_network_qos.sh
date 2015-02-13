#!/bin/bash
set -x
tenant_id=`keystone token-get | grep tenant_id | awk '{print $4}'`
token=`keystone token-get | grep id | grep -v tenant_id | grep -v user_id| awk '{print $4}'`

#curl localhost:8774/v2/$tenant_id/servers/1c7ee524-2c48-4d4a-93e0-58203b02ca30/network-qos/private -X PUT -H "X-Auth-Token:$token" -H "Content-Type: application/json" -d "{private_rate:2}" | python -m json.tool
curl localhost:8774/v2/$tenant_id/servers/1c7ee524-2c48-4d4a-93e0-58203b02ca30/network-qos/public -X PUT -H "X-Auth-Token:$token" -H "Content-Type: application/json" -d '{"rate":2}' -v
