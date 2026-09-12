#!/bin/sh
if ! command -v ip >/dev/null 2>&1; then
  export DEBIAN_FRONTEND=noninteractive
  apt-get update >/dev/null 2>&1
  apt-get install -y iproute2 >/dev/null 2>&1
fi

while [ ! -e /sys/class/net/eth2 ]; do
  sleep 1
done

ip addr add 10.0.60.2/24 dev eth2 2>/dev/null
ip link set eth2 up

exec /ueransim/build/nr-ue -c /ueransim/config/ue.yaml
