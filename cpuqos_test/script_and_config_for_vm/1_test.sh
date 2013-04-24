#!/bin/bash
cfg=$1

source shrc

echo runspec --rate=${cfg} --iterations=1 --config=${cfg}.cfg 401 403 429 464 473 483 482
runspec --rate=${cfg} --iterations=1 --config=${cfg}.cfg 401 403 429 464 473 483 482
