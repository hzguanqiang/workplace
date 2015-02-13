#!/bin/bash

tenant_id=`keystone token-get | grep tenant_id | awk '{print $4}'`
token=`keystone token-get | grep id | grep -v tenant_id | grep -v user_id| awk '{print $4}'`
echo http get localhost:8774/v2/$tenant_id/os-quotas-usage x-auth-token:$token
http get localhost:8774/v2/$tenant_id/os-quotas-usage x-auth-token:$token
