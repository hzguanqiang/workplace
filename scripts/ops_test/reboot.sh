#!/bin/bash
set -x
tenant_id=`keystone token-get | grep tenant_id | awk '{print $4}'`
token=`keystone token-get | grep id | grep -v tenant_id | grep -v user_id| awk '{print $4}'`

curl localhost:9800/$tenant_id/servers/a35bc276-71a3-4eec-8a64-c119d1a99fed/action -X POST -H "X-Auth-Token:$token" -H "Content-Type: application/json" -d '{"reboot":{"type": "HARD"}}' -v
