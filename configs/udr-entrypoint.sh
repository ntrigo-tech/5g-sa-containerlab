#!/bin/sh
# Mongo puede tardar bastante en inicializar la primera vez (WiredTiger, etc.)
# Esperamos un margen generoso ANTES de arrancar el daemon, para no depender
# del reintento interno de containerlab (que da por perdido el nodo despues
# de solo 2 intentos rapidos).
sleep 20

i=0
while [ $i -lt 30 ]; do
  open5gs-udrd
  status=$?
  if [ $status -eq 0 ]; then
    exit 0
  fi
  i=$((i + 1))
  sleep 3
done
exit 1
