#!/bin/sh

# time stamp for logging
date

while true; do
  if ping -q -c 1 -W 1 8.8.8.8 >/dev/null; then
    echo "IPv4 is up"
    apt-get update
    apt-get upgrade -y
    apt-get dist-upgrade -y
    apt-get autoremove
    apt-get autoclean
    break
  else
    echo "IPv4 is down"
    sleep 10
  fi
done
