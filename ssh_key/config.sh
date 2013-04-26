#!/bin/bash
cp ssh_config ~/.ssh/config

cp -rf new_id_rsa ~/.ssh/id_rsa
cp -rf new_id_rsa.pub ~/.ssh/id_rsa.pub
chmod 600 ~/.ssh/id_rsa*
