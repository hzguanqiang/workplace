#!/bin/bash

tenant_id=`keystone token-get | grep tenant_id | awk '{print $4}'`
token=`keystone token-get | grep id | grep -v tenant_id | grep -v user_id| awk '{print $4}'`
echo http get localhost:9800/$tenant_id/statistics/host x-auth-token:$token
http get 10.120.120.11:9800/$tenant_id/statistics/host x-auth-token:$token
