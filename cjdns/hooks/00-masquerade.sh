#!/bin/sh
ip6tables -t nat -A POSTROUTING -o tun0 -j MASQUERADE
