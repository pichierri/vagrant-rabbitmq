#!/usr/bin/env bash

cat >> /etc/apt/apt.conf <<EOT
Acquire
{
  http::User-Agent "Mozilla/5.0 (Windows NT 5.1; rv:25.0) Gecko/20100101 Firefox/25.0";
};
EOT

sudo apt-get update

cat >> /etc/apt/sources.list <<EOT
deb http://www.rabbitmq.com/debian/ testing main
EOT

wget http://www.rabbitmq.com/rabbitmq-signing-key-public.asc
apt-key add rabbitmq-signing-key-public.asc

apt-get install -q -y rabbitmq-server

service rabbitmq-server stop
rabbitmq-plugins enable rabbitmq_management
service rabbitmq-server start

rabbitmqctl add_user vagrant vagrant
rabbitmqctl set_user_tags vagrant administrator
rabbitmqctl set_permissions -p / vagrant ".*" ".*" ".*"
