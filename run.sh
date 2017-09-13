#!/bin/bash
echo "$1"
set -x
env

if [ ! -f ./amicontained ]; then
  curl -Lo ./amicontained https://github.com/jessfraz/amicontained/releases/download/v0.0.9/amicontained-linux-amd64
  chmod a+x ./amicontained
fi

./amicontained

ip=$(hostname -I)
curl canhazip.com
ip route get 8.8.8.8
/bin/ip addr
# nmap -p- -sT "$ip"
# nmap -sP -PI "$(echo "$ip" | cut -f 1-3 -d .).0/24"
