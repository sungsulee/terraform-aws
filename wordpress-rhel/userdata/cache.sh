#!/bin/bash
set -euxo pipefail

# Log user-data output for troubleshooting
exec > >(tee /var/log/user-data-cache.log | logger -t user-data-cache -s 2>/dev/console) 2>&1

<<<<<<< HEAD
# Disable firewalld
systemctl stop firewalld
systemctl disable firewalld

=======
# Stop Firewall
systemctl disable firewalld
systemctl stop firewalld
>>>>>>> refs/remotes/origin/main

dnf update -y
dnf install -y redis

sed -i 's/^bind .*/bind 0.0.0.0/' /etc/redis/redis.conf
sed -i 's/^protected-mode .*/protected-mode yes/' /etc/redis/redis.conf
sed -i 's/^# maxmemory <bytes>/maxmemory 128mb/' /etc/redis/redis.conf
sed -i 's/^# maxmemory-policy noeviction/maxmemory-policy allkeys-lru/' /etc/redis/redis.conf

systemctl enable redis
systemctl restart redis

