#!/bin/sh
while [ ! -e /sys/class/net/eth1 ]; do
  sleep 1
done
ip addr add 10.0.51.10/24 dev eth1 2>/dev/null
ip link set eth1 up
exec open5gs-amfd
