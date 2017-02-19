#!/bin/sh
for hook in /hooks/*; do
	if [ -e "$hook" ]; then
		echo "* Executing hook $hook"
		$hook
	fi
done
echo "Starting cjdns"
cjdroute --nobg < /etc/cjdroute.conf
