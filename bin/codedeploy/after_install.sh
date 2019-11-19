#!/bin/bash

set -ex

project=my_rails6
user=ec2-user

cd /mnt/app/${project}

bundle install --path=vendor/bundle --deployment --without test development --with production
