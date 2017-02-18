#!/bin/sh
echo "Setting up iptables"
ip6tables -t nat -I POSTROUTING -o tun0 -j MASQUERADE
echo "Starting cjdns"
cjdroute --nobg < /etc/cjdroute.conf
