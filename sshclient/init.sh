#!/bin/sh
echo "===== vvv CLIENT IP vvv ====="
ip addr show dev eth0 | grep inet
echo "===== ^^^ CLIENT IP ^^^ ====="
ssh-keygen -A
exec /usr/sbin/sshd -D -e
