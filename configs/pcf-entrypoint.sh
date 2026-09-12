#!/bin/sh
sleep 20

i=0
while [ $i -lt 30 ]; do
  open5gs-pcfd
  status=$?
  if [ $status -eq 0 ]; then
    exit 0
  fi
  i=$((i + 1))
  sleep 3
done
exit 1
