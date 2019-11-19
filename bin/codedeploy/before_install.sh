#!/bin/bash

project=my_rails6
user=ec2-user

sudo mkdir -p /mnt/app 

sudo chown -R $user:$user /mnt/app

mkdir -p /mnt/app/${project}/tmp/pids /mnt/app/${project}/tmp/sockets /mnt/app/${project}/tmp/puma
