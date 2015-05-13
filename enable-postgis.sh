#!/usr/bin/env bash
sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt trusty-pgdg main" >> /etc/apt/sources.list'
apt-get update
apt-get install -qq -y wget
wget --quiet -O - http://apt.postgresql.org/pub/repos/apt/ACCC4CF8.asc | apt-key add -

apt-get update
apt-get install -qq -y postgresql-9.4-postgis-2.1
