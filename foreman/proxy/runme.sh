#!/bin/sh
bundle install

ip=$(ip addr show dev eth0 | grep inet | grep -P '\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}' -o | head -n1)

echo "******************************"
echo "Running on ${ip}"
echo "******************************"

exec bundle exec bin/smart-proxy
