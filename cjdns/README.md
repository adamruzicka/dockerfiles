### Quickstart

First, create a custom docker network.

```shell
cp docker-cjdns /etc/docker-cjdns
cp docker-cjdns.service /etc/systemd/system/docker-cjdns
$EDITOR /etc/docker-cjdns
systemctl daemon-reload
systemctl start docker-cjdns
```