#!/bin/sh
echo "* Exporting environment variables"
export > /etc/envvars
ip=$(ip addr show dev eth0 | grep inet | grep -P '(\d{1,3}\.){3}\d{1,3}' -o | head -n1)o
echo "* Container has IP ${ip}"
echo "* Handing init to runit"
exec /usr/local/bin/runsvdir -P /etc/service
