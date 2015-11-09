#!/bin/sh
ssh-keygen -A
mkdir /root/.ssh
chmod 700 /root/.ssh
echo "$AUTHORIZED_KEYS" >> /root/.ssh/authorized_keys
ip=$(ip addr show dev eth0 | grep inet | grep -P '\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}' -o | head -n1)

echo "******************************"
echo "Running on ${ip}"
echo "******************************"
exec /usr/sbin/sshd -De
