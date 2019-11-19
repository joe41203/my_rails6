#!/bin/bash

set -ex

project=my_rails6
user=ec2-user

mkdir -p /mnt/app 

sudo chown -R $user:$user /mnt/app

mkdir -p /mnt/app/${project}/tmp/pids /mnt/app/${project}/tmp/sockets /mnt/app/${project}/tmp/puma

cd /mnt/app/${project}

bundle install --path=vendor/bundle --deployment --without test development --with production
