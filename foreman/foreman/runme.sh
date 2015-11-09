#!/bin/sh
bundle install --without ec2 mysql2 ovirt sqlite vmware

mkdir -p /tmp/foreman

if [ ! -f ~/.migrated ]; then
  bundle exec rake db:create
  bundle exec rake db:migrate
  bundle exec rake db:seed
  touch ~/.migrated
fi

ip=$(ip addr show dev eth0 | grep inet | grep -P '\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}' -o | head -n1)

echo "******************************"
echo "Running on ${ip}"
echo "******************************"

exec bundle exec rails server
